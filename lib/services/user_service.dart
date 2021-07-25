import 'package:hamel/api/firestore_api.dart';
import 'package:hamel/app/app.locator.dart';
import 'package:hamel/app/app.logger.dart';
import 'package:hamel/app/app.router.dart';
import 'package:hamel/enums/enums.dart';
import 'package:hamel/models/application_models.dart';
import 'package:hamel/services/firebase_authentication_service.dart';
import 'package:stacked_services/stacked_services.dart';

class UserService {
  final log = getLogger('UserService');

  final _firestoreApi = locator<FirestoreApi>();
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  final navigationService = locator<NavigationService>();

  User? _currentUser;

  User get currentUser => _currentUser!;

  bool get hasLoggedInUser => _firebaseAuthenticationService.hasUser;

  Future<void> syncUserAccount() async {
    final firebaseUserId =
        _firebaseAuthenticationService.firebaseAuth.currentUser!.uid;

    log.v('Sync user $firebaseUserId');

    final userAccount = await _firestoreApi.getUser(userId: firebaseUserId);

    if (userAccount != null) {
      log.v('User account exists. Save as _currentUser');
      _currentUser = userAccount;
    }
  }

  Future<void> syncOrCreateUserAccount(
      {required String userID, required String? email}) async {
    log.i('user:');

    await syncUserAccount();

    if (_currentUser == null) {
      log.v('We have no user account. Create a new user ...');
      User user = User(
        id: userID,
        email: email,
        accountNumber: DateTime.now().millisecondsSinceEpoch.toString(),
        fullName: '',
        lotteryNumber: "",
        phoneNumber: '',
        userStatus: UserStatus.GettingStarted.index,
      );
      await _firestoreApi.createUser(user: user);
      _currentUser = user;
      log.v('_currentUser has been saved');
      navigationService.replaceWith(Routes.createProfileView);
    } else {
      navigationService.replaceWith(Routes.groundView);
    }
  }

  Future logOut() async {
    _currentUser = null;
  }
}
