import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:life_simulator/app/personality/cubit/transport/transport_cubit.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app/date/cubit/date_cubit.dart';
import 'app/income/cubit/income_cubit.dart';
import 'app/job/cubit/job_cubit.dart';
import 'app/learning/cubit/learning_cubit.dart';
import 'app/money/cubit/money_cubit.dart';
import 'app/personality/cubit/house/house_cubit.dart';
import 'app/personality/cubit/meal/meal_cubit.dart';
import 'app/save/save_cubit.dart';
import 'app/settings/cubit/dark_mode_cubit.dart';
import 'app/skills/cubit/skills_cubit.dart';
import 'app/stats/cubit/stats_cubit.dart';
import 'app/time_spend/cubit/time_spend_cubit.dart';
import 'config/injectable/injection.dart';
import 'config/routes/routes.gr.dart';
import 'config/themes/custom_theme.dart';
import 'constants/constants.dart';
import 'utilities/utilities.dart';

void main() {
  HydratedBlocOverrides.runZoned(
    () => runApp(
      EasyLocalization(
        useOnlyLangCode: true,
        supportedLocales: [
          Locale('en'),
          Locale('pl'),
        ],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        child: MyApp(),
      ),
    ),
    blocObserver: SimpleBlocObserver(),
    createStorage: () async {
      WidgetsFlutterBinding.ensureInitialized();
      EasyLocalization.ensureInitialized();
      configureDependencies(Env.dev);
      setPathUrlStrategy();
      return HydratedStorage.build(
        storageDirectory:
            kIsWeb ? HydratedStorage.webStorageDirectory : await getTemporaryDirectory(),
      );
    },
  );
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();

    return MultiBlocProvider(
      providers: [
        BlocProvider<DarkModeCubit>(
          lazy: false,
          create: (_) => getIt<DarkModeCubit>(),
        ),
        BlocProvider<SaveCubit>(
          lazy: false,
          create: (_) => getIt<SaveCubit>(),
        ),
      ],
      child: Builder(builder: (context) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => getIt<DateCubit>(),
            ),
            BlocProvider(
              create: (_) => getIt<StatsCubit>(),
            ),
            BlocProvider(
              create: (_) => getIt<SkillsCubit>(),
            ),
            BlocProvider(
              create: (_) => getIt<IncomeCubit>(),
            ),
            BlocProvider(
              create: (_) => getIt<MoneyCubit>(),
            ),
            BlocProvider(
              create: (_) => getIt<JobCubit>(),
            ),
            BlocProvider(
              create: (_) => getIt<TimeSpendCubit>(),
            ),
            BlocProvider(
              create: (_) => getIt<LearningCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<MealCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<HouseCubit>(),
            ),
            BlocProvider(
              lazy: false,
              create: (_) => getIt<TransportCubit>(),
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
            darkTheme: CustomTheme.darkTheme,
            themeMode: context.watch<DarkModeCubit>().state ? ThemeMode.dark : ThemeMode.light,
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
