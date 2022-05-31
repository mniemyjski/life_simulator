// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../../app/game/game_screen.dart' as _i3;
import '../../app/home/home_screen.dart' as _i1;
import '../../app/income/income_screen.dart' as _i7;
import '../../app/job/job_screen.dart' as _i4;
import '../../app/learning/learning_screen.dart' as _i6;
import '../../app/personality/house_screen.dart' as _i9;
import '../../app/personality/models/house/house_model.dart' as _i13;
import '../../app/personality/personality_screen.dart' as _i8;
import '../../app/personality/transport_screen.dart' as _i10;
import '../../app/settings/screens/settings_screen.dart' as _i2;
import '../../app/time_spend/time_spend_screen.dart' as _i5;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    SettingsRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SettingsScreen());
    },
    GameRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.GameScreen());
    },
    JobRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.JobScreen());
    },
    TimeSpendRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.TimeSpendScreen());
    },
    LearningRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.LearningScreen());
    },
    IncomeRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.IncomeScreen());
    },
    PersonalityRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.PersonalityScreen());
    },
    HouseRoute.name: (routeData) {
      final args = routeData.argsAs<HouseRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.HouseScreen(key: args.key, eTypeHouse: args.eTypeHouse));
    },
    CarRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.CarScreen());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(HomeRoute.name, path: '/'),
        _i11.RouteConfig(SettingsRoute.name, path: '/settings-screen'),
        _i11.RouteConfig(GameRoute.name, path: '/game-screen'),
        _i11.RouteConfig(JobRoute.name, path: '/job-screen'),
        _i11.RouteConfig(TimeSpendRoute.name, path: '/time-spend-screen'),
        _i11.RouteConfig(LearningRoute.name, path: '/learning-screen'),
        _i11.RouteConfig(IncomeRoute.name, path: '/income-screen'),
        _i11.RouteConfig(PersonalityRoute.name, path: '/personality-screen'),
        _i11.RouteConfig(HouseRoute.name, path: '/house-screen'),
        _i11.RouteConfig(CarRoute.name, path: '/car-screen')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.SettingsScreen]
class SettingsRoute extends _i11.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-screen');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i3.GameScreen]
class GameRoute extends _i11.PageRouteInfo<void> {
  const GameRoute() : super(GameRoute.name, path: '/game-screen');

  static const String name = 'GameRoute';
}

/// generated route for
/// [_i4.JobScreen]
class JobRoute extends _i11.PageRouteInfo<void> {
  const JobRoute() : super(JobRoute.name, path: '/job-screen');

  static const String name = 'JobRoute';
}

/// generated route for
/// [_i5.TimeSpendScreen]
class TimeSpendRoute extends _i11.PageRouteInfo<void> {
  const TimeSpendRoute()
      : super(TimeSpendRoute.name, path: '/time-spend-screen');

  static const String name = 'TimeSpendRoute';
}

/// generated route for
/// [_i6.LearningScreen]
class LearningRoute extends _i11.PageRouteInfo<void> {
  const LearningRoute() : super(LearningRoute.name, path: '/learning-screen');

  static const String name = 'LearningRoute';
}

/// generated route for
/// [_i7.IncomeScreen]
class IncomeRoute extends _i11.PageRouteInfo<void> {
  const IncomeRoute() : super(IncomeRoute.name, path: '/income-screen');

  static const String name = 'IncomeRoute';
}

/// generated route for
/// [_i8.PersonalityScreen]
class PersonalityRoute extends _i11.PageRouteInfo<void> {
  const PersonalityRoute()
      : super(PersonalityRoute.name, path: '/personality-screen');

  static const String name = 'PersonalityRoute';
}

/// generated route for
/// [_i9.HouseScreen]
class HouseRoute extends _i11.PageRouteInfo<HouseRouteArgs> {
  HouseRoute({_i12.Key? key, required _i13.ETypeHouse eTypeHouse})
      : super(HouseRoute.name,
            path: '/house-screen',
            args: HouseRouteArgs(key: key, eTypeHouse: eTypeHouse));

  static const String name = 'HouseRoute';
}

class HouseRouteArgs {
  const HouseRouteArgs({this.key, required this.eTypeHouse});

  final _i12.Key? key;

  final _i13.ETypeHouse eTypeHouse;

  @override
  String toString() {
    return 'HouseRouteArgs{key: $key, eTypeHouse: $eTypeHouse}';
  }
}

/// generated route for
/// [_i10.CarScreen]
class CarRoute extends _i11.PageRouteInfo<void> {
  const CarRoute() : super(CarRoute.name, path: '/car-screen');

  static const String name = 'CarRoute';
}