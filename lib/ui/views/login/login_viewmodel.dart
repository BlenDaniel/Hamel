import 'package:hamel/app/app.locator.dart';
import 'package:hamel/app/app.router.dart';
import 'package:hamel/services/firebase_authentication_service.dart';
import 'package:hamel/ui/views/base/authentication_viewmodel.dart';

import 'login_view.form.dart';

class LoginViewModel extends AuthenticationViewModel {
  final FirebaseAuthenticationService? _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() =>
      _firebaseAuthenticationService!.loginWithEmail(
        email: emailValue!,
        password: passwordValue!,
      );

  void navigateToCreateAccount() =>
      navigationService.navigateTo(Routes.createAccountView);
}
