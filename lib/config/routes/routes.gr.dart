// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i34;
import 'package:flutter/material.dart' as _i35;

import '../../app/assets/asset_screen.dart' as _i20;
import '../../app/assets/assets_screen.dart' as _i17;
import '../../app/assets/build_assets_screen.dart' as _i18;
import '../../app/assets/buy_assets_screen.dart' as _i19;
import '../../app/assets/tenants_screen.dart' as _i21;
import '../../app/bank/bank_screen.dart' as _i15;
import '../../app/business/business_screen.dart' as _i27;
import '../../app/business/business_transactions_screen.dart' as _i28;
import '../../app/business/businesses_screen.dart' as _i26;
import '../../app/business/employees_screen.dart' as _i31;
import '../../app/business/human_resources_screen.dart' as _i32;
import '../../app/business/models/employee/employee_model.dart' as _i40;
import '../../app/business/product_details_screen.dart' as _i33;
import '../../app/business/product_list_screen.dart' as _i30;
import '../../app/business/upgrade_screen.dart' as _i29;
import '../../app/freelance/freelance_jobs_screen.dart' as _i25;
import '../../app/freelance/freelance_screen.dart' as _i24;
import '../../app/game/game_screen.dart' as _i4;
import '../../app/home/home_screen.dart' as _i1;
import '../../app/job/job_screen.dart' as _i5;
import '../../app/learning/learning_screen.dart' as _i7;
import '../../app/learning/materials_screen.dart' as _i8;
import '../../app/medicines/medicines_screen.dart' as _i16;
import '../../app/money/income_screen.dart' as _i9;
import '../../app/money/transactions_screen.dart' as _i10;
import '../../app/personality/food_screen.dart' as _i14;
import '../../app/personality/house_screen.dart' as _i12;
import '../../app/personality/models/house/house_model.dart' as _i37;
import '../../app/personality/personality_screen.dart' as _i11;
import '../../app/personality/transport_screen.dart' as _i13;
import '../../app/settings/screens/settings_screen.dart' as _i2;
import '../../app/stock_market/cubit/candles/candles_cubit.dart' as _i38;
import '../../app/stock_market/cubit/instruments/instruments_cubit.dart'
    as _i39;
import '../../app/stock_market/instrument_screen.dart' as _i23;
import '../../app/stock_market/stock_market_screen.dart' as _i22;
import '../../app/time_spend/cubit/time_spend_cubit.dart' as _i36;
import '../../app/time_spend/time_spend_screen.dart' as _i6;
import 'routes.dart' as _i3;

class AppRouter extends _i34.RootStackRouter {
  AppRouter([_i35.GlobalKey<_i35.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i34.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.SettingsScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    GameRouter.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    GameRoute.name: (routeData) {
      return _i34.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.GameScreen(),
      );
    },
    JobRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.JobScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TimeSpendRoute.name: (routeData) {
      final args = routeData.argsAs<TimeSpendRouteArgs>();
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: _i34.WrappedRoute(
            child: _i6.TimeSpendScreen(
          key: args.key,
          timeSpendProvider: args.timeSpendProvider,
        )),
        transitionsBuilder: _i34.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LearningRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.LearningScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MaterialsRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.MaterialsScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    IncomeRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i9.IncomeScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TransactionsRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i10.TransactionsScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PersonalityRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i11.PersonalityScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HouseRoute.name: (routeData) {
      final args = routeData.argsAs<HouseRouteArgs>();
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: _i12.HouseScreen(
          key: args.key,
          eTypeHouse: args.eTypeHouse,
        ),
        transitionsBuilder: _i34.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TransportRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i13.TransportScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FoodRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i14.FoodScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BankRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i15.BankScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MedicinesRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i16.MedicinesScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AssetsRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i17.AssetsScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BuildAssetsRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i18.BuildAssetsScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BuyAssetsRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i19.BuyAssetsScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AssetRoute.name: (routeData) {
      final args = routeData.argsAs<AssetRouteArgs>();
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: _i20.AssetScreen(
          key: args.key,
          id: args.id,
        ),
        transitionsBuilder: _i34.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TenantsRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i21.TenantsScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    StockMarketRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i22.StockMarketScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    InstrumentRoute.name: (routeData) {
      final args = routeData.argsAs<InstrumentRouteArgs>();
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: _i34.WrappedRoute(
            child: _i23.InstrumentScreen(
          key: args.key,
          instrumentId: args.instrumentId,
          candlesProvider: args.candlesProvider,
          instrumentsCubit: args.instrumentsCubit,
        )),
        transitionsBuilder: _i34.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FreelanceRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i24.FreelanceScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FreelanceJobsRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i25.FreelanceJobsScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BusinessesRoute.name: (routeData) {
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i26.BusinessesScreen(),
        transitionsBuilder: _i34.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BusinessRoute.name: (routeData) {
      final args = routeData.argsAs<BusinessRouteArgs>();
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: _i27.BusinessScreen(
          key: args.key,
          businessId: args.businessId,
        ),
        transitionsBuilder: _i34.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BusinessTransactionsRoute.name: (routeData) {
      final args = routeData.argsAs<BusinessTransactionsRouteArgs>();
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: _i28.BusinessTransactionsScreen(
          key: args.key,
          businessId: args.businessId,
        ),
        transitionsBuilder: _i34.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UpgradeRoute.name: (routeData) {
      final args = routeData.argsAs<UpgradeRouteArgs>();
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: _i29.UpgradeScreen(
          key: args.key,
          businessId: args.businessId,
        ),
        transitionsBuilder: _i34.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProductListRoute.name: (routeData) {
      final args = routeData.argsAs<ProductListRouteArgs>();
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: _i30.ProductListScreen(
          key: args.key,
          businessId: args.businessId,
        ),
        transitionsBuilder: _i34.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    EmployeesRoute.name: (routeData) {
      final args = routeData.argsAs<EmployeesRouteArgs>();
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: _i31.EmployeesScreen(
          key: args.key,
          businessId: args.businessId,
        ),
        transitionsBuilder: _i34.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HumanResourcesRoute.name: (routeData) {
      final args = routeData.argsAs<HumanResourcesRouteArgs>();
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: _i32.HumanResourcesScreen(
          key: args.key,
          eTypeEmployees: args.eTypeEmployees,
          businessId: args.businessId,
        ),
        transitionsBuilder: _i34.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProductDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailsRouteArgs>();
      return _i34.CustomPage<dynamic>(
        routeData: routeData,
        child: _i33.ProductDetailsScreen(
          key: args.key,
          productId: args.productId,
          businessId: args.businessId,
        ),
        transitionsBuilder: _i34.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i34.RouteConfig> get routes => [
        _i34.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i34.RouteConfig(
          SettingsRoute.name,
          path: '/settings-screen',
        ),
        _i34.RouteConfig(
          GameRouter.name,
          path: '/empty-screen',
          children: [
            _i34.RouteConfig(
              GameRoute.name,
              path: 'game-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              JobRoute.name,
              path: 'job-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              TimeSpendRoute.name,
              path: 'time-spend-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              LearningRoute.name,
              path: 'learning-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              MaterialsRoute.name,
              path: 'materials-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              IncomeRoute.name,
              path: 'income-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              TransactionsRoute.name,
              path: 'transactions-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              PersonalityRoute.name,
              path: 'personality-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              HouseRoute.name,
              path: 'house-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              TransportRoute.name,
              path: 'transport-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              FoodRoute.name,
              path: 'food-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              BankRoute.name,
              path: 'bank-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              MedicinesRoute.name,
              path: 'medicines-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              AssetsRoute.name,
              path: 'assets-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              BuildAssetsRoute.name,
              path: 'build-assets-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              BuyAssetsRoute.name,
              path: 'buy-assets-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              AssetRoute.name,
              path: 'asset-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              TenantsRoute.name,
              path: 'tenants-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              StockMarketRoute.name,
              path: 'stock-market-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              InstrumentRoute.name,
              path: 'instrument-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              FreelanceRoute.name,
              path: 'freelance-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              FreelanceJobsRoute.name,
              path: 'freelance-jobs-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              BusinessesRoute.name,
              path: 'businesses-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              BusinessRoute.name,
              path: 'business-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              BusinessTransactionsRoute.name,
              path: 'business-transactions-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              UpgradeRoute.name,
              path: 'upgrade-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              ProductListRoute.name,
              path: 'product-list-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              EmployeesRoute.name,
              path: 'employees-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              HumanResourcesRoute.name,
              path: 'human-resources-screen',
              parent: GameRouter.name,
            ),
            _i34.RouteConfig(
              ProductDetailsRoute.name,
              path: 'product-details-screen',
              parent: GameRouter.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i34.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.SettingsScreen]
class SettingsRoute extends _i34.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: '/settings-screen',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i3.EmptyScreen]
class GameRouter extends _i34.PageRouteInfo<void> {
  const GameRouter({List<_i34.PageRouteInfo>? children})
      : super(
          GameRouter.name,
          path: '/empty-screen',
          initialChildren: children,
        );

  static const String name = 'GameRouter';
}

/// generated route for
/// [_i4.GameScreen]
class GameRoute extends _i34.PageRouteInfo<void> {
  const GameRoute()
      : super(
          GameRoute.name,
          path: 'game-screen',
        );

  static const String name = 'GameRoute';
}

/// generated route for
/// [_i5.JobScreen]
class JobRoute extends _i34.PageRouteInfo<void> {
  const JobRoute()
      : super(
          JobRoute.name,
          path: 'job-screen',
        );

  static const String name = 'JobRoute';
}

/// generated route for
/// [_i6.TimeSpendScreen]
class TimeSpendRoute extends _i34.PageRouteInfo<TimeSpendRouteArgs> {
  TimeSpendRoute({
    _i35.Key? key,
    required _i36.TimeSpendCubit timeSpendProvider,
  }) : super(
          TimeSpendRoute.name,
          path: 'time-spend-screen',
          args: TimeSpendRouteArgs(
            key: key,
            timeSpendProvider: timeSpendProvider,
          ),
        );

  static const String name = 'TimeSpendRoute';
}

class TimeSpendRouteArgs {
  const TimeSpendRouteArgs({
    this.key,
    required this.timeSpendProvider,
  });

  final _i35.Key? key;

  final _i36.TimeSpendCubit timeSpendProvider;

  @override
  String toString() {
    return 'TimeSpendRouteArgs{key: $key, timeSpendProvider: $timeSpendProvider}';
  }
}

/// generated route for
/// [_i7.LearningScreen]
class LearningRoute extends _i34.PageRouteInfo<void> {
  const LearningRoute()
      : super(
          LearningRoute.name,
          path: 'learning-screen',
        );

  static const String name = 'LearningRoute';
}

/// generated route for
/// [_i8.MaterialsScreen]
class MaterialsRoute extends _i34.PageRouteInfo<void> {
  const MaterialsRoute()
      : super(
          MaterialsRoute.name,
          path: 'materials-screen',
        );

  static const String name = 'MaterialsRoute';
}

/// generated route for
/// [_i9.IncomeScreen]
class IncomeRoute extends _i34.PageRouteInfo<void> {
  const IncomeRoute()
      : super(
          IncomeRoute.name,
          path: 'income-screen',
        );

  static const String name = 'IncomeRoute';
}

/// generated route for
/// [_i10.TransactionsScreen]
class TransactionsRoute extends _i34.PageRouteInfo<void> {
  const TransactionsRoute()
      : super(
          TransactionsRoute.name,
          path: 'transactions-screen',
        );

  static const String name = 'TransactionsRoute';
}

/// generated route for
/// [_i11.PersonalityScreen]
class PersonalityRoute extends _i34.PageRouteInfo<void> {
  const PersonalityRoute()
      : super(
          PersonalityRoute.name,
          path: 'personality-screen',
        );

  static const String name = 'PersonalityRoute';
}

/// generated route for
/// [_i12.HouseScreen]
class HouseRoute extends _i34.PageRouteInfo<HouseRouteArgs> {
  HouseRoute({
    _i35.Key? key,
    required _i37.ETypeHouse eTypeHouse,
  }) : super(
          HouseRoute.name,
          path: 'house-screen',
          args: HouseRouteArgs(
            key: key,
            eTypeHouse: eTypeHouse,
          ),
        );

  static const String name = 'HouseRoute';
}

class HouseRouteArgs {
  const HouseRouteArgs({
    this.key,
    required this.eTypeHouse,
  });

  final _i35.Key? key;

  final _i37.ETypeHouse eTypeHouse;

  @override
  String toString() {
    return 'HouseRouteArgs{key: $key, eTypeHouse: $eTypeHouse}';
  }
}

/// generated route for
/// [_i13.TransportScreen]
class TransportRoute extends _i34.PageRouteInfo<void> {
  const TransportRoute()
      : super(
          TransportRoute.name,
          path: 'transport-screen',
        );

  static const String name = 'TransportRoute';
}

/// generated route for
/// [_i14.FoodScreen]
class FoodRoute extends _i34.PageRouteInfo<void> {
  const FoodRoute()
      : super(
          FoodRoute.name,
          path: 'food-screen',
        );

  static const String name = 'FoodRoute';
}

/// generated route for
/// [_i15.BankScreen]
class BankRoute extends _i34.PageRouteInfo<void> {
  const BankRoute()
      : super(
          BankRoute.name,
          path: 'bank-screen',
        );

  static const String name = 'BankRoute';
}

/// generated route for
/// [_i16.MedicinesScreen]
class MedicinesRoute extends _i34.PageRouteInfo<void> {
  const MedicinesRoute()
      : super(
          MedicinesRoute.name,
          path: 'medicines-screen',
        );

  static const String name = 'MedicinesRoute';
}

/// generated route for
/// [_i17.AssetsScreen]
class AssetsRoute extends _i34.PageRouteInfo<void> {
  const AssetsRoute()
      : super(
          AssetsRoute.name,
          path: 'assets-screen',
        );

  static const String name = 'AssetsRoute';
}

/// generated route for
/// [_i18.BuildAssetsScreen]
class BuildAssetsRoute extends _i34.PageRouteInfo<void> {
  const BuildAssetsRoute()
      : super(
          BuildAssetsRoute.name,
          path: 'build-assets-screen',
        );

  static const String name = 'BuildAssetsRoute';
}

/// generated route for
/// [_i19.BuyAssetsScreen]
class BuyAssetsRoute extends _i34.PageRouteInfo<void> {
  const BuyAssetsRoute()
      : super(
          BuyAssetsRoute.name,
          path: 'buy-assets-screen',
        );

  static const String name = 'BuyAssetsRoute';
}

/// generated route for
/// [_i20.AssetScreen]
class AssetRoute extends _i34.PageRouteInfo<AssetRouteArgs> {
  AssetRoute({
    _i35.Key? key,
    required String id,
  }) : super(
          AssetRoute.name,
          path: 'asset-screen',
          args: AssetRouteArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'AssetRoute';
}

class AssetRouteArgs {
  const AssetRouteArgs({
    this.key,
    required this.id,
  });

  final _i35.Key? key;

  final String id;

  @override
  String toString() {
    return 'AssetRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i21.TenantsScreen]
class TenantsRoute extends _i34.PageRouteInfo<void> {
  const TenantsRoute()
      : super(
          TenantsRoute.name,
          path: 'tenants-screen',
        );

  static const String name = 'TenantsRoute';
}

/// generated route for
/// [_i22.StockMarketScreen]
class StockMarketRoute extends _i34.PageRouteInfo<void> {
  const StockMarketRoute()
      : super(
          StockMarketRoute.name,
          path: 'stock-market-screen',
        );

  static const String name = 'StockMarketRoute';
}

/// generated route for
/// [_i23.InstrumentScreen]
class InstrumentRoute extends _i34.PageRouteInfo<InstrumentRouteArgs> {
  InstrumentRoute({
    _i35.Key? key,
    required int instrumentId,
    required _i38.CandlesCubit candlesProvider,
    required _i39.InstrumentsCubit instrumentsCubit,
  }) : super(
          InstrumentRoute.name,
          path: 'instrument-screen',
          args: InstrumentRouteArgs(
            key: key,
            instrumentId: instrumentId,
            candlesProvider: candlesProvider,
            instrumentsCubit: instrumentsCubit,
          ),
        );

  static const String name = 'InstrumentRoute';
}

class InstrumentRouteArgs {
  const InstrumentRouteArgs({
    this.key,
    required this.instrumentId,
    required this.candlesProvider,
    required this.instrumentsCubit,
  });

  final _i35.Key? key;

  final int instrumentId;

  final _i38.CandlesCubit candlesProvider;

  final _i39.InstrumentsCubit instrumentsCubit;

  @override
  String toString() {
    return 'InstrumentRouteArgs{key: $key, instrumentId: $instrumentId, candlesProvider: $candlesProvider, instrumentsCubit: $instrumentsCubit}';
  }
}

/// generated route for
/// [_i24.FreelanceScreen]
class FreelanceRoute extends _i34.PageRouteInfo<void> {
  const FreelanceRoute()
      : super(
          FreelanceRoute.name,
          path: 'freelance-screen',
        );

  static const String name = 'FreelanceRoute';
}

/// generated route for
/// [_i25.FreelanceJobsScreen]
class FreelanceJobsRoute extends _i34.PageRouteInfo<void> {
  const FreelanceJobsRoute()
      : super(
          FreelanceJobsRoute.name,
          path: 'freelance-jobs-screen',
        );

  static const String name = 'FreelanceJobsRoute';
}

/// generated route for
/// [_i26.BusinessesScreen]
class BusinessesRoute extends _i34.PageRouteInfo<void> {
  const BusinessesRoute()
      : super(
          BusinessesRoute.name,
          path: 'businesses-screen',
        );

  static const String name = 'BusinessesRoute';
}

/// generated route for
/// [_i27.BusinessScreen]
class BusinessRoute extends _i34.PageRouteInfo<BusinessRouteArgs> {
  BusinessRoute({
    _i35.Key? key,
    required int businessId,
  }) : super(
          BusinessRoute.name,
          path: 'business-screen',
          args: BusinessRouteArgs(
            key: key,
            businessId: businessId,
          ),
        );

  static const String name = 'BusinessRoute';
}

class BusinessRouteArgs {
  const BusinessRouteArgs({
    this.key,
    required this.businessId,
  });

  final _i35.Key? key;

  final int businessId;

  @override
  String toString() {
    return 'BusinessRouteArgs{key: $key, businessId: $businessId}';
  }
}

/// generated route for
/// [_i28.BusinessTransactionsScreen]
class BusinessTransactionsRoute
    extends _i34.PageRouteInfo<BusinessTransactionsRouteArgs> {
  BusinessTransactionsRoute({
    _i35.Key? key,
    required int businessId,
  }) : super(
          BusinessTransactionsRoute.name,
          path: 'business-transactions-screen',
          args: BusinessTransactionsRouteArgs(
            key: key,
            businessId: businessId,
          ),
        );

  static const String name = 'BusinessTransactionsRoute';
}

class BusinessTransactionsRouteArgs {
  const BusinessTransactionsRouteArgs({
    this.key,
    required this.businessId,
  });

  final _i35.Key? key;

  final int businessId;

  @override
  String toString() {
    return 'BusinessTransactionsRouteArgs{key: $key, businessId: $businessId}';
  }
}

/// generated route for
/// [_i29.UpgradeScreen]
class UpgradeRoute extends _i34.PageRouteInfo<UpgradeRouteArgs> {
  UpgradeRoute({
    _i35.Key? key,
    required int businessId,
  }) : super(
          UpgradeRoute.name,
          path: 'upgrade-screen',
          args: UpgradeRouteArgs(
            key: key,
            businessId: businessId,
          ),
        );

  static const String name = 'UpgradeRoute';
}

class UpgradeRouteArgs {
  const UpgradeRouteArgs({
    this.key,
    required this.businessId,
  });

  final _i35.Key? key;

  final int businessId;

  @override
  String toString() {
    return 'UpgradeRouteArgs{key: $key, businessId: $businessId}';
  }
}

/// generated route for
/// [_i30.ProductListScreen]
class ProductListRoute extends _i34.PageRouteInfo<ProductListRouteArgs> {
  ProductListRoute({
    _i35.Key? key,
    required int businessId,
  }) : super(
          ProductListRoute.name,
          path: 'product-list-screen',
          args: ProductListRouteArgs(
            key: key,
            businessId: businessId,
          ),
        );

  static const String name = 'ProductListRoute';
}

class ProductListRouteArgs {
  const ProductListRouteArgs({
    this.key,
    required this.businessId,
  });

  final _i35.Key? key;

  final int businessId;

  @override
  String toString() {
    return 'ProductListRouteArgs{key: $key, businessId: $businessId}';
  }
}

/// generated route for
/// [_i31.EmployeesScreen]
class EmployeesRoute extends _i34.PageRouteInfo<EmployeesRouteArgs> {
  EmployeesRoute({
    _i35.Key? key,
    required int businessId,
  }) : super(
          EmployeesRoute.name,
          path: 'employees-screen',
          args: EmployeesRouteArgs(
            key: key,
            businessId: businessId,
          ),
        );

  static const String name = 'EmployeesRoute';
}

class EmployeesRouteArgs {
  const EmployeesRouteArgs({
    this.key,
    required this.businessId,
  });

  final _i35.Key? key;

  final int businessId;

  @override
  String toString() {
    return 'EmployeesRouteArgs{key: $key, businessId: $businessId}';
  }
}

/// generated route for
/// [_i32.HumanResourcesScreen]
class HumanResourcesRoute extends _i34.PageRouteInfo<HumanResourcesRouteArgs> {
  HumanResourcesRoute({
    _i35.Key? key,
    required _i40.ETypeEmployees eTypeEmployees,
    required int businessId,
  }) : super(
          HumanResourcesRoute.name,
          path: 'human-resources-screen',
          args: HumanResourcesRouteArgs(
            key: key,
            eTypeEmployees: eTypeEmployees,
            businessId: businessId,
          ),
        );

  static const String name = 'HumanResourcesRoute';
}

class HumanResourcesRouteArgs {
  const HumanResourcesRouteArgs({
    this.key,
    required this.eTypeEmployees,
    required this.businessId,
  });

  final _i35.Key? key;

  final _i40.ETypeEmployees eTypeEmployees;

  final int businessId;

  @override
  String toString() {
    return 'HumanResourcesRouteArgs{key: $key, eTypeEmployees: $eTypeEmployees, businessId: $businessId}';
  }
}

/// generated route for
/// [_i33.ProductDetailsScreen]
class ProductDetailsRoute extends _i34.PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    _i35.Key? key,
    required int productId,
    required int businessId,
  }) : super(
          ProductDetailsRoute.name,
          path: 'product-details-screen',
          args: ProductDetailsRouteArgs(
            key: key,
            productId: productId,
            businessId: businessId,
          ),
        );

  static const String name = 'ProductDetailsRoute';
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({
    this.key,
    required this.productId,
    required this.businessId,
  });

  final _i35.Key? key;

  final int productId;

  final int businessId;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, productId: $productId, businessId: $businessId}';
  }
}
