// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/bank/cubit/deposit/deposit_cubit.dart' as _i12;
import '../../app/bank/cubit/loan/loan_cubit.dart' as _i16;
import '../../app/database/cubit/database_cubit.dart' as _i8;
import '../../app/date/cubit/date_cubit.dart' as _i11;
import '../../app/event/cubit/event_cubit.dart' as _i13;
import '../../app/income/cubit/income_cubit.dart' as _i14;
import '../../app/job/cubit/job_cubit.dart' as _i15;
import '../../app/learning/cubit/learning_cubit.dart' as _i10;
import '../../app/medicines/cubit/medicines_cubit.dart' as _i18;
import '../../app/money/cubit/money_cubit.dart' as _i9;
import '../../app/new_game/new_game_cubit.dart' as _i5;
import '../../app/personality/cubit/house/house_cubit.dart' as _i21;
import '../../app/personality/cubit/meal/meal_cubit.dart' as _i17;
import '../../app/personality/cubit/transport/transport_cubit.dart' as _i20;
import '../../app/rules/cubit/rules_cubit.dart' as _i22;
import '../../app/settings/cubit/dark_mode_cubit.dart' as _i3;
import '../../app/settings/cubit/day_setting_cubit.dart' as _i4;
import '../../app/skills/cubit/skills_cubit.dart' as _i6;
import '../../app/stats/cubit/stats_cubit.dart' as _i19;
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
  gh.lazySingleton<_i8.DatabaseCubit>(
      () => _i8.DatabaseCubit(get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i9.MoneyCubit>(
      () => _i9.MoneyCubit(get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i10.LearningCubit>(() => _i10.LearningCubit(
      get<_i5.NewGameCubit>(),
      get<_i8.DatabaseCubit>(),
      get<_i6.SkillsCubit>(),
      get<_i9.MoneyCubit>()));
  gh.lazySingleton<_i11.DateCubit>(() => _i11.DateCubit(
      newGameCubit: get<_i5.NewGameCubit>(),
      timeSpendCubit: get<_i7.TimeSpendCubit>(),
      learningCubit: get<_i10.LearningCubit>(),
      daySettingCubit: get<_i4.DaySettingCubit>()));
  gh.lazySingleton<_i12.DepositCubit>(() => _i12.DepositCubit(
      dateCubit: get<_i11.DateCubit>(), newGameCubit: get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i13.EventCubit>(() => _i13.EventCubit(
      get<_i8.DatabaseCubit>(),
      get<_i5.NewGameCubit>(),
      get<_i11.DateCubit>(),
      get<_i9.MoneyCubit>()));
  gh.lazySingleton<_i14.IncomeCubit>(() => _i14.IncomeCubit(
      get<_i9.MoneyCubit>(), get<_i5.NewGameCubit>(), get<_i11.DateCubit>()));
  gh.lazySingleton<_i15.JobCubit>(() => _i15.JobCubit(
      get<_i5.NewGameCubit>(),
      get<_i14.IncomeCubit>(),
      get<_i7.TimeSpendCubit>(),
      get<_i6.SkillsCubit>(),
      get<_i9.MoneyCubit>(),
      get<_i8.DatabaseCubit>()));
  gh.lazySingleton<_i16.LoanCubit>(() => _i16.LoanCubit(
      get<_i9.MoneyCubit>(), get<_i11.DateCubit>(), get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i17.MealCubit>(() => _i17.MealCubit(
      get<_i14.IncomeCubit>(),
      get<_i5.NewGameCubit>(),
      get<_i7.TimeSpendCubit>(),
      get<_i8.DatabaseCubit>()));
  gh.lazySingleton<_i18.MedicinesCubit>(() => _i18.MedicinesCubit(
      get<_i9.MoneyCubit>(),
      get<_i5.NewGameCubit>(),
      get<_i11.DateCubit>(),
      get<_i8.DatabaseCubit>()));
  gh.lazySingleton<_i19.StatsCubit>(() => _i19.StatsCubit(
      get<_i7.TimeSpendCubit>(),
      get<_i5.NewGameCubit>(),
      get<_i11.DateCubit>(),
      get<_i13.EventCubit>(),
      get<_i18.MedicinesCubit>()));
  gh.lazySingleton<_i20.TransportCubit>(() => _i20.TransportCubit(
      get<_i9.MoneyCubit>(),
      get<_i14.IncomeCubit>(),
      get<_i5.NewGameCubit>(),
      get<_i7.TimeSpendCubit>(),
      get<_i8.DatabaseCubit>()));
  gh.lazySingleton<_i21.HouseCubit>(() => _i21.HouseCubit(
      get<_i8.DatabaseCubit>(),
      get<_i9.MoneyCubit>(),
      get<_i14.IncomeCubit>(),
      get<_i5.NewGameCubit>(),
      get<_i7.TimeSpendCubit>()));
  gh.lazySingleton<_i22.RulesCubit>(() => _i22.RulesCubit(
      moneyCubit: get<_i9.MoneyCubit>(),
      statsCubit: get<_i19.StatsCubit>(),
      saveCubit: get<_i5.NewGameCubit>()));
  return get;
}
