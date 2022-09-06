import 'package:auto_route/auto_route.dart';

import '../../app/assets/asset_screen.dart';
import '../../app/assets/assets_screen.dart';
import '../../app/assets/build_assets_screen.dart';
import '../../app/assets/buy_assets_screen.dart';
import '../../app/assets/tenants_screen.dart';
import '../../app/bank/bank_screen.dart';
import '../../app/freelance/freelance_jobs_screen.dart';
import '../../app/freelance/freelance_screen.dart';
import '../../app/game/game_screen.dart';
import '../../app/home/home_screen.dart';
import '../../app/job/job_screen.dart';
import '../../app/learning/learning_screen.dart';
import '../../app/learning/materials_screen.dart';
import '../../app/medicines/medicines_screen.dart';
import '../../app/money/income_screen.dart';
import '../../app/money/transactions_screen.dart';
import '../../app/personality/food_screen.dart';
import '../../app/personality/house_screen.dart';
import '../../app/personality/personality_screen.dart';
import '../../app/personality/transport_screen.dart';
import '../../app/settings/screens/settings_screen.dart';
import '../../app/stock_market/instrument_screen.dart';
import '../../app/stock_market/stock_market_screen.dart';
import '../../app/time_spend/time_spend_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, initial: true),
    CustomRoute(
      page: SettingsScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: GameScreen,
      transitionsBuilder: TransitionsBuilders.zoomIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: JobScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: TimeSpendScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: LearningScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: MaterialsScreen,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: IncomeScreen,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: TransactionsScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: PersonalityScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: HouseScreen,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: TransportScreen,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: FoodScreen,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 500,
    ),
    CustomRoute(
      page: BankScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: MedicinesScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: AssetsScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: BuildAssetsScreen,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: BuyAssetsScreen,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: AssetScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: TenantsScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: StockMarketScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: InstrumentScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: FreelanceScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),
    CustomRoute(
      page: FreelanceJobsScreen,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 300,
    ),
  ],
)
class $AppRouter {}
