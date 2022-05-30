// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/date/cubit/date_cubit.dart' as _i14;
import '../../app/income/cubit/income_cubit.dart' as _i9;
import '../../app/job/cubit/job_cubit.dart' as _i10;
import '../../app/learning/cubit/learning_cubit.dart' as _i11;
import '../../app/money/cubit/money_cubit.dart' as _i7;
import '../../app/personality/cubit/house/house_cubit.dart' as _i15;
import '../../app/personality/cubit/meal/meal_cubit.dart' as _i12;
import '../../app/personality/cubit/transport/transport_cubit.dart' as _i13;
import '../../app/save/save_cubit.dart' as _i4;
import '../../app/settings/cubit/dark_mode_cubit.dart' as _i3;
import '../../app/skills/cubit/skills_cubit.dart' as _i5;
import '../../app/stats/cubit/stats_cubit.dart' as _i8;
import '../../app/time_spend/cubit/time_spend_cubit.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DarkModeCubit>(() => _i3.DarkModeCubit());
  gh.lazySingleton<_i4.SaveCubit>(() => _i4.SaveCubit());
  gh.lazySingleton<_i5.SkillsCubit>(
      () => _i5.SkillsCubit(saveCubit: get<_i4.SaveCubit>()));
  gh.lazySingleton<_i6.TimeSpendCubit>(
      () => _i6.TimeSpendCubit(saveCubit: get<_i4.SaveCubit>()));
  gh.lazySingleton<_i7.MoneyCubit>(
      () => _i7.MoneyCubit(saveCubit: get<_i4.SaveCubit>()));
  gh.lazySingleton<_i8.StatsCubit>(() => _i8.StatsCubit(
      timeSpend: get<_i6.TimeSpendCubit>(), saveCubit: get<_i4.SaveCubit>()));
  gh.lazySingleton<_i9.IncomeCubit>(() => _i9.IncomeCubit(
      moneyCubit: get<_i7.MoneyCubit>(), saveCubit: get<_i4.SaveCubit>()));
  gh.lazySingleton<_i10.JobCubit>(() => _i10.JobCubit(
      saveCubit: get<_i4.SaveCubit>(),
      incomeCubit: get<_i9.IncomeCubit>(),
      timeSpendCubit: get<_i6.TimeSpendCubit>(),
      skillsCubit: get<_i5.SkillsCubit>(),
      moneyCubit: get<_i7.MoneyCubit>()));
  gh.lazySingleton<_i11.LearningCubit>(() => _i11.LearningCubit(
      saveCubit: get<_i4.SaveCubit>(),
      skillsCubit: get<_i5.SkillsCubit>(),
      moneyCubit: get<_i7.MoneyCubit>()));
  gh.lazySingleton<_i12.MealCubit>(() => _i12.MealCubit(
      incomeCubit: get<_i9.IncomeCubit>(), saveCubit: get<_i4.SaveCubit>()));
  gh.lazySingleton<_i13.TransportCubit>(() => _i13.TransportCubit(
      moneyCubit: get<_i7.MoneyCubit>(),
      incomeCubit: get<_i9.IncomeCubit>(),
      saveCubit: get<_i4.SaveCubit>()));
  gh.lazySingleton<_i14.DateCubit>(() => _i14.DateCubit(
      saveCubit: get<_i4.SaveCubit>(),
      timeSpendCubit: get<_i6.TimeSpendCubit>(),
      statsCubit: get<_i8.StatsCubit>(),
      learningCubit: get<_i11.LearningCubit>(),
      incomeCubit: get<_i9.IncomeCubit>()));
  gh.lazySingleton<_i15.HouseCubit>(() => _i15.HouseCubit(
      moneyCubit: get<_i7.MoneyCubit>(),
      incomeCubit: get<_i9.IncomeCubit>(),
      saveCubit: get<_i4.SaveCubit>()));
  return get;
}
