import 'package:hamel/api/firestore_api.dart';
import 'package:hamel/services/firebase_authentication_service.dart';
import 'package:hamel/services/firebase_etad_service.dart';
import 'package:hamel/services/firebase_events_service.dart';
import 'package:hamel/services/firebase_lottery_service.dart';
import 'package:hamel/services/firebase_user_service.dart';
import 'package:hamel/services/home_service.dart';
import 'package:hamel/services/user_service.dart';
import 'package:hamel/ui/views/create_account/create_account_view.dart';
import 'package:hamel/ui/views/create_profile/create_profile_view.dart';
import 'package:hamel/ui/views/ground/ground_view.dart';
import 'package:hamel/ui/views/home/home_view.dart';
import 'package:hamel/ui/views/home/home_viewmodel.dart';
import 'package:hamel/ui/views/login/login_view.dart';
import 'package:hamel/ui/views/lottery/lottery_view.dart';
import 'package:hamel/ui/views/profile/profile_view.dart';
import 'package:hamel/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:hamel/ui/views/verify/verify_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartUpView, initial: true),
    CupertinoRoute(page: CreateAccountView),
    CupertinoRoute(page: LoginView),
    CupertinoRoute(page: HomeView),
    CupertinoRoute(page: GroundView),
    CupertinoRoute(page: LotteryView),
    CupertinoRoute(page: VerifyView),
    CupertinoRoute(page: ProfileView),
    CupertinoRoute(page: CreateProfileView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: UserService),
    LazySingleton(classType: FirestoreApi),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: HomeService),
    LazySingleton(classType: FirebaseUserService),
    LazySingleton(classType: FirebaseEventService),
    LazySingleton(classType: FirebaseLotteryService),
    LazySingleton(classType: FirebaseETAdService),
    Singleton(classType: FirebaseAuthenticationService),
    Singleton(classType: HomeViewModel)
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
