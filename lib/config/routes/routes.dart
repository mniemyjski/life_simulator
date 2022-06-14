import 'package:auto_route/auto_route.dart';
import 'package:life_simulator/app/bank/bank_screen.dart';
import 'package:life_simulator/app/income/income_screen.dart';
import 'package:life_simulator/app/job/job_screen.dart';
import 'package:life_simulator/app/learning/learning_screen.dart';
import 'package:life_simulator/app/medicines/medicines_screen.dart';
import 'package:life_simulator/app/personality/personality_screen.dart';
import 'package:life_simulator/app/settings/screens/settings_screen.dart';
import 'package:life_simulator/app/time_spend/time_spend_screen.dart';

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
    AutoRoute(page: HouseScreen),
    AutoRoute(page: CarScreen),
    AutoRoute(page: BankScreen),
    AutoRoute(page: MedicinesScreen),
  ],
)
class $AppRouter {}
