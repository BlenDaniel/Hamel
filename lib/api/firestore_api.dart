import 'package:hamel/app/app.logger.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hamel/constants/app_keys.dart';
import 'package:hamel/enums/enums.dart';
import 'package:hamel/exceptions/firestore_api_exception.dart';
import 'package:hamel/models/application_models.dart';

class FirestoreApi {
  final log = getLogger('FirestoreApi');

  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection(UsersFirestoreKey);

  Future<void> createUser({required User user}) async {
    log.i('user:$user');

    try {
      final userDocument = usersCollection.doc(user.id);
      await userDocument.set({
        'id': user.id,
        'email': user.email,
        'accountNumber': user.accountNumber,
        'fullName': user.fullName,
        'lotteryNumber': user.lotteryNumber,
        'phoneNumber': user.phoneNumber,
        'userStatus': UserStatus.GettingStarted.index
      });
      log.v('UserCreated at ${userDocument.path}');
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new user',
        devDetails: '$error',
      );
    }
  }

  Future<User?> getUser({required String userId}) async {
    log.i('userId:$userId');

    if (userId.isNotEmpty) {
      final userDoc = await usersCollection.doc(userId).get();

      if (!userDoc.exists) {
        log.v('We have no user with id $userId in our database');
        return null;
      } else {
        final userData = userDoc.data() as Map<String, dynamic>;
        log.v('User found. Data: $userData');

        return User.fromJson(userDoc);
      }
    } else {
      throw FirestoreApiException(
          message:
              'Your userId passed in is empty. Please pass in a valid user if from your Firebase user.');
    }
  }

  getPostsForUser(int userId) {}
}
