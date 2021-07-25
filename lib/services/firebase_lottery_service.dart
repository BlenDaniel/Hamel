import 'package:hamel/app/app.locator.dart';
import 'package:hamel/app/app.logger.dart';
import 'package:hamel/services/user_service.dart';

class FirebaseLotteryService {
  final log = getLogger('FirebaseLotteryService');

  final _userService = locator<UserService>();
}
