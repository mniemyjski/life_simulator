// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/assets/cubit/assets/assets_cubit.dart' as _i29;
import '../../app/assets/cubit/build/build_asset_cubit.dart' as _i30;
import '../../app/assets/cubit/buy/buy_asset_cubit.dart' as _i16;
import '../../app/assets/cubit/tenant/tenants_cubit.dart' as _i27;
import '../../app/bank/cubit/deposit/deposit_cubit.dart' as _i10;
import '../../app/bank/cubit/loan/loan_cubit.dart' as _i24;
import '../../app/database/cubit/database_cubit.dart' as _i8;
import '../../app/date/cubit/date_cubit.dart' as _i9;
import '../../app/event/cubit/event_cubit.dart' as _i17;
import '../../app/freelance/cubit/done/freelance_done_cubit.dart' as _i19;
import '../../app/freelance/cubit/fame/fame_cubit.dart' as _i11;
import '../../app/freelance/cubit/job/freelance_job_cubit.dart' as _i20;
import '../../app/job/cubit/job_cubit.dart' as _i22;
import '../../app/learning/cubit/learning_cubit.dart' as _i23;
import '../../app/medicines/cubit/medicines_cubit.dart' as _i25;
import '../../app/money/cubit/income/income_cubit.dart' as _i21;
import '../../app/money/cubit/money_cubit.dart' as _i12;
import '../../app/money/cubit/screen_transactions/screen_transactions_cubit.dart'
    as _i13;
import '../../app/money/cubit/transactions/transactions_cubit.dart' as _i7;
import '../../app/new_game/new_game_cubit.dart' as _i5;
import '../../app/personality/cubit/food/food_cubit.dart' as _i31;
import '../../app/personality/cubit/house/house_cubit.dart' as _i32;
import '../../app/personality/cubit/transport/transport_cubit.dart' as _i28;
import '../../app/rules/cubit/rules_cubit.dart' as _i33;
import '../../app/settings/cubit/dark_mode_cubit.dart' as _i3;
import '../../app/settings/cubit/day_setting_cubit.dart' as _i4;
import '../../app/skills/cubit/skills_cubit.dart' as _i6;
import '../../app/stats/cubit/stats_cubit.dart' as _i26;
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
  gh.lazySingleton<_i12.MoneyCubit>(() => _i12.MoneyCubit(
      get<_i5.NewGameCubit>(),
      get<_i7.TransactionsCubit>(),
      get<_i9.DateCubit>()));
  gh.factory<_i13.ScreenTransactionsCubit>(() => _i13.ScreenTransactionsCubit(
      get<_i7.TransactionsCubit>(), get<_i9.DateCubit>()));
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
      get<_i12.MoneyCubit>()));
  gh.lazySingleton<_i18.ExchangesCubit>(() => _i18.ExchangesCubit(
      get<_i5.NewGameCubit>(),
      get<_i9.DateCubit>(),
      get<_i14.StockMarketCubit>(),
      get<_i12.MoneyCubit>()));
  gh.lazySingleton<_i19.FreelanceDoneCubit>(() => _i19.FreelanceDoneCubit(
      get<_i5.NewGameCubit>(),
      get<_i9.DateCubit>(),
      get<_i11.FameCubit>(),
      get<_i12.MoneyCubit>()));
  gh.lazySingleton<_i20.FreelanceJobCubit>(() => _i20.FreelanceJobCubit(
      get<_i5.NewGameCubit>(),
      get<_i9.DateCubit>(),
      get<_i15.TimeSpendCubit>(),
      get<_i19.FreelanceDoneCubit>(),
      get<_i6.SkillsCubit>()));
  gh.lazySingleton<_i21.IncomeCubit>(() => _i21.IncomeCubit(
      get<_i12.MoneyCubit>(), get<_i5.NewGameCubit>(), get<_i9.DateCubit>()));
  gh.lazySingleton<_i22.JobCubit>(() => _i22.JobCubit(
      get<_i5.NewGameCubit>(),
      get<_i21.IncomeCubit>(),
      get<_i15.TimeSpendCubit>(),
      get<_i6.SkillsCubit>(),
      get<_i12.MoneyCubit>(),
      get<_i9.DateCubit>()));
  gh.lazySingleton<_i23.LearningCubit>(() => _i23.LearningCubit(
      get<_i5.NewGameCubit>(),
      get<_i6.SkillsCubit>(),
      get<_i12.MoneyCubit>(),
      get<_i15.TimeSpendCubit>(),
      get<_i9.DateCubit>()));
  gh.lazySingleton<_i24.LoanCubit>(() => _i24.LoanCubit(
      get<_i12.MoneyCubit>(), get<_i9.DateCubit>(), get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i25.MedicinesCubit>(() => _i25.MedicinesCubit(
      get<_i12.MoneyCubit>(),
      get<_i5.NewGameCubit>(),
      get<_i8.DatabaseCubit>(),
      get<_i9.DateCubit>()));
  gh.lazySingleton<_i26.StatsCubit>(() => _i26.StatsCubit(
      get<_i5.NewGameCubit>(),
      get<_i15.TimeSpendCubit>(),
      get<_i17.EventCubit>(),
      get<_i25.MedicinesCubit>(),
      get<_i9.DateCubit>()));
  gh.lazySingleton<_i27.TenantsCubit>(() => _i27.TenantsCubit(
      get<_i5.NewGameCubit>(),
      get<_i8.DatabaseCubit>(),
      get<_i21.IncomeCubit>()));
  gh.lazySingleton<_i28.TransportCubit>(() => _i28.TransportCubit(
      get<_i12.MoneyCubit>(),
      get<_i21.IncomeCubit>(),
      get<_i15.TimeSpendCubit>(),
      get<_i5.NewGameCubit>()));
  gh.lazySingleton<_i29.AssetsCubit>(() => _i29.AssetsCubit(
      get<_i5.NewGameCubit>(),
      get<_i12.MoneyCubit>(),
      get<_i16.BuyAssetCubit>(),
      get<_i9.DateCubit>(),
      get<_i8.DatabaseCubit>(),
      get<_i27.TenantsCubit>()));
  gh.lazySingleton<_i30.BuildAssetCubit>(() => _i30.BuildAssetCubit(
      get<_i5.NewGameCubit>(),
      get<_i12.MoneyCubit>(),
      get<_i29.AssetsCubit>(),
      get<_i9.DateCubit>()));
  gh.lazySingleton<_i31.FoodCubit>(() => _i31.FoodCubit(
      get<_i21.IncomeCubit>(),
      get<_i8.DatabaseCubit>(),
      get<_i5.NewGameCubit>(),
      get<_i15.TimeSpendCubit>()));
  gh.lazySingleton<_i32.HouseCubit>(() => _i32.HouseCubit(
      get<_i12.MoneyCubit>(),
      get<_i15.TimeSpendCubit>(),
      get<_i21.IncomeCubit>(),
      get<_i5.NewGameCubit>(),
      get<_i8.DatabaseCubit>()));
  gh.lazySingleton<_i33.RulesCubit>(() => _i33.RulesCubit(
      get<_i12.MoneyCubit>(), get<_i26.StatsCubit>(), get<_i5.NewGameCubit>()));
  return get;
}
