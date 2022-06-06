// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../../app/bank/bank_screen.dart' as _i11;
import '../../app/game/game_screen.dart' as _i3;
import '../../app/home/home_screen.dart' as _i1;
import '../../app/income/income_screen.dart' as _i7;
import '../../app/job/job_screen.dart' as _i4;
import '../../app/learning/learning_screen.dart' as _i6;
import '../../app/personality/house_screen.dart' as _i9;
import '../../app/personality/models/house/house_model.dart' as _i14;
import '../../app/personality/personality_screen.dart' as _i8;
import '../../app/personality/transport_screen.dart' as _i10;
import '../../app/settings/screens/settings_screen.dart' as _i2;
import '../../app/time_spend/time_spend_screen.dart' as _i5;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    SettingsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SettingsScreen());
    },
    GameRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.GameScreen());
    },
    JobRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.JobScreen());
    },
    TimeSpendRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.TimeSpendScreen());
    },
    LearningRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.LearningScreen());
    },
    IncomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.IncomeScreen());
    },
    PersonalityRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.PersonalityScreen());
    },
    HouseRoute.name: (routeData) {
      final args = routeData.argsAs<HouseRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.HouseScreen(key: args.key, eTypeHouse: args.eTypeHouse));
    },
    CarRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.CarScreen());
    },
    BankRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.BankScreen());
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(HomeRoute.name, path: '/'),
        _i12.RouteConfig(SettingsRoute.name, path: '/settings-screen'),
        _i12.RouteConfig(GameRoute.name, path: '/game-screen'),
        _i12.RouteConfig(JobRoute.name, path: '/job-screen'),
        _i12.RouteConfig(TimeSpendRoute.name, path: '/time-spend-screen'),
        _i12.RouteConfig(LearningRoute.name, path: '/learning-screen'),
        _i12.RouteConfig(IncomeRoute.name, path: '/income-screen'),
        _i12.RouteConfig(PersonalityRoute.name, path: '/personality-screen'),
        _i12.RouteConfig(HouseRoute.name, path: '/house-screen'),
        _i12.RouteConfig(CarRoute.name, path: '/car-screen'),
        _i12.RouteConfig(BankRoute.name, path: '/bank-screen')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.SettingsScreen]
class SettingsRoute extends _i12.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-screen');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i3.GameScreen]
class GameRoute extends _i12.PageRouteInfo<void> {
  const GameRoute() : super(GameRoute.name, path: '/game-screen');

  static const String name = 'GameRoute';
}

/// generated route for
/// [_i4.JobScreen]
class JobRoute extends _i12.PageRouteInfo<void> {
  const JobRoute() : super(JobRoute.name, path: '/job-screen');

  static const String name = 'JobRoute';
}

/// generated route for
/// [_i5.TimeSpendScreen]
class TimeSpendRoute extends _i12.PageRouteInfo<void> {
  const TimeSpendRoute()
      : super(TimeSpendRoute.name, path: '/time-spend-screen');

  static const String name = 'TimeSpendRoute';
}

/// generated route for
/// [_i6.LearningScreen]
class LearningRoute extends _i12.PageRouteInfo<void> {
  const LearningRoute() : super(LearningRoute.name, path: '/learning-screen');

  static const String name = 'LearningRoute';
}

/// generated route for
/// [_i7.IncomeScreen]
class IncomeRoute extends _i12.PageRouteInfo<void> {
  const IncomeRoute() : super(IncomeRoute.name, path: '/income-screen');

  static const String name = 'IncomeRoute';
}

/// generated route for
/// [_i8.PersonalityScreen]
class PersonalityRoute extends _i12.PageRouteInfo<void> {
  const PersonalityRoute()
      : super(PersonalityRoute.name, path: '/personality-screen');

  static const String name = 'PersonalityRoute';
}

/// generated route for
/// [_i9.HouseScreen]
class HouseRoute extends _i12.PageRouteInfo<HouseRouteArgs> {
  HouseRoute({_i13.Key? key, required _i14.ETypeHouse eTypeHouse})
      : super(HouseRoute.name,
            path: '/house-screen',
            args: HouseRouteArgs(key: key, eTypeHouse: eTypeHouse));

  static const String name = 'HouseRoute';
}

class HouseRouteArgs {
  const HouseRouteArgs({this.key, required this.eTypeHouse});

  final _i13.Key? key;

  final _i14.ETypeHouse eTypeHouse;

  @override
  String toString() {
    return 'HouseRouteArgs{key: $key, eTypeHouse: $eTypeHouse}';
  }
}

/// generated route for
/// [_i10.CarScreen]
class CarRoute extends _i12.PageRouteInfo<void> {
  const CarRoute() : super(CarRoute.name, path: '/car-screen');

  static const String name = 'CarRoute';
}

/// generated route for
/// [_i11.BankScreen]
class BankRoute extends _i12.PageRouteInfo<void> {
  const BankRoute() : super(BankRoute.name, path: '/bank-screen');

  static const String name = 'BankRoute';
}
