import 'package:hamel/app/app.locator.dart';
import 'package:hamel/app/app.logger.dart';
import 'package:hamel/services/user_service.dart';

class FirebaseETAdService {
  final log = getLogger('FirebaseETAdService');

  final _userService = locator<UserService>();
}
