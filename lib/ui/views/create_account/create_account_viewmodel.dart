import 'package:hamel/app/app.locator.dart';
import 'package:hamel/services/firebase_authentication_service.dart';
import 'package:hamel/ui/views/base/authentication_viewmodel.dart';

import 'create_account_view.form.dart';

class CreateAccountViewModel extends AuthenticationViewModel {
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  @override
  Future<FirebaseAuthenticationResult> runAuthentication() =>
      _firebaseAuthenticationService.createAccountWithEmail(
        email: emailValue!,
        password: passwordValue!,
      );

  void navigateBack() => navigationService.back();
}
