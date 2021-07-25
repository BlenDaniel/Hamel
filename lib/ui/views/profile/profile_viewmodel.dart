import 'package:hamel/app/app.locator.dart';
import 'package:hamel/services/user_service.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  final _userservice = locator<UserService>();
  
  String getName() {
    if (_userservice.currentUser.hasFullName) {
      return _userservice.currentUser.fullName!;
    } else {
      return "Loading ...";
    }
  }
}
