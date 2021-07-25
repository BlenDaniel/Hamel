// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../api/firestore_api.dart';
import '../services/firebase_authentication_service.dart';
import '../services/firebase_etad_service.dart';
import '../services/firebase_events_service.dart';
import '../services/firebase_lottery_service.dart';
import '../services/firebase_user_service.dart';
import '../services/home_service.dart';
import '../services/user_service.dart';
import '../ui/views/home/home_viewmodel.dart';

final locator = StackedLocator.instance;

void setupLocator({String? environment, EnvironmentFilter? environmentFilter}) {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => UserService());
  locator.registerLazySingleton(() => FirestoreApi());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => HomeService());
  locator.registerLazySingleton(() => FirebaseUserService());
  locator.registerLazySingleton(() => FirebaseEventService());
  locator.registerLazySingleton(() => FirebaseLotteryService());
  locator.registerLazySingleton(() => FirebaseETAdService());
  locator.registerSingleton(FirebaseAuthenticationService());
  locator.registerSingleton(HomeViewModel());
}
