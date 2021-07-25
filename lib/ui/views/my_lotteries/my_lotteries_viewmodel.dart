import 'package:hamel/app/app.locator.dart';
import 'package:hamel/app/app.logger.dart';
import 'package:hamel/app/app.router.dart';
import 'package:hamel/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MyLotteriesViewModel extends BaseViewModel {
  final log = getLogger('MyLotteriesViewModel');
  final _userService = locator<UserService>();
  final _navigationService = locator<NavigationService>();

 
}
