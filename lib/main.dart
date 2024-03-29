import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:richeable/app/loading/cubit/loading_cubit.dart';
import 'package:richeable/app/settings/cubit/audio_cubit.dart';
import 'package:richeable/config/injectable/app_module.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app/assets/cubit/assets/assets_cubit.dart';
import 'app/assets/cubit/build/build_asset_cubit.dart';
import 'app/assets/cubit/buy/buy_asset_cubit.dart';
import 'app/assets/cubit/tenant/tenants_cubit.dart';
import 'app/bank/cubit/deposit/deposit_cubit.dart';
import 'app/bank/cubit/loan/loan_cubit.dart';
import 'app/business/cubit/businesses_list/businesses_cubit.dart';
import 'app/database/cubit/database_cubit.dart';
import 'app/date/cubit/date_cubit.dart';
import 'app/event/cubit/event_cubit.dart';
import 'app/freelance/cubit/job/freelance_job_cubit.dart';
import 'app/job/cubit/job_cubit.dart';
import 'app/learning/cubit/learning_cubit.dart';
import 'app/medicines/cubit/medicines_cubit.dart';
import 'app/money/cubit/income/income_cubit.dart';
import 'app/money/cubit/money/money_cubit.dart';
import 'app/new_game/new_game_cubit.dart';
import 'app/personality/cubit/food/food_cubit.dart';
import 'app/personality/cubit/house/house_cubit.dart';
import 'app/personality/cubit/transport/transport_cubit.dart';
import 'app/rules/cubit/rules_cubit.dart';
import 'app/settings/cubit/day_setting_cubit.dart';
import 'app/stats/cubit/stats_cubit.dart';
import 'app/tutorial/cubit/tutorial_cubit.dart';
import 'config/injectable/injection.dart';
import 'config/routes/routes.gr.dart';
import 'config/themes/custom_theme.dart';
import 'constants/constants.dart';
import 'utilities/utilities.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  MobileAds.instance.initialize();
  await configureDependencies(Env.dev);
  await getIt<AppModule>().init();
  setPathUrlStrategy();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb ? HydratedStorage.webStorageDirectory : await getTemporaryDirectory(),
  );

  Bloc.observer = SimpleBlocObserver();

  runApp(
    EasyLocalization(
      useOnlyLangCode: true,
      supportedLocales: const [
        Locale('en'),
        // Locale('pl'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider<AudioCubit>(
          lazy: false,
          create: (_) => getIt<AudioCubit>(),
        ),
        BlocProvider<DaySettingCubit>(
          lazy: false,
          create: (_) => getIt<DaySettingCubit>(),
        ),
        BlocProvider(
          lazy: false,
          create: (_) => getIt<TutorialCubit>(),
        ),
        BlocProvider<NewGameCubit>(
          lazy: false,
          create: (_) => getIt<NewGameCubit>(),
        ),
        BlocProvider(
          lazy: false,
          create: (_) => getIt<DatabaseCubit>(),
        ),
        BlocProvider(
          lazy: false,
          create: (_) => getIt<LoadingCubit>(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              lazy: false,
              create: (_) => getIt<DateCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<StatsCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<MoneyCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<IncomeCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<JobCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<LearningCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<FoodCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<HouseCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<TransportCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<RulesCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<DepositCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<LoanCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<EventCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<MedicinesCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<TenantsCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<AssetsCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<BuyAssetCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<BuildAssetCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<FreelanceJobCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<BusinessesCubit>(),
            ),
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            builder: (context, widget) => _build(widget, context, botToastBuilder),
            title: Strings.app_name(),
            locale: context.locale,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            theme: CustomTheme.lightTheme,
            themeMode: ThemeMode.light,
            routerDelegate: _appRouter.delegate(
              navigatorObservers: () => [
                BotToastNavigatorObserver(),
              ],
            ),
            routeInformationParser: _appRouter.defaultRouteParser(),
          ),
        );
      }),
    );
  }

  Widget _build(Widget? widget, BuildContext context, TransitionBuilder botToastBuilder) {
    widget = ResponsiveWrapper.builder(
      ClampingScrollWrapper.builder(context, widget!),
      breakpoints: const [
        ResponsiveBreakpoint.resize(350, name: MOBILE),
        ResponsiveBreakpoint.autoScale(600, name: TABLET),
        ResponsiveBreakpoint.resize(800, name: DESKTOP),
        ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
      ],
    );
    widget = botToastBuilder(context, widget);
    return widget;
  }
}
