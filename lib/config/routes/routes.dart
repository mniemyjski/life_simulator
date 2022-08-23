import 'package:auto_route/auto_route.dart';
import 'package:life_simulator/app/assets/asset_screen.dart';
import 'package:life_simulator/app/assets/assets_screen.dart';
import 'package:life_simulator/app/assets/build_assets_screen.dart';
import 'package:life_simulator/app/assets/buy_assets_screen.dart';
import 'package:life_simulator/app/assets/tenants_screen.dart';
import 'package:life_simulator/app/bank/bank_screen.dart';
import 'package:life_simulator/app/freelance/freelance_screen.dart';
import 'package:life_simulator/app/income/income_screen.dart';
import 'package:life_simulator/app/job/job_screen.dart';
import 'package:life_simulator/app/learning/learning_screen.dart';
import 'package:life_simulator/app/medicines/medicines_screen.dart';
import 'package:life_simulator/app/personality/food_screen.dart';
import 'package:life_simulator/app/personality/personality_screen.dart';
import 'package:life_simulator/app/settings/screens/settings_screen.dart';
import 'package:life_simulator/app/stock_market/instrument_screen.dart';
import 'package:life_simulator/app/stock_market/stock_market_screen.dart';
import 'package:life_simulator/app/time_spend/time_spend_screen.dart';

import '../../app/freelance/freelance_jobs_screen.dart';
import '../../app/game/game_screen.dart';
import '../../app/home/home_screen.dart';
import '../../app/personality/house_screen.dart';
import '../../app/personality/transport_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, initial: true),
    AutoRoute(page: SettingsScreen),
    AutoRoute(page: GameScreen),
    AutoRoute(page: JobScreen),
    AutoRoute(page: TimeSpendScreen),
    AutoRoute(page: LearningScreen),
    AutoRoute(page: IncomeScreen),
    AutoRoute(page: PersonalityScreen),
    CustomRoute(
      page: HouseScreen,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 500,
    ),
    CustomRoute(
      page: TransportScreen,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 500,
    ),
    CustomRoute(
      page: FoodScreen,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 500,
    ),
    AutoRoute(page: BankScreen),
    AutoRoute(page: MedicinesScreen),
    AutoRoute(page: AssetsScreen),
    AutoRoute(page: BuildAssetsScreen),
    AutoRoute(page: BuyAssetsScreen),
    AutoRoute(page: AssetScreen),
    AutoRoute(page: TenantsScreen),
    AutoRoute(page: StockMarketScreen),
    AutoRoute(page: InstrumentScreen),
    AutoRoute(page: FreelanceScreen),
    AutoRoute(page: FreelanceJobsScreen),
  ],
)
class $AppRouter {}
