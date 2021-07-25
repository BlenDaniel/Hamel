// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../models/application_models.dart';
import '../ui/views/create_account/create_account_view.dart';
import '../ui/views/create_profile/create_profile_view.dart';
import '../ui/views/ground/ground_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/login/login_view.dart';
import '../ui/views/lottery/lottery_view.dart';
import '../ui/views/profile/profile_view.dart';
import '../ui/views/startup/startup_view.dart';
import '../ui/views/verify/verify_view.dart';

class Routes {
  static const String startUpView = '/';
  static const String createAccountView = '/create-account-view';
  static const String loginView = '/login-view';
  static const String homeView = '/home-view';
  static const String groundView = '/ground-view';
  static const String lotteryView = '/lottery-view';
  static const String verifyView = '/verify-view';
  static const String profileView = '/profile-view';
  static const String createProfileView = '/create-profile-view';
  static const all = <String>{
    startUpView,
    createAccountView,
    loginView,
    homeView,
    groundView,
    lotteryView,
    verifyView,
    profileView,
    createProfileView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startUpView, page: StartUpView),
    RouteDef(Routes.createAccountView, page: CreateAccountView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.groundView, page: GroundView),
    RouteDef(Routes.lotteryView, page: LotteryView),
    RouteDef(Routes.verifyView, page: VerifyView),
    RouteDef(Routes.profileView, page: ProfileView),
    RouteDef(Routes.createProfileView, page: CreateProfileView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartUpView(),
        settings: data,
      );
    },
    CreateAccountView: (data) {
      var args = data.getArgs<CreateAccountViewArguments>(
        orElse: () => CreateAccountViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CreateAccountView(key: args.key),
        settings: data,
      );
    },
    LoginView: (data) {
      var args = data.getArgs<LoginViewArguments>(
        orElse: () => LoginViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => LoginView(key: args.key),
        settings: data,
      );
    },
    HomeView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    GroundView: (data) {
      var args = data.getArgs<GroundViewArguments>(
        orElse: () => GroundViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => GroundView(
          key: args.key,
          initialIndex: args.initialIndex,
        ),
        settings: data,
      );
    },
    LotteryView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const LotteryView(),
        settings: data,
      );
    },
    VerifyView: (data) {
      var args = data.getArgs<VerifyViewArguments>(
        orElse: () => VerifyViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => VerifyView(
          key: args.key,
          upcomingEvents: args.upcomingEvents,
        ),
        settings: data,
      );
    },
    ProfileView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const ProfileView(),
        settings: data,
      );
    },
    CreateProfileView: (data) {
      var args = data.getArgs<CreateProfileViewArguments>(
        orElse: () => CreateProfileViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CreateProfileView(key: args.key),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// CreateAccountView arguments holder class
class CreateAccountViewArguments {
  final Key? key;
  CreateAccountViewArguments({this.key});
}

/// LoginView arguments holder class
class LoginViewArguments {
  final Key? key;
  LoginViewArguments({this.key});
}

/// GroundView arguments holder class
class GroundViewArguments {
  final Key? key;
  final int? initialIndex;
  GroundViewArguments({this.key, this.initialIndex});
}

/// VerifyView arguments holder class
class VerifyViewArguments {
  final Key? key;
  final Events? upcomingEvents;
  VerifyViewArguments({this.key, this.upcomingEvents});
}

/// CreateProfileView arguments holder class
class CreateProfileViewArguments {
  final Key? key;
  CreateProfileViewArguments({this.key});
}
