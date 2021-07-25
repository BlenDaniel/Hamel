import 'package:hamel/app/app.locator.dart';
import 'package:hamel/app/app.router.dart';
import 'package:hamel/models/application_models.dart';
import 'package:hamel/services/firebase_events_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LotteryViewModel extends BaseViewModel {
  final _firebaseEventService = locator<FirebaseEventService>();
  final _navigationService = locator<NavigationService>();
  Stream<List<Events>> getUpcomingEvents() {
    return _firebaseEventService.getEvents();
  }

  void goToBuy(Events event) async {
    _navigationService.navigateTo(
      Routes.verifyView,
      arguments: VerifyViewArguments(
        upcomingEvents: event,
      ),
    );
  }
}
