import 'package:hamel/app/app.router.dart';
import 'package:hamel/services/firebase_authentication_service.dart';
import 'package:hamel/services/firebase_events_service.dart';
import 'package:hamel/services/firebase_user_service.dart';
import 'package:hamel/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:hamel/app/app.locator.dart';
import 'package:hamel/models/application_models.dart';
import 'package:hamel/services/home_service.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends FutureViewModel<List<Lottery>?> {
  final _homeService = locator<HomeService>();
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();
  final _userservice = locator<UserService>();

  final _firebaseUserService = locator<FirebaseUserService>();
  final _firebaseEventService = locator<FirebaseEventService>();
  final navigationService = locator<NavigationService>();

  @override
  Future<List<Lottery>?> futureToRun() {
    print('Fetch home');
    return _homeService.getPostsForUser(3);
  }

  Stream<User> getCurrentUserRealTime() {
    return _firebaseUserService.getUserRealTime();
  }

  Stream<List<Events>> getUpcomingEvents() {
    return _firebaseEventService.getEvents();
  }

  void logOut() async {
    await _firebaseAuthenticationService.logout();
    await _userservice.logOut();
    navigationService.replaceWith(Routes.loginView);
  }

  goToLotteryPage() async {
    navigationService.replaceWith(
      Routes.groundView,
      arguments: GroundViewArguments(initialIndex: 1),
    );
  }

  String getName() {
    if (_userservice.currentUser.hasFullName) {
      return _userservice.currentUser.fullName!;
    } else {
      return "Loading ...";
    }
  }
}
