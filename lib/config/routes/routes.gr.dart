// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i24;
import 'package:flutter/material.dart' as _i25;

import '../../app/assets/asset_screen.dart' as _i18;
import '../../app/assets/assets_screen.dart' as _i15;
import '../../app/assets/build_assets_screen.dart' as _i16;
import '../../app/assets/buy_assets_screen.dart' as _i17;
import '../../app/assets/tenants_screen.dart' as _i19;
import '../../app/bank/bank_screen.dart' as _i13;
import '../../app/freelance/freelance_jobs_screen.dart' as _i23;
import '../../app/freelance/freelance_screen.dart' as _i22;
import '../../app/game/game_screen.dart' as _i3;
import '../../app/home/home_screen.dart' as _i1;
import '../../app/income/income_screen.dart' as _i8;
import '../../app/job/job_screen.dart' as _i4;
import '../../app/learning/learning_screen.dart' as _i6;
import '../../app/learning/materials_screen.dart' as _i7;
import '../../app/medicines/medicines_screen.dart' as _i14;
import '../../app/personality/food_screen.dart' as _i12;
import '../../app/personality/house_screen.dart' as _i10;
import '../../app/personality/models/house/house_model.dart' as _i26;
import '../../app/personality/personality_screen.dart' as _i9;
import '../../app/personality/transport_screen.dart' as _i11;
import '../../app/settings/screens/settings_screen.dart' as _i2;
import '../../app/stock_market/instrument_screen.dart' as _i21;
import '../../app/stock_market/stock_market_screen.dart' as _i20;
import '../../app/time_spend/time_spend_screen.dart' as _i5;

class AppRouter extends _i24.RootStackRouter {
  AppRouter([_i25.GlobalKey<_i25.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i24.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    SettingsRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.SettingsScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    GameRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.GameScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.zoomIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    JobRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.JobScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    TimeSpendRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.TimeSpendScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    LearningRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.LearningScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    MaterialsRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.MaterialsScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    IncomeRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.IncomeScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    PersonalityRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i9.PersonalityScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    HouseRoute.name: (routeData) {
      final args = routeData.argsAs<HouseRouteArgs>();
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: _i10.HouseScreen(key: args.key, eTypeHouse: args.eTypeHouse),
          transitionsBuilder: _i24.TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    TransportRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i11.TransportScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    FoodRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i12.FoodScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    BankRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i13.BankScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    MedicinesRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i14.MedicinesScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    AssetsRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i15.AssetsScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    BuildAssetsRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i16.BuildAssetsScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    BuyAssetsRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i17.BuyAssetsScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    AssetRoute.name: (routeData) {
      final args = routeData.argsAs<AssetRouteArgs>();
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: _i18.AssetScreen(key: args.key, id: args.id),
          transitionsBuilder: _i24.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    TenantsRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i19.TenantsScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    StockMarketRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i20.StockMarketScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    InstrumentRoute.name: (routeData) {
      final args = routeData.argsAs<InstrumentRouteArgs>();
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: _i21.InstrumentScreen(key: args.key, id: args.id),
          transitionsBuilder: _i24.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    FreelanceRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i22.FreelanceScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    FreelanceJobsRoute.name: (routeData) {
      return _i24.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i23.FreelanceJobsScreen(),
          transitionsBuilder: _i24.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i24.RouteConfig> get routes => [
        _i24.RouteConfig(HomeRoute.name, path: '/'),
        _i24.RouteConfig(SettingsRoute.name, path: '/settings-screen'),
        _i24.RouteConfig(GameRoute.name, path: '/game-screen'),
        _i24.RouteConfig(JobRoute.name, path: '/job-screen'),
        _i24.RouteConfig(TimeSpendRoute.name, path: '/time-spend-screen'),
        _i24.RouteConfig(LearningRoute.name, path: '/learning-screen'),
        _i24.RouteConfig(MaterialsRoute.name, path: '/materials-screen'),
        _i24.RouteConfig(IncomeRoute.name, path: '/income-screen'),
        _i24.RouteConfig(PersonalityRoute.name, path: '/personality-screen'),
        _i24.RouteConfig(HouseRoute.name, path: '/house-screen'),
        _i24.RouteConfig(TransportRoute.name, path: '/transport-screen'),
        _i24.RouteConfig(FoodRoute.name, path: '/food-screen'),
        _i24.RouteConfig(BankRoute.name, path: '/bank-screen'),
        _i24.RouteConfig(MedicinesRoute.name, path: '/medicines-screen'),
        _i24.RouteConfig(AssetsRoute.name, path: '/assets-screen'),
        _i24.RouteConfig(BuildAssetsRoute.name, path: '/build-assets-screen'),
        _i24.RouteConfig(BuyAssetsRoute.name, path: '/buy-assets-screen'),
        _i24.RouteConfig(AssetRoute.name, path: '/asset-screen'),
        _i24.RouteConfig(TenantsRoute.name, path: '/tenants-screen'),
        _i24.RouteConfig(StockMarketRoute.name, path: '/stock-market-screen'),
        _i24.RouteConfig(InstrumentRoute.name, path: '/instrument-screen'),
        _i24.RouteConfig(FreelanceRoute.name, path: '/freelance-screen'),
        _i24.RouteConfig(FreelanceJobsRoute.name,
            path: '/freelance-jobs-screen')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i24.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.SettingsScreen]
class SettingsRoute extends _i24.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-screen');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i3.GameScreen]
class GameRoute extends _i24.PageRouteInfo<void> {
  const GameRoute() : super(GameRoute.name, path: '/game-screen');

  static const String name = 'GameRoute';
}

/// generated route for
/// [_i4.JobScreen]
class JobRoute extends _i24.PageRouteInfo<void> {
  const JobRoute() : super(JobRoute.name, path: '/job-screen');

  static const String name = 'JobRoute';
}

/// generated route for
/// [_i5.TimeSpendScreen]
class TimeSpendRoute extends _i24.PageRouteInfo<void> {
  const TimeSpendRoute()
      : super(TimeSpendRoute.name, path: '/time-spend-screen');

  static const String name = 'TimeSpendRoute';
}

/// generated route for
/// [_i6.LearningScreen]
class LearningRoute extends _i24.PageRouteInfo<void> {
  const LearningRoute() : super(LearningRoute.name, path: '/learning-screen');

  static const String name = 'LearningRoute';
}

/// generated route for
/// [_i7.MaterialsScreen]
class MaterialsRoute extends _i24.PageRouteInfo<void> {
  const MaterialsRoute()
      : super(MaterialsRoute.name, path: '/materials-screen');

  static const String name = 'MaterialsRoute';
}

/// generated route for
/// [_i8.IncomeScreen]
class IncomeRoute extends _i24.PageRouteInfo<void> {
  const IncomeRoute() : super(IncomeRoute.name, path: '/income-screen');

  static const String name = 'IncomeRoute';
}

/// generated route for
/// [_i9.PersonalityScreen]
class PersonalityRoute extends _i24.PageRouteInfo<void> {
  const PersonalityRoute()
      : super(PersonalityRoute.name, path: '/personality-screen');

  static const String name = 'PersonalityRoute';
}

/// generated route for
/// [_i10.HouseScreen]
class HouseRoute extends _i24.PageRouteInfo<HouseRouteArgs> {
  HouseRoute({_i25.Key? key, required _i26.ETypeHouse eTypeHouse})
      : super(HouseRoute.name,
            path: '/house-screen',
            args: HouseRouteArgs(key: key, eTypeHouse: eTypeHouse));

  static const String name = 'HouseRoute';
}

class HouseRouteArgs {
  const HouseRouteArgs({this.key, required this.eTypeHouse});

  final _i25.Key? key;

  final _i26.ETypeHouse eTypeHouse;

  @override
  String toString() {
    return 'HouseRouteArgs{key: $key, eTypeHouse: $eTypeHouse}';
  }
}

/// generated route for
/// [_i11.TransportScreen]
class TransportRoute extends _i24.PageRouteInfo<void> {
  const TransportRoute()
      : super(TransportRoute.name, path: '/transport-screen');

  static const String name = 'TransportRoute';
}

/// generated route for
/// [_i12.FoodScreen]
class FoodRoute extends _i24.PageRouteInfo<void> {
  const FoodRoute() : super(FoodRoute.name, path: '/food-screen');

  static const String name = 'FoodRoute';
}

/// generated route for
/// [_i13.BankScreen]
class BankRoute extends _i24.PageRouteInfo<void> {
  const BankRoute() : super(BankRoute.name, path: '/bank-screen');

  static const String name = 'BankRoute';
}

/// generated route for
/// [_i14.MedicinesScreen]
class MedicinesRoute extends _i24.PageRouteInfo<void> {
  const MedicinesRoute()
      : super(MedicinesRoute.name, path: '/medicines-screen');

  static const String name = 'MedicinesRoute';
}

/// generated route for
/// [_i15.AssetsScreen]
class AssetsRoute extends _i24.PageRouteInfo<void> {
  const AssetsRoute() : super(AssetsRoute.name, path: '/assets-screen');

  static const String name = 'AssetsRoute';
}

/// generated route for
/// [_i16.BuildAssetsScreen]
class BuildAssetsRoute extends _i24.PageRouteInfo<void> {
  const BuildAssetsRoute()
      : super(BuildAssetsRoute.name, path: '/build-assets-screen');

  static const String name = 'BuildAssetsRoute';
}

/// generated route for
/// [_i17.BuyAssetsScreen]
class BuyAssetsRoute extends _i24.PageRouteInfo<void> {
  const BuyAssetsRoute()
      : super(BuyAssetsRoute.name, path: '/buy-assets-screen');

  static const String name = 'BuyAssetsRoute';
}

/// generated route for
/// [_i18.AssetScreen]
class AssetRoute extends _i24.PageRouteInfo<AssetRouteArgs> {
  AssetRoute({_i25.Key? key, required String id})
      : super(AssetRoute.name,
            path: '/asset-screen', args: AssetRouteArgs(key: key, id: id));

  static const String name = 'AssetRoute';
}

class AssetRouteArgs {
  const AssetRouteArgs({this.key, required this.id});

  final _i25.Key? key;

  final String id;

  @override
  String toString() {
    return 'AssetRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i19.TenantsScreen]
class TenantsRoute extends _i24.PageRouteInfo<void> {
  const TenantsRoute() : super(TenantsRoute.name, path: '/tenants-screen');

  static const String name = 'TenantsRoute';
}

/// generated route for
/// [_i20.StockMarketScreen]
class StockMarketRoute extends _i24.PageRouteInfo<void> {
  const StockMarketRoute()
      : super(StockMarketRoute.name, path: '/stock-market-screen');

  static const String name = 'StockMarketRoute';
}

/// generated route for
/// [_i21.InstrumentScreen]
class InstrumentRoute extends _i24.PageRouteInfo<InstrumentRouteArgs> {
  InstrumentRoute({_i25.Key? key, required String id})
      : super(InstrumentRoute.name,
            path: '/instrument-screen',
            args: InstrumentRouteArgs(key: key, id: id));

  static const String name = 'InstrumentRoute';
}

class InstrumentRouteArgs {
  const InstrumentRouteArgs({this.key, required this.id});

  final _i25.Key? key;

  final String id;

  @override
  String toString() {
    return 'InstrumentRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i22.FreelanceScreen]
class FreelanceRoute extends _i24.PageRouteInfo<void> {
  const FreelanceRoute()
      : super(FreelanceRoute.name, path: '/freelance-screen');

  static const String name = 'FreelanceRoute';
}

/// generated route for
/// [_i23.FreelanceJobsScreen]
class FreelanceJobsRoute extends _i24.PageRouteInfo<void> {
  const FreelanceJobsRoute()
      : super(FreelanceJobsRoute.name, path: '/freelance-jobs-screen');

  static const String name = 'FreelanceJobsRoute';
}
