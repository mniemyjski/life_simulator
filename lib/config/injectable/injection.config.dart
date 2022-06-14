// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/bank/cubit/deposit/deposit_cubit.dart' as _i11;
import '../../app/bank/cubit/loan/loan_cubit.dart' as _i15;
import '../../app/date/cubit/date_cubit.dart' as _i10;
import '../../app/event/cubit/event_cubit.dart' as _i12;
import '../../app/income/cubit/income_cubit.dart' as _i13;
import '../../app/job/cubit/job_cubit.dart' as _i14;
import '../../app/learning/cubit/learning_cubit.dart' as _i9;
import '../../app/money/cubit/money_cubit.dart' as _i8;
import '../../app/new_game/new_game_cubit.dart' as _i5;
import '../../app/personality/cubit/house/house_cubit.dart' as _i19;
import '../../app/personality/cubit/meal/meal_cubit.dart' as _i16;
import '../../app/personality/cubit/transport/transport_cubit.dart' as _i18;
import '../../app/rules/cubit/rules_cubit.dart' as _i20;
import '../../app/settings/cubit/dark_mode_cubit.dart' as _i3;
import '../../app/settings/cubit/day_setting_cubit.dart' as _i4;
import '../../app/skills/cubit/skills_cubit.dart' as _i6;
import '../../app/stats/cubit/stats_cubit.dart' as _i17;
import '../../app/time_spend/cubit/time_spend_cubit.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DarkModeCubit>(() => _i3.DarkModeCubit());
  gh.lazySingleton<_i4.DaySettingCubit>(() => _i4.DaySettingCubit());
  gh.lazySingleton<_i5.NewGameCubit>(() => _i5.NewGameCubit());
  gh.lazySingleton<_i6.SkillsCubit>(
      () => _i6.SkillsCubit(newGameCubit: get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i7.TimeSpendCubit>(
      () => _i7.TimeSpendCubit(newGameCubit: get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i8.MoneyCubit>(
      () => _i8.MoneyCubit(newGameCubit: get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i9.LearningCubit>(() => _i9.LearningCubit(
      newGameCubit: get<_i5.NewGameCubit>(),
      skillsCubit: get<_i6.SkillsCubit>(),
      moneyCubit: get<_i8.MoneyCubit>()));
  gh.lazySingleton<_i10.DateCubit>(() => _i10.DateCubit(
      newGameCubit: get<_i5.NewGameCubit>(),
      timeSpendCubit: get<_i7.TimeSpendCubit>(),
      learningCubit: get<_i9.LearningCubit>(),
      daySettingCubit: get<_i4.DaySettingCubit>()));
  gh.lazySingleton<_i11.DepositCubit>(() => _i11.DepositCubit(
      dateCubit: get<_i10.DateCubit>(), newGameCubit: get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i12.EventCubit>(
      () => _i12.EventCubit(get<_i5.NewGameCubit>(), get<_i10.DateCubit>()));
  gh.lazySingleton<_i13.IncomeCubit>(() => _i13.IncomeCubit(
      get<_i8.MoneyCubit>(), get<_i5.NewGameCubit>(), get<_i10.DateCubit>()));
  gh.lazySingleton<_i14.JobCubit>(() => _i14.JobCubit(
      newGameCubit: get<_i5.NewGameCubit>(),
      incomeCubit: get<_i13.IncomeCubit>(),
      timeSpendCubit: get<_i7.TimeSpendCubit>(),
      skillsCubit: get<_i6.SkillsCubit>(),
      moneyCubit: get<_i8.MoneyCubit>()));
  gh.lazySingleton<_i15.LoanCubit>(() => _i15.LoanCubit(
      get<_i8.MoneyCubit>(), get<_i10.DateCubit>(), get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i16.MealCubit>(() => _i16.MealCubit(
      incomeCubit: get<_i13.IncomeCubit>(),
      newGameCubit: get<_i5.NewGameCubit>(),
      timeSpendCubit: get<_i7.TimeSpendCubit>()));
  gh.lazySingleton<_i17.StatsCubit>(() => _i17.StatsCubit(
      timeSpend: get<_i7.TimeSpendCubit>(),
      saveCubit: get<_i5.NewGameCubit>(),
      dateCubit: get<_i10.DateCubit>()));
  gh.lazySingleton<_i18.TransportCubit>(() => _i18.TransportCubit(
      moneyCubit: get<_i8.MoneyCubit>(),
      incomeCubit: get<_i13.IncomeCubit>(),
      newGameCubit: get<_i5.NewGameCubit>(),
      timeSpendCubit: get<_i7.TimeSpendCubit>()));
  gh.lazySingleton<_i19.HouseCubit>(() => _i19.HouseCubit(
      moneyCubit: get<_i8.MoneyCubit>(),
      incomeCubit: get<_i13.IncomeCubit>(),
      newGameCubit: get<_i5.NewGameCubit>(),
      timeSpendCubit: get<_i7.TimeSpendCubit>()));
  gh.lazySingleton<_i20.RulesCubit>(() => _i20.RulesCubit(
      moneyCubit: get<_i8.MoneyCubit>(),
      statsCubit: get<_i17.StatsCubit>(),
      saveCubit: get<_i5.NewGameCubit>()));
  return get;
}
