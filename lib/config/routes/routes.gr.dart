// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i23;
import 'package:flutter/material.dart' as _i24;

import '../../app/bank/bank_screen.dart' as _i12;
import '../../app/freelance/freelance_jobs_screen.dart' as _i22;
import '../../app/freelance/freelance_screen.dart' as _i21;
import '../../app/game/game_screen.dart' as _i3;
import '../../app/home/home_screen.dart' as _i1;
import '../../app/income/income_screen.dart' as _i7;
import '../../app/job/job_screen.dart' as _i4;
import '../../app/learning/learning_screen.dart' as _i6;
import '../../app/medicines/medicines_screen.dart' as _i13;
import '../../app/personality/food_screen.dart' as _i11;
import '../../app/personality/house_screen.dart' as _i9;
import '../../app/personality/models/house/house_model.dart' as _i25;
import '../../app/personality/personality_screen.dart' as _i8;
import '../../app/personality/transport_screen.dart' as _i10;
import '../../app/real_assets/asset_screen.dart' as _i17;
import '../../app/real_assets/build_assets_screen.dart' as _i15;
import '../../app/real_assets/buy_assets_screen.dart' as _i16;
import '../../app/real_assets/real_assets_screen.dart' as _i14;
import '../../app/real_assets/tenants_screen.dart' as _i18;
import '../../app/settings/screens/settings_screen.dart' as _i2;
import '../../app/stock_market/instrument_screen.dart' as _i20;
import '../../app/stock_market/stock_market_screen.dart' as _i19;
import '../../app/time_spend/time_spend_screen.dart' as _i5;

class AppRouter extends _i23.RootStackRouter {
  AppRouter([_i24.GlobalKey<_i24.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i23.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    SettingsRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SettingsScreen());
    },
    GameRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.GameScreen());
    },
    JobRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.JobScreen());
    },
    TimeSpendRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.TimeSpendScreen());
    },
    LearningRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.LearningScreen());
    },
    IncomeRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.IncomeScreen());
    },
    PersonalityRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.PersonalityScreen());
    },
    HouseRoute.name: (routeData) {
      final args = routeData.argsAs<HouseRouteArgs>();
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: _i9.HouseScreen(key: args.key, eTypeHouse: args.eTypeHouse),
          transitionsBuilder: _i23.TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    TransportRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i10.TransportScreen(),
          transitionsBuilder: _i23.TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    FoodRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i11.FoodScreen(),
          transitionsBuilder: _i23.TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    BankRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.BankScreen());
    },
    MedicinesRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.MedicinesScreen());
    },
    RealAssetsRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.RealAssetsScreen());
    },
    BuildAssetsRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.BuildAssetsScreen());
    },
    BuyAssetsRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.BuyAssetsScreen());
    },
    AssetRoute.name: (routeData) {
      final args = routeData.argsAs<AssetRouteArgs>();
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i17.AssetScreen(key: args.key, id: args.id));
    },
    TenantsRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.TenantsScreen());
    },
    StockMarketRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.StockMarketScreen());
    },
    InstrumentRoute.name: (routeData) {
      final args = routeData.argsAs<InstrumentRouteArgs>();
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i20.InstrumentScreen(key: args.key, id: args.id));
    },
    FreelanceRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.FreelanceScreen());
    },
    FreelanceJobsRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.FreelanceJobsScreen());
    }
  };

  @override
  List<_i23.RouteConfig> get routes => [
        _i23.RouteConfig(HomeRoute.name, path: '/'),
        _i23.RouteConfig(SettingsRoute.name, path: '/settings-screen'),
        _i23.RouteConfig(GameRoute.name, path: '/game-screen'),
        _i23.RouteConfig(JobRoute.name, path: '/job-screen'),
        _i23.RouteConfig(TimeSpendRoute.name, path: '/time-spend-screen'),
        _i23.RouteConfig(LearningRoute.name, path: '/learning-screen'),
        _i23.RouteConfig(IncomeRoute.name, path: '/income-screen'),
        _i23.RouteConfig(PersonalityRoute.name, path: '/personality-screen'),
        _i23.RouteConfig(HouseRoute.name, path: '/house-screen'),
        _i23.RouteConfig(TransportRoute.name, path: '/transport-screen'),
        _i23.RouteConfig(FoodRoute.name, path: '/food-screen'),
        _i23.RouteConfig(BankRoute.name, path: '/bank-screen'),
        _i23.RouteConfig(MedicinesRoute.name, path: '/medicines-screen'),
        _i23.RouteConfig(RealAssetsRoute.name, path: '/real-assets-screen'),
        _i23.RouteConfig(BuildAssetsRoute.name, path: '/build-assets-screen'),
        _i23.RouteConfig(BuyAssetsRoute.name, path: '/buy-assets-screen'),
        _i23.RouteConfig(AssetRoute.name, path: '/asset-screen'),
        _i23.RouteConfig(TenantsRoute.name, path: '/tenants-screen'),
        _i23.RouteConfig(StockMarketRoute.name, path: '/stock-market-screen'),
        _i23.RouteConfig(InstrumentRoute.name, path: '/instrument-screen'),
        _i23.RouteConfig(FreelanceRoute.name, path: '/freelance-screen'),
        _i23.RouteConfig(FreelanceJobsRoute.name,
            path: '/freelance-jobs-screen')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i23.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.SettingsScreen]
class SettingsRoute extends _i23.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-screen');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i3.GameScreen]
class GameRoute extends _i23.PageRouteInfo<void> {
  const GameRoute() : super(GameRoute.name, path: '/game-screen');

  static const String name = 'GameRoute';
}

/// generated route for
/// [_i4.JobScreen]
class JobRoute extends _i23.PageRouteInfo<void> {
  const JobRoute() : super(JobRoute.name, path: '/job-screen');

  static const String name = 'JobRoute';
}

/// generated route for
/// [_i5.TimeSpendScreen]
class TimeSpendRoute extends _i23.PageRouteInfo<void> {
  const TimeSpendRoute()
      : super(TimeSpendRoute.name, path: '/time-spend-screen');

  static const String name = 'TimeSpendRoute';
}

/// generated route for
/// [_i6.LearningScreen]
class LearningRoute extends _i23.PageRouteInfo<void> {
  const LearningRoute() : super(LearningRoute.name, path: '/learning-screen');

  static const String name = 'LearningRoute';
}

/// generated route for
/// [_i7.IncomeScreen]
class IncomeRoute extends _i23.PageRouteInfo<void> {
  const IncomeRoute() : super(IncomeRoute.name, path: '/income-screen');

  static const String name = 'IncomeRoute';
}

/// generated route for
/// [_i8.PersonalityScreen]
class PersonalityRoute extends _i23.PageRouteInfo<void> {
  const PersonalityRoute()
      : super(PersonalityRoute.name, path: '/personality-screen');

  static const String name = 'PersonalityRoute';
}

/// generated route for
/// [_i9.HouseScreen]
class HouseRoute extends _i23.PageRouteInfo<HouseRouteArgs> {
  HouseRoute({_i24.Key? key, required _i25.ETypeHouse eTypeHouse})
      : super(HouseRoute.name,
            path: '/house-screen',
            args: HouseRouteArgs(key: key, eTypeHouse: eTypeHouse));

  static const String name = 'HouseRoute';
}

class HouseRouteArgs {
  const HouseRouteArgs({this.key, required this.eTypeHouse});

  final _i24.Key? key;

  final _i25.ETypeHouse eTypeHouse;

  @override
  String toString() {
    return 'HouseRouteArgs{key: $key, eTypeHouse: $eTypeHouse}';
  }
}

/// generated route for
/// [_i10.TransportScreen]
class TransportRoute extends _i23.PageRouteInfo<void> {
  const TransportRoute()
      : super(TransportRoute.name, path: '/transport-screen');

  static const String name = 'TransportRoute';
}

/// generated route for
/// [_i11.FoodScreen]
class FoodRoute extends _i23.PageRouteInfo<void> {
  const FoodRoute() : super(FoodRoute.name, path: '/food-screen');

  static const String name = 'FoodRoute';
}

/// generated route for
/// [_i12.BankScreen]
class BankRoute extends _i23.PageRouteInfo<void> {
  const BankRoute() : super(BankRoute.name, path: '/bank-screen');

  static const String name = 'BankRoute';
}

/// generated route for
/// [_i13.MedicinesScreen]
class MedicinesRoute extends _i23.PageRouteInfo<void> {
  const MedicinesRoute()
      : super(MedicinesRoute.name, path: '/medicines-screen');

  static const String name = 'MedicinesRoute';
}

/// generated route for
/// [_i14.RealAssetsScreen]
class RealAssetsRoute extends _i23.PageRouteInfo<void> {
  const RealAssetsRoute()
      : super(RealAssetsRoute.name, path: '/real-assets-screen');

  static const String name = 'RealAssetsRoute';
}

/// generated route for
/// [_i15.BuildAssetsScreen]
class BuildAssetsRoute extends _i23.PageRouteInfo<void> {
  const BuildAssetsRoute()
      : super(BuildAssetsRoute.name, path: '/build-assets-screen');

  static const String name = 'BuildAssetsRoute';
}

/// generated route for
/// [_i16.BuyAssetsScreen]
class BuyAssetsRoute extends _i23.PageRouteInfo<void> {
  const BuyAssetsRoute()
      : super(BuyAssetsRoute.name, path: '/buy-assets-screen');

  static const String name = 'BuyAssetsRoute';
}

/// generated route for
/// [_i17.AssetScreen]
class AssetRoute extends _i23.PageRouteInfo<AssetRouteArgs> {
  AssetRoute({_i24.Key? key, required String id})
      : super(AssetRoute.name,
            path: '/asset-screen', args: AssetRouteArgs(key: key, id: id));

  static const String name = 'AssetRoute';
}

class AssetRouteArgs {
  const AssetRouteArgs({this.key, required this.id});

  final _i24.Key? key;

  final String id;

  @override
  String toString() {
    return 'AssetRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i18.TenantsScreen]
class TenantsRoute extends _i23.PageRouteInfo<void> {
  const TenantsRoute() : super(TenantsRoute.name, path: '/tenants-screen');

  static const String name = 'TenantsRoute';
}

/// generated route for
/// [_i19.StockMarketScreen]
class StockMarketRoute extends _i23.PageRouteInfo<void> {
  const StockMarketRoute()
      : super(StockMarketRoute.name, path: '/stock-market-screen');

  static const String name = 'StockMarketRoute';
}

/// generated route for
/// [_i20.InstrumentScreen]
class InstrumentRoute extends _i23.PageRouteInfo<InstrumentRouteArgs> {
  InstrumentRoute({_i24.Key? key, required String id})
      : super(InstrumentRoute.name,
            path: '/instrument-screen',
            args: InstrumentRouteArgs(key: key, id: id));

  static const String name = 'InstrumentRoute';
}

class InstrumentRouteArgs {
  const InstrumentRouteArgs({this.key, required this.id});

  final _i24.Key? key;

  final String id;

  @override
  String toString() {
    return 'InstrumentRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i21.FreelanceScreen]
class FreelanceRoute extends _i23.PageRouteInfo<void> {
  const FreelanceRoute()
      : super(FreelanceRoute.name, path: '/freelance-screen');

  static const String name = 'FreelanceRoute';
}

/// generated route for
/// [_i22.FreelanceJobsScreen]
class FreelanceJobsRoute extends _i23.PageRouteInfo<void> {
  const FreelanceJobsRoute()
      : super(FreelanceJobsRoute.name, path: '/freelance-jobs-screen');

  static const String name = 'FreelanceJobsRoute';
}
