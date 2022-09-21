// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/assets/cubit/assets/assets_cubit.dart' as _i31;
import '../../app/assets/cubit/build/build_asset_cubit.dart' as _i32;
import '../../app/assets/cubit/buy/buy_asset_cubit.dart' as _i17;
import '../../app/assets/cubit/tenant/tenants_cubit.dart' as _i29;
import '../../app/bank/cubit/deposit/deposit_cubit.dart' as _i12;
import '../../app/bank/cubit/loan/loan_cubit.dart' as _i26;
import '../../app/database/cubit/database_cubit.dart' as _i10;
import '../../app/date/cubit/date_cubit.dart' as _i11;
import '../../app/event/cubit/event_cubit.dart' as _i18;
import '../../app/freelance/cubit/done/freelance_done_cubit.dart' as _i21;
import '../../app/freelance/cubit/fame/fame_cubit.dart' as _i20;
import '../../app/freelance/cubit/job/freelance_job_cubit.dart' as _i22;
import '../../app/job/cubit/job_cubit.dart' as _i24;
import '../../app/learning/cubit/learning_cubit.dart' as _i25;
import '../../app/medicines/cubit/medicines_cubit.dart' as _i27;
import '../../app/money/cubit/income/income_cubit.dart' as _i23;
import '../../app/money/cubit/money_cubit.dart' as _i13;
import '../../app/money/cubit/screen_transactions/screen_transactions_cubit.dart'
    as _i14;
import '../../app/money/cubit/transactions/transactions_cubit.dart' as _i8;
import '../../app/new_game/new_game_cubit.dart' as _i6;
import '../../app/personality/cubit/food/food_cubit.dart' as _i33;
import '../../app/personality/cubit/house/house_cubit.dart' as _i34;
import '../../app/personality/cubit/transport/transport_cubit.dart' as _i30;
import '../../app/rules/cubit/rules_cubit.dart' as _i35;
import '../../app/settings/cubit/dark_mode_cubit.dart' as _i3;
import '../../app/settings/cubit/day_setting_cubit.dart' as _i4;
import '../../app/skills/cubit/skills_cubit.dart' as _i7;
import '../../app/stats/cubit/stats_cubit.dart' as _i28;
import '../../app/stock_market/cubit/exchanges/exchanges_cubit.dart' as _i19;
import '../../app/stock_market/cubit/stock_market/stock_market_cubit.dart'
    as _i15;
import '../../app/time_spend/cubit/time_spend_cubit.dart' as _i16;
import '../../app/tutorial/cubit/tutorial_cubit.dart' as _i9;
import 'injection.dart' as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DarkModeCubit>(() => _i3.DarkModeCubit());
  gh.lazySingleton<_i4.DaySettingCubit>(() => _i4.DaySettingCubit());
  gh.lazySingleton<_i5.Injection>(() => _i5.Injection());
  gh.lazySingleton<_i6.NewGameCubit>(() => _i6.NewGameCubit());
  gh.lazySingleton<_i7.SkillsCubit>(
      () => _i7.SkillsCubit(get<_i6.NewGameCubit>()));
  gh.lazySingleton<_i8.TransactionsCubit>(
      () => _i8.TransactionsCubit(get<_i6.NewGameCubit>()));
  gh.lazySingleton<_i9.TutorialCubit>(() => _i9.TutorialCubit());
  gh.lazySingleton<_i10.DatabaseCubit>(
      () => _i10.DatabaseCubit(get<_i6.NewGameCubit>()));
  gh.lazySingleton<_i11.DateCubit>(() =>
      _i11.DateCubit(get<_i6.NewGameCubit>(), get<_i4.DaySettingCubit>()));
  gh.lazySingleton<_i12.DepositCubit>(
      () => _i12.DepositCubit(get<_i11.DateCubit>(), get<_i6.NewGameCubit>()));
  gh.lazySingleton<_i13.MoneyCubit>(() => _i13.MoneyCubit(
      get<_i6.NewGameCubit>(),
      get<_i8.TransactionsCubit>(),
      get<_i11.DateCubit>()));
  gh.factory<_i14.ScreenTransactionsCubit>(() => _i14.ScreenTransactionsCubit(
      get<_i8.TransactionsCubit>(), get<_i11.DateCubit>()));
  gh.lazySingleton<_i15.StockMarketCubit>(() => _i15.StockMarketCubit(
      get<_i6.NewGameCubit>(),
      get<_i11.DateCubit>(),
      get<_i10.DatabaseCubit>()));
  gh.lazySingleton<_i16.TimeSpendCubit>(() =>
      _i16.TimeSpendCubit(get<_i6.NewGameCubit>(), get<_i11.DateCubit>()));
  gh.lazySingleton<_i17.BuyAssetCubit>(() =>
      _i17.BuyAssetCubit(get<_i6.NewGameCubit>(), get<_i10.DatabaseCubit>()));
  gh.lazySingleton<_i18.EventCubit>(() => _i18.EventCubit(
      get<_i6.NewGameCubit>(),
      get<_i10.DatabaseCubit>(),
      get<_i11.DateCubit>(),
      get<_i13.MoneyCubit>()));
  gh.lazySingleton<_i19.ExchangesCubit>(() => _i19.ExchangesCubit(
      get<_i6.NewGameCubit>(),
      get<_i11.DateCubit>(),
      get<_i15.StockMarketCubit>(),
      get<_i13.MoneyCubit>()));
  gh.lazySingleton<_i20.FameCubit>(() => _i20.FameCubit(
      get<_i6.NewGameCubit>(), get<_i11.DateCubit>(), get<_i13.MoneyCubit>()));
  gh.lazySingleton<_i21.FreelanceDoneCubit>(() => _i21.FreelanceDoneCubit(
      get<_i6.NewGameCubit>(),
      get<_i11.DateCubit>(),
      get<_i20.FameCubit>(),
      get<_i13.MoneyCubit>()));
  gh.lazySingleton<_i22.FreelanceJobCubit>(() => _i22.FreelanceJobCubit(
      get<_i6.NewGameCubit>(),
      get<_i11.DateCubit>(),
      get<_i16.TimeSpendCubit>(),
      get<_i21.FreelanceDoneCubit>(),
      get<_i7.SkillsCubit>()));
  gh.lazySingleton<_i23.IncomeCubit>(() => _i23.IncomeCubit(
      get<_i13.MoneyCubit>(), get<_i6.NewGameCubit>(), get<_i11.DateCubit>()));
  gh.lazySingleton<_i24.JobCubit>(() => _i24.JobCubit(
      get<_i6.NewGameCubit>(),
      get<_i23.IncomeCubit>(),
      get<_i16.TimeSpendCubit>(),
      get<_i7.SkillsCubit>(),
      get<_i13.MoneyCubit>(),
      get<_i11.DateCubit>()));
  gh.lazySingleton<_i25.LearningCubit>(() => _i25.LearningCubit(
      get<_i6.NewGameCubit>(),
      get<_i7.SkillsCubit>(),
      get<_i13.MoneyCubit>(),
      get<_i16.TimeSpendCubit>(),
      get<_i11.DateCubit>()));
  gh.lazySingleton<_i26.LoanCubit>(() => _i26.LoanCubit(
      get<_i13.MoneyCubit>(), get<_i11.DateCubit>(), get<_i6.NewGameCubit>()));
  gh.lazySingleton<_i27.MedicinesCubit>(() => _i27.MedicinesCubit(
      get<_i13.MoneyCubit>(),
      get<_i6.NewGameCubit>(),
      get<_i10.DatabaseCubit>(),
      get<_i11.DateCubit>()));
  gh.lazySingleton<_i28.StatsCubit>(() => _i28.StatsCubit(
      get<_i6.NewGameCubit>(),
      get<_i16.TimeSpendCubit>(),
      get<_i18.EventCubit>(),
      get<_i27.MedicinesCubit>(),
      get<_i11.DateCubit>()));
  gh.lazySingleton<_i29.TenantsCubit>(() => _i29.TenantsCubit(
      get<_i6.NewGameCubit>(),
      get<_i10.DatabaseCubit>(),
      get<_i23.IncomeCubit>()));
  gh.lazySingleton<_i30.TransportCubit>(() => _i30.TransportCubit(
      get<_i13.MoneyCubit>(),
      get<_i23.IncomeCubit>(),
      get<_i16.TimeSpendCubit>(),
      get<_i6.NewGameCubit>()));
  gh.lazySingleton<_i31.AssetsCubit>(() => _i31.AssetsCubit(
      get<_i6.NewGameCubit>(),
      get<_i13.MoneyCubit>(),
      get<_i17.BuyAssetCubit>(),
      get<_i11.DateCubit>(),
      get<_i10.DatabaseCubit>(),
      get<_i29.TenantsCubit>(),
      get<_i23.IncomeCubit>()));
  gh.lazySingleton<_i32.BuildAssetCubit>(() => _i32.BuildAssetCubit(
      get<_i6.NewGameCubit>(),
      get<_i13.MoneyCubit>(),
      get<_i31.AssetsCubit>(),
      get<_i11.DateCubit>()));
  gh.lazySingleton<_i33.FoodCubit>(() => _i33.FoodCubit(
      get<_i23.IncomeCubit>(),
      get<_i10.DatabaseCubit>(),
      get<_i6.NewGameCubit>(),
      get<_i16.TimeSpendCubit>()));
  gh.lazySingleton<_i34.HouseCubit>(() => _i34.HouseCubit(
      get<_i13.MoneyCubit>(),
      get<_i16.TimeSpendCubit>(),
      get<_i23.IncomeCubit>(),
      get<_i6.NewGameCubit>(),
      get<_i10.DatabaseCubit>()));
  gh.lazySingleton<_i35.RulesCubit>(() => _i35.RulesCubit(
      get<_i13.MoneyCubit>(), get<_i28.StatsCubit>(), get<_i6.NewGameCubit>()));
  return get;
}
