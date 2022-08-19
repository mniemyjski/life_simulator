// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/bank/cubit/deposit/deposit_cubit.dart' as _i10;
import '../../app/bank/cubit/loan/loan_cubit.dart' as _i23;
import '../../app/database/cubit/database_cubit.dart' as _i8;
import '../../app/date/cubit/date_cubit.dart' as _i9;
import '../../app/event/cubit/event_cubit.dart' as _i17;
import '../../app/freelance/cubit/done/freelance_done_cubit.dart' as _i12;
import '../../app/freelance/cubit/fame/fame_cubit.dart' as _i11;
import '../../app/freelance/cubit/job/freelance_job_cubit.dart' as _i19;
import '../../app/income/cubit/income_cubit.dart' as _i20;
import '../../app/job/cubit/job_cubit.dart' as _i21;
import '../../app/learning/cubit/learning_cubit.dart' as _i22;
import '../../app/medicines/cubit/medicines_cubit.dart' as _i24;
import '../../app/money/cubit/money_cubit.dart' as _i13;
import '../../app/money/cubit/transactions/transactions_cubit.dart' as _i7;
import '../../app/new_game/new_game_cubit.dart' as _i5;
import '../../app/personality/cubit/foods/foods_cubit.dart' as _i30;
import '../../app/personality/cubit/house/house_cubit.dart' as _i31;
import '../../app/personality/cubit/transport/transport_cubit.dart' as _i27;
import '../../app/real_assets/cubit/assets/assets_cubit.dart' as _i28;
import '../../app/real_assets/cubit/build/build_asset_cubit.dart' as _i29;
import '../../app/real_assets/cubit/buy/buy_asset_cubit.dart' as _i16;
import '../../app/real_assets/cubit/tenant/tenants_cubit.dart' as _i26;
import '../../app/rules/cubit/rules_cubit.dart' as _i32;
import '../../app/settings/cubit/dark_mode_cubit.dart' as _i3;
import '../../app/settings/cubit/day_setting_cubit.dart' as _i4;
import '../../app/skills/cubit/skills_cubit.dart' as _i6;
import '../../app/stats/cubit/stats_cubit.dart' as _i25;
import '../../app/stock_market/cubit/exchanges/exchanges_cubit.dart' as _i18;
import '../../app/stock_market/cubit/stock_market/stock_market_cubit.dart'
    as _i14;
import '../../app/time_spend/cubit/time_spend_cubit.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DarkModeCubit>(() => _i3.DarkModeCubit());
  gh.lazySingleton<_i4.DaySettingCubit>(() => _i4.DaySettingCubit());
  gh.lazySingleton<_i5.NewGameCubit>(() => _i5.NewGameCubit());
  gh.lazySingleton<_i6.SkillsCubit>(
      () => _i6.SkillsCubit(get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i7.TransactionsCubit>(
      () => _i7.TransactionsCubit(get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i8.DatabaseCubit>(
      () => _i8.DatabaseCubit(get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i9.DateCubit>(
      () => _i9.DateCubit(get<_i5.NewGameCubit>(), get<_i4.DaySettingCubit>()));
  gh.lazySingleton<_i10.DepositCubit>(
      () => _i10.DepositCubit(get<_i9.DateCubit>(), get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i11.FameCubit>(
      () => _i11.FameCubit(get<_i5.NewGameCubit>(), get<_i9.DateCubit>()));
  gh.lazySingleton<_i12.FreelanceDoneCubit>(() => _i12.FreelanceDoneCubit(
      get<_i5.NewGameCubit>(), get<_i9.DateCubit>(), get<_i11.FameCubit>()));
  gh.lazySingleton<_i13.MoneyCubit>(() => _i13.MoneyCubit(
      get<_i5.NewGameCubit>(),
      get<_i7.TransactionsCubit>(),
      get<_i9.DateCubit>()));
  gh.lazySingleton<_i14.StockMarketCubit>(() => _i14.StockMarketCubit(
      get<_i5.NewGameCubit>(), get<_i9.DateCubit>(), get<_i8.DatabaseCubit>()));
  gh.lazySingleton<_i15.TimeSpendCubit>(
      () => _i15.TimeSpendCubit(get<_i5.NewGameCubit>(), get<_i9.DateCubit>()));
  gh.lazySingleton<_i16.BuyAssetCubit>(() =>
      _i16.BuyAssetCubit(get<_i5.NewGameCubit>(), get<_i8.DatabaseCubit>()));
  gh.lazySingleton<_i17.EventCubit>(() => _i17.EventCubit(
      get<_i5.NewGameCubit>(),
      get<_i8.DatabaseCubit>(),
      get<_i9.DateCubit>(),
      get<_i13.MoneyCubit>()));
  gh.lazySingleton<_i18.ExchangesCubit>(() => _i18.ExchangesCubit(
      get<_i5.NewGameCubit>(),
      get<_i9.DateCubit>(),
      get<_i14.StockMarketCubit>(),
      get<_i13.MoneyCubit>()));
  gh.lazySingleton<_i19.FreelanceJobCubit>(() => _i19.FreelanceJobCubit(
      get<_i5.NewGameCubit>(),
      get<_i9.DateCubit>(),
      get<_i15.TimeSpendCubit>(),
      get<_i12.FreelanceDoneCubit>()));
  gh.lazySingleton<_i20.IncomeCubit>(() => _i20.IncomeCubit(
      get<_i13.MoneyCubit>(), get<_i5.NewGameCubit>(), get<_i9.DateCubit>()));
  gh.lazySingleton<_i21.JobCubit>(() => _i21.JobCubit(
      get<_i5.NewGameCubit>(),
      get<_i8.DatabaseCubit>(),
      get<_i20.IncomeCubit>(),
      get<_i15.TimeSpendCubit>(),
      get<_i6.SkillsCubit>(),
      get<_i13.MoneyCubit>()));
  gh.lazySingleton<_i22.LearningCubit>(() => _i22.LearningCubit(
      get<_i5.NewGameCubit>(),
      get<_i8.DatabaseCubit>(),
      get<_i6.SkillsCubit>(),
      get<_i13.MoneyCubit>(),
      get<_i15.TimeSpendCubit>(),
      get<_i9.DateCubit>()));
  gh.lazySingleton<_i23.LoanCubit>(() => _i23.LoanCubit(
      get<_i13.MoneyCubit>(), get<_i9.DateCubit>(), get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i24.MedicinesCubit>(() => _i24.MedicinesCubit(
      get<_i13.MoneyCubit>(),
      get<_i5.NewGameCubit>(),
      get<_i8.DatabaseCubit>(),
      get<_i9.DateCubit>()));
  gh.lazySingleton<_i25.StatsCubit>(() => _i25.StatsCubit(
      get<_i5.NewGameCubit>(),
      get<_i15.TimeSpendCubit>(),
      get<_i17.EventCubit>(),
      get<_i24.MedicinesCubit>(),
      get<_i9.DateCubit>()));
  gh.lazySingleton<_i26.TenantsCubit>(() => _i26.TenantsCubit(
      get<_i5.NewGameCubit>(),
      get<_i8.DatabaseCubit>(),
      get<_i20.IncomeCubit>()));
  gh.lazySingleton<_i27.TransportCubit>(() => _i27.TransportCubit(
      get<_i13.MoneyCubit>(),
      get<_i8.DatabaseCubit>(),
      get<_i20.IncomeCubit>(),
      get<_i15.TimeSpendCubit>(),
      get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i28.AssetsCubit>(() => _i28.AssetsCubit(
      get<_i5.NewGameCubit>(),
      get<_i13.MoneyCubit>(),
      get<_i16.BuyAssetCubit>(),
      get<_i9.DateCubit>(),
      get<_i8.DatabaseCubit>(),
      get<_i26.TenantsCubit>()));
  gh.lazySingleton<_i29.BuildAssetCubit>(() => _i29.BuildAssetCubit(
      get<_i5.NewGameCubit>(),
      get<_i13.MoneyCubit>(),
      get<_i28.AssetsCubit>(),
      get<_i9.DateCubit>()));
  gh.lazySingleton<_i30.FoodsCubit>(() => _i30.FoodsCubit(
      get<_i20.IncomeCubit>(),
      get<_i8.DatabaseCubit>(),
      get<_i5.NewGameCubit>(),
      get<_i15.TimeSpendCubit>()));
  gh.lazySingleton<_i31.HouseCubit>(() => _i31.HouseCubit(
      get<_i8.DatabaseCubit>(),
      get<_i13.MoneyCubit>(),
      get<_i15.TimeSpendCubit>(),
      get<_i20.IncomeCubit>(),
      get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i32.RulesCubit>(() => _i32.RulesCubit(
      get<_i13.MoneyCubit>(), get<_i25.StatsCubit>(), get<_i5.NewGameCubit>()));
  return get;
}
