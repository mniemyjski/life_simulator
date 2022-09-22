// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/assets/cubit/assets/assets_cubit.dart' as _i32;
import '../../app/assets/cubit/build/build_asset_cubit.dart' as _i33;
import '../../app/assets/cubit/buy/buy_asset_cubit.dart' as _i18;
import '../../app/assets/cubit/tenant/tenants_cubit.dart' as _i30;
import '../../app/bank/cubit/deposit/deposit_cubit.dart' as _i13;
import '../../app/bank/cubit/loan/loan_cubit.dart' as _i27;
import '../../app/database/cubit/database_cubit.dart' as _i11;
import '../../app/date/cubit/date_cubit.dart' as _i12;
import '../../app/event/cubit/event_cubit.dart' as _i19;
import '../../app/freelance/cubit/done/freelance_done_cubit.dart' as _i22;
import '../../app/freelance/cubit/fame/fame_cubit.dart' as _i21;
import '../../app/freelance/cubit/job/freelance_job_cubit.dart' as _i23;
import '../../app/job/cubit/job_cubit.dart' as _i25;
import '../../app/learning/cubit/learning_cubit.dart' as _i26;
import '../../app/medicines/cubit/medicines_cubit.dart' as _i28;
import '../../app/money/cubit/income/income_cubit.dart' as _i24;
import '../../app/money/cubit/money_cubit.dart' as _i14;
import '../../app/money/cubit/screen_transactions/screen_transactions_cubit.dart'
    as _i15;
import '../../app/money/cubit/transactions/transactions_cubit.dart' as _i9;
import '../../app/new_game/new_game_cubit.dart' as _i7;
import '../../app/personality/cubit/food/food_cubit.dart' as _i34;
import '../../app/personality/cubit/house/house_cubit.dart' as _i35;
import '../../app/personality/cubit/transport/transport_cubit.dart' as _i31;
import '../../app/rules/cubit/rules_cubit.dart' as _i36;
import '../../app/settings/cubit/audio_cubit.dart' as _i3;
import '../../app/settings/cubit/dark_mode_cubit.dart' as _i4;
import '../../app/settings/cubit/day_setting_cubit.dart' as _i5;
import '../../app/skills/cubit/skills_cubit.dart' as _i8;
import '../../app/stats/cubit/stats_cubit.dart' as _i29;
import '../../app/stock_market/cubit/exchanges/exchanges_cubit.dart' as _i20;
import '../../app/stock_market/cubit/stock_market/stock_market_cubit.dart'
    as _i16;
import '../../app/time_spend/cubit/time_spend_cubit.dart' as _i17;
import '../../app/tutorial/cubit/tutorial_cubit.dart' as _i10;
import 'injection.dart' as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AudioCubit>(() => _i3.AudioCubit());
  gh.lazySingleton<_i4.DarkModeCubit>(() => _i4.DarkModeCubit());
  gh.lazySingleton<_i5.DaySettingCubit>(() => _i5.DaySettingCubit());
  gh.lazySingleton<_i6.Injection>(() => _i6.Injection());
  gh.lazySingleton<_i7.NewGameCubit>(() => _i7.NewGameCubit());
  gh.lazySingleton<_i8.SkillsCubit>(
      () => _i8.SkillsCubit(get<_i7.NewGameCubit>()));
  gh.lazySingleton<_i9.TransactionsCubit>(
      () => _i9.TransactionsCubit(get<_i7.NewGameCubit>()));
  gh.lazySingleton<_i10.TutorialCubit>(() => _i10.TutorialCubit());
  gh.lazySingleton<_i11.DatabaseCubit>(
      () => _i11.DatabaseCubit(get<_i7.NewGameCubit>()));
  gh.lazySingleton<_i12.DateCubit>(() =>
      _i12.DateCubit(get<_i7.NewGameCubit>(), get<_i5.DaySettingCubit>()));
  gh.lazySingleton<_i13.DepositCubit>(
      () => _i13.DepositCubit(get<_i12.DateCubit>(), get<_i7.NewGameCubit>()));
  gh.lazySingleton<_i14.MoneyCubit>(() => _i14.MoneyCubit(
      get<_i7.NewGameCubit>(),
      get<_i9.TransactionsCubit>(),
      get<_i12.DateCubit>()));
  gh.factory<_i15.ScreenTransactionsCubit>(() => _i15.ScreenTransactionsCubit(
      get<_i9.TransactionsCubit>(), get<_i12.DateCubit>()));
  gh.lazySingleton<_i16.StockMarketCubit>(() => _i16.StockMarketCubit(
      get<_i7.NewGameCubit>(),
      get<_i12.DateCubit>(),
      get<_i11.DatabaseCubit>()));
  gh.lazySingleton<_i17.TimeSpendCubit>(() =>
      _i17.TimeSpendCubit(get<_i7.NewGameCubit>(), get<_i12.DateCubit>()));
  gh.lazySingleton<_i18.BuyAssetCubit>(() =>
      _i18.BuyAssetCubit(get<_i7.NewGameCubit>(), get<_i11.DatabaseCubit>()));
  gh.lazySingleton<_i19.EventCubit>(() => _i19.EventCubit(
      get<_i7.NewGameCubit>(),
      get<_i11.DatabaseCubit>(),
      get<_i12.DateCubit>(),
      get<_i14.MoneyCubit>()));
  gh.lazySingleton<_i20.ExchangesCubit>(() => _i20.ExchangesCubit(
      get<_i7.NewGameCubit>(),
      get<_i12.DateCubit>(),
      get<_i16.StockMarketCubit>(),
      get<_i14.MoneyCubit>()));
  gh.lazySingleton<_i21.FameCubit>(() => _i21.FameCubit(
      get<_i7.NewGameCubit>(), get<_i12.DateCubit>(), get<_i14.MoneyCubit>()));
  gh.lazySingleton<_i22.FreelanceDoneCubit>(() => _i22.FreelanceDoneCubit(
      get<_i7.NewGameCubit>(),
      get<_i12.DateCubit>(),
      get<_i21.FameCubit>(),
      get<_i14.MoneyCubit>()));
  gh.lazySingleton<_i23.FreelanceJobCubit>(() => _i23.FreelanceJobCubit(
      get<_i7.NewGameCubit>(),
      get<_i12.DateCubit>(),
      get<_i17.TimeSpendCubit>(),
      get<_i22.FreelanceDoneCubit>(),
      get<_i8.SkillsCubit>()));
  gh.lazySingleton<_i24.IncomeCubit>(() => _i24.IncomeCubit(
      get<_i14.MoneyCubit>(), get<_i7.NewGameCubit>(), get<_i12.DateCubit>()));
  gh.lazySingleton<_i25.JobCubit>(() => _i25.JobCubit(
      get<_i7.NewGameCubit>(),
      get<_i24.IncomeCubit>(),
      get<_i17.TimeSpendCubit>(),
      get<_i8.SkillsCubit>(),
      get<_i14.MoneyCubit>(),
      get<_i12.DateCubit>()));
  gh.lazySingleton<_i26.LearningCubit>(() => _i26.LearningCubit(
      get<_i7.NewGameCubit>(),
      get<_i8.SkillsCubit>(),
      get<_i14.MoneyCubit>(),
      get<_i17.TimeSpendCubit>(),
      get<_i12.DateCubit>()));
  gh.lazySingleton<_i27.LoanCubit>(() => _i27.LoanCubit(
      get<_i14.MoneyCubit>(), get<_i12.DateCubit>(), get<_i7.NewGameCubit>()));
  gh.lazySingleton<_i28.MedicinesCubit>(() => _i28.MedicinesCubit(
      get<_i14.MoneyCubit>(),
      get<_i7.NewGameCubit>(),
      get<_i11.DatabaseCubit>(),
      get<_i12.DateCubit>()));
  gh.lazySingleton<_i29.StatsCubit>(() => _i29.StatsCubit(
      get<_i7.NewGameCubit>(),
      get<_i17.TimeSpendCubit>(),
      get<_i19.EventCubit>(),
      get<_i28.MedicinesCubit>(),
      get<_i12.DateCubit>()));
  gh.lazySingleton<_i30.TenantsCubit>(() => _i30.TenantsCubit(
      get<_i7.NewGameCubit>(),
      get<_i11.DatabaseCubit>(),
      get<_i24.IncomeCubit>()));
  gh.lazySingleton<_i31.TransportCubit>(() => _i31.TransportCubit(
      get<_i14.MoneyCubit>(),
      get<_i24.IncomeCubit>(),
      get<_i17.TimeSpendCubit>(),
      get<_i7.NewGameCubit>()));
  gh.lazySingleton<_i32.AssetsCubit>(() => _i32.AssetsCubit(
      get<_i7.NewGameCubit>(),
      get<_i14.MoneyCubit>(),
      get<_i18.BuyAssetCubit>(),
      get<_i12.DateCubit>(),
      get<_i11.DatabaseCubit>(),
      get<_i30.TenantsCubit>(),
      get<_i24.IncomeCubit>()));
  gh.lazySingleton<_i33.BuildAssetCubit>(() => _i33.BuildAssetCubit(
      get<_i7.NewGameCubit>(),
      get<_i14.MoneyCubit>(),
      get<_i32.AssetsCubit>(),
      get<_i12.DateCubit>()));
  gh.lazySingleton<_i34.FoodCubit>(() => _i34.FoodCubit(
      get<_i24.IncomeCubit>(),
      get<_i11.DatabaseCubit>(),
      get<_i7.NewGameCubit>(),
      get<_i17.TimeSpendCubit>()));
  gh.lazySingleton<_i35.HouseCubit>(() => _i35.HouseCubit(
      get<_i14.MoneyCubit>(),
      get<_i17.TimeSpendCubit>(),
      get<_i24.IncomeCubit>(),
      get<_i7.NewGameCubit>(),
      get<_i11.DatabaseCubit>()));
  gh.lazySingleton<_i36.RulesCubit>(() => _i36.RulesCubit(
      get<_i14.MoneyCubit>(), get<_i29.StatsCubit>(), get<_i7.NewGameCubit>()));
  return get;
}
