import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:hamel/api/firestore_api.dart';
import 'package:hamel/app/app.locator.dart';
import 'package:hamel/app/app.logger.dart';
import 'package:hamel/constants/app_keys.dart';
import 'package:hamel/models/application_models.dart' as HUser;
import 'package:hamel/services/firebase_authentication_service.dart';
import 'package:hamel/services/user_service.dart';

class FirebaseUserService {
  final log = getLogger('FirebaseUserService');

  final _userService = locator<UserService>();
  final _firestoreApi = locator<FirestoreApi>();

  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection(UsersFirestoreKey);

  Stream<HUser.User> getUserRealTime() {
    final StreamController<HUser.User> thisUserController =
        StreamController<HUser.User>.broadcast();

    usersCollection
        .doc(_userService.currentUser.id)
        .snapshots()
        .listen((userSnapshot) {
      if (userSnapshot.exists) {
        var user = HUser.User.fromJson(userSnapshot);
        thisUserController.add(user);
      }
    });
    return thisUserController.stream;
  }

  Future<FirebaseAuthenticationResult> updateUser(
      {String? fullName, String? email, String? phoneNumber}) async {
    try {
      await usersCollection.doc(_userService.currentUser.id).update({
        'email': email,
        'fullName': fullName,
        'phoneNumber': phoneNumber,
      });
      log.d('Updated Current User');

      return FirebaseAuthenticationResult.error(errorMessage: "Update");
    } on FirebaseAuthException catch (e) {
      log.e('A firebase exception has occured. $e');
      return FirebaseAuthenticationResult.error(
          errorMessage: getErrorMessageFromFirebaseException(e));
    } on Exception catch (e) {
      log.e('A general exception has occured. $e');
      return FirebaseAuthenticationResult.error(
          errorMessage:
              'We could not create your account at this time. Please try again.');
    }
  }
}
