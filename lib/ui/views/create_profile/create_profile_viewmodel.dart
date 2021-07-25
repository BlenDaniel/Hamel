import 'package:flutter/cupertino.dart';
import 'package:hamel/app/app.locator.dart';
import 'package:hamel/services/firebase_authentication_service.dart';
import 'package:hamel/services/firebase_user_service.dart';
import 'package:hamel/ui/views/base/authentication_viewmodel.dart';
import 'create_profile_view.form.dart';

class CreateProfileViewModel extends AuthenticationViewModel {
  final _firebaseUserService = locator<FirebaseUserService>();

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() async =>
      await _firebaseUserService.updateUser(
        fullName: fullNameValue!,
        email: emailValue!,
        phoneNumber: phoneNumberValue!,
      );

  void navigateBack() => navigationService.back();

  void getName(TextEditingController fullNameController) {
    if (userService.currentUser.hasFullName) {
      fullNameController.text = userService.currentUser.fullName!;
    } else {
      fullNameController.text = '';
    }
  }

  void getEmail(TextEditingController emailController) {
    if (userService.currentUser.hasEmail) {
      emailController.text = userService.currentUser.email!;
    } else {
      emailController.text = '';
    }
  }
}
