// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/bank/cubit/deposit/deposit_cubit.dart' as _i16;
import '../../app/bank/cubit/loan/loan_cubit.dart' as _i5;
import '../../app/date/cubit/date_cubit.dart' as _i15;
import '../../app/income/cubit/income_cubit.dart' as _i10;
import '../../app/job/cubit/job_cubit.dart' as _i11;
import '../../app/learning/cubit/learning_cubit.dart' as _i12;
import '../../app/money/cubit/money_cubit.dart' as _i9;
import '../../app/personality/cubit/house/house_cubit.dart' as _i17;
import '../../app/personality/cubit/meal/meal_cubit.dart' as _i13;
import '../../app/personality/cubit/transport/transport_cubit.dart' as _i14;
import '../../app/rules/cubit/rules_cubit.dart' as _i19;
import '../../app/save/save_cubit.dart' as _i6;
import '../../app/settings/cubit/dark_mode_cubit.dart' as _i3;
import '../../app/settings/cubit/day_setting_cubit.dart' as _i4;
import '../../app/skills/cubit/skills_cubit.dart' as _i7;
import '../../app/stats/cubit/stats_cubit.dart' as _i18;
import '../../app/time_spend/cubit/time_spend_cubit.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DarkModeCubit>(() => _i3.DarkModeCubit());
  gh.lazySingleton<_i4.DaySettingCubit>(() => _i4.DaySettingCubit());
  gh.lazySingleton<_i5.LoanCubit>(() => _i5.LoanCubit());
  gh.lazySingleton<_i6.SaveCubit>(() => _i6.SaveCubit());
  gh.lazySingleton<_i7.SkillsCubit>(
      () => _i7.SkillsCubit(saveCubit: get<_i6.SaveCubit>()));
  gh.lazySingleton<_i8.TimeSpendCubit>(
      () => _i8.TimeSpendCubit(saveCubit: get<_i6.SaveCubit>()));
  gh.lazySingleton<_i9.MoneyCubit>(
      () => _i9.MoneyCubit(saveCubit: get<_i6.SaveCubit>()));
  gh.lazySingleton<_i10.IncomeCubit>(() => _i10.IncomeCubit(
      moneyCubit: get<_i9.MoneyCubit>(), saveCubit: get<_i6.SaveCubit>()));
  gh.lazySingleton<_i11.JobCubit>(() => _i11.JobCubit(
      saveCubit: get<_i6.SaveCubit>(),
      incomeCubit: get<_i10.IncomeCubit>(),
      timeSpendCubit: get<_i8.TimeSpendCubit>(),
      skillsCubit: get<_i7.SkillsCubit>(),
      moneyCubit: get<_i9.MoneyCubit>()));
  gh.lazySingleton<_i12.LearningCubit>(() => _i12.LearningCubit(
      saveCubit: get<_i6.SaveCubit>(),
      skillsCubit: get<_i7.SkillsCubit>(),
      moneyCubit: get<_i9.MoneyCubit>()));
  gh.lazySingleton<_i13.MealCubit>(() => _i13.MealCubit(
      incomeCubit: get<_i10.IncomeCubit>(),
      saveCubit: get<_i6.SaveCubit>(),
      timeSpendCubit: get<_i8.TimeSpendCubit>()));
  gh.lazySingleton<_i14.TransportCubit>(() => _i14.TransportCubit(
      moneyCubit: get<_i9.MoneyCubit>(),
      incomeCubit: get<_i10.IncomeCubit>(),
      saveCubit: get<_i6.SaveCubit>(),
      timeSpendCubit: get<_i8.TimeSpendCubit>()));
  gh.lazySingleton<_i15.DateCubit>(() => _i15.DateCubit(
      saveCubit: get<_i6.SaveCubit>(),
      timeSpendCubit: get<_i8.TimeSpendCubit>(),
      learningCubit: get<_i12.LearningCubit>(),
      incomeCubit: get<_i10.IncomeCubit>(),
      daySettingCubit: get<_i4.DaySettingCubit>()));
  gh.lazySingleton<_i16.DepositCubit>(() => _i16.DepositCubit(
      dateCubit: get<_i15.DateCubit>(), saveCubit: get<_i6.SaveCubit>()));
  gh.lazySingleton<_i17.HouseCubit>(() => _i17.HouseCubit(
      moneyCubit: get<_i9.MoneyCubit>(),
      incomeCubit: get<_i10.IncomeCubit>(),
      saveCubit: get<_i6.SaveCubit>(),
      timeSpendCubit: get<_i8.TimeSpendCubit>()));
  gh.lazySingleton<_i18.StatsCubit>(() => _i18.StatsCubit(
      timeSpend: get<_i8.TimeSpendCubit>(),
      saveCubit: get<_i6.SaveCubit>(),
      dateCubit: get<_i15.DateCubit>()));
  gh.lazySingleton<_i19.RulesCubit>(() => _i19.RulesCubit(
      moneyCubit: get<_i9.MoneyCubit>(),
      statsCubit: get<_i18.StatsCubit>(),
      saveCubit: get<_i6.SaveCubit>()));
  return get;
}
