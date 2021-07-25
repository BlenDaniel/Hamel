import 'package:hamel/app/app.locator.dart';
import 'package:hamel/app/app.logger.dart';
import 'package:hamel/app/app.router.dart';
import 'package:hamel/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartUpViewModel extends BaseViewModel {
  final log = getLogger('StartUpViewModel');
  final _userService = locator<UserService>();
  final _navigationService = locator<NavigationService>();

  Future<void> runStartupLogic() async {
    if (_userService.hasLoggedInUser) {
      log.v('We have a user session on disk. Sync the user profile ...');
      await _userService.syncUserAccount();

      final currentUser = _userService.currentUser;
      log.v('User sync complete. User profile: $currentUser');

      if (currentUser.hasEmail && currentUser.hasFullName) {
        log.v('We have an email address. Let\'s show them products!');
        _navigationService.replaceWith(Routes.groundView);
        // navigate to home view
      } else {
        _navigationService.replaceWith(Routes.createProfileView);
      }
    } else {
      log.v('No user on disk, navigate to the LoginView');
      _navigationService.replaceWith(Routes.loginView);
    }
  }
}
