import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:richeable/app/business/business_transactions_screen.dart';
import 'package:richeable/app/business/product_list_screen.dart';
import 'package:richeable/app/business/upgrade_screen.dart';

import '../../app/assets/asset_screen.dart';
import '../../app/assets/assets_screen.dart';
import '../../app/assets/build_assets_screen.dart';
import '../../app/assets/buy_assets_screen.dart';
import '../../app/assets/tenants_screen.dart';
import '../../app/bank/bank_screen.dart';
import '../../app/business/business_screen.dart';
import '../../app/business/businesses_screen.dart';
import '../../app/business/employees_screen.dart';
import '../../app/business/human_resources_screen.dart';
import '../../app/business/product_details_screen.dart';
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
import '../../app/skills/cubit/skills_cubit.dart';
import '../../app/stock_market/instrument_screen.dart';
import '../../app/stock_market/stock_market_screen.dart';
import '../../app/time_spend/cubit/time_spend_cubit.dart';
import '../../app/time_spend/time_spend_screen.dart';
import '../injectable/injection.dart';

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
      name: 'GameRouter',
      page: EmptyScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
      children: [
        AutoRoute(
          page: GameScreen,
          // transitionsBuilder: TransitionsBuilders.zoomIn,
          // durationInMilliseconds: 300,
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

        // CustomRoute(
        //     page: BusinessScreen,
        //     transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        //     durationInMilliseconds: 300,
        //     children: [
        //       CustomRoute(
        //         page: BusinessScreen,
        //         transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        //         durationInMilliseconds: 300,
        //       ),
        //       CustomRoute(
        //         page: BusinessTransactionsScreen,
        //         transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        //         durationInMilliseconds: 300,
        //       ),
        //       CustomRoute(
        //         page: UpgradeScreen,
        //         transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        //         durationInMilliseconds: 300,
        //       ),
        //       CustomRoute(
        //         page: ProductsScreen,
        //         transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        //         durationInMilliseconds: 300,
        //       ),
        //       CustomRoute(
        //         page: EmployeesScreen,
        //         transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        //         durationInMilliseconds: 300,
        //       ),
        //       CustomRoute(
        //         page: HumanResourcesScreen,
        //         transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        //         durationInMilliseconds: 300,
        //       ),
        //       CustomRoute(
        //         page: ProductScreen,
        //         transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        //         durationInMilliseconds: 300,
        //       ),
        //     ]),

        CustomRoute(
          page: BusinessesScreen,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: BusinessScreen,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: BusinessTransactionsScreen,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: UpgradeScreen,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: ProductListScreen,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: EmployeesScreen,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: HumanResourcesScreen,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 300,
        ),
        CustomRoute(
          page: ProductDetailsScreen,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          durationInMilliseconds: 300,
        ),
      ],
    ),
  ],
)
class $AppRouter {}

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (_) => getIt<TimeSpendCubit>(),
        ),
        BlocProvider(
          lazy: false,
          create: (_) => getIt<SkillsCubit>(),
        ),
      ],
      child: AutoRouter(),
    );
  }
}
