// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/assets/cubit/assets/assets_cubit.dart' as _i34;
import '../../app/assets/cubit/build/build_asset_cubit.dart' as _i35;
import '../../app/assets/cubit/buy/buy_asset_cubit.dart' as _i20;
import '../../app/assets/cubit/tenant/tenants_cubit.dart' as _i32;
import '../../app/bank/cubit/deposit/deposit_cubit.dart' as _i14;
import '../../app/bank/cubit/loan/loan_cubit.dart' as _i29;
import '../../app/business/cubit/businesses/businesses_cubit.dart' as _i19;
import '../../app/database/cubit/database_cubit.dart' as _i12;
import '../../app/date/cubit/date_cubit.dart' as _i13;
import '../../app/event/cubit/event_cubit.dart' as _i21;
import '../../app/freelance/cubit/done/freelance_done_cubit.dart' as _i24;
import '../../app/freelance/cubit/fame/fame_cubit.dart' as _i23;
import '../../app/freelance/cubit/job/freelance_job_cubit.dart' as _i25;
import '../../app/job/cubit/job_cubit.dart' as _i27;
import '../../app/learning/cubit/learning_cubit.dart' as _i28;
import '../../app/loading/cubit/loading_cubit.dart' as _i7;
import '../../app/medicines/cubit/medicines_cubit.dart' as _i30;
import '../../app/money/cubit/income/income_cubit.dart' as _i26;
import '../../app/money/cubit/money/money_cubit.dart' as _i15;
import '../../app/money/cubit/screen_transactions/screen_transactions_cubit.dart'
    as _i16;
import '../../app/new_game/new_game_cubit.dart' as _i8;
import '../../app/personality/cubit/food/food_cubit.dart' as _i36;
import '../../app/personality/cubit/house/house_cubit.dart' as _i37;
import '../../app/personality/cubit/transport/transport_cubit.dart' as _i33;
import '../../app/rules/cubit/rules_cubit.dart' as _i38;
import '../../app/settings/cubit/audio_cubit.dart' as _i3;
import '../../app/settings/cubit/dark_mode_cubit.dart' as _i4;
import '../../app/settings/cubit/day_setting_cubit.dart' as _i5;
import '../../app/skills/cubit/skills_cubit.dart' as _i9;
import '../../app/stats/cubit/stats_cubit.dart' as _i31;
import '../../app/stock_market/cubit/exchanges/exchanges_cubit.dart' as _i22;
import '../../app/stock_market/cubit/stock_market/stock_market_cubit.dart'
    as _i17;
import '../../app/time_spend/cubit/time_spend_cubit.dart' as _i18;
import '../../app/tutorial/cubit/tutorial_cubit.dart' as _i11;
import '../../repositories/isar_repository.dart' as _i6;
import '../../repositories/transactions_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AudioCubit>(() => _i3.AudioCubit());
  gh.lazySingleton<_i4.DarkModeCubit>(() => _i4.DarkModeCubit());
  gh.lazySingleton<_i5.DaySettingCubit>(() => _i5.DaySettingCubit());
  gh.lazySingleton<_i6.IsarRepository>(() => _i6.IsarRepository());
  gh.lazySingleton<_i7.LoadingCubit>(() => _i7.LoadingCubit());
  gh.lazySingleton<_i8.NewGameCubit>(() => _i8.NewGameCubit());
  gh.lazySingleton<_i9.SkillsCubit>(
      () => _i9.SkillsCubit(get<_i8.NewGameCubit>()));
  gh.lazySingleton<_i10.TransactionsRepository>(
      () => _i10.TransactionsRepository());
  gh.lazySingleton<_i11.TutorialCubit>(() => _i11.TutorialCubit());
  gh.lazySingleton<_i12.DatabaseCubit>(
      () => _i12.DatabaseCubit(get<_i8.NewGameCubit>()));
  gh.lazySingleton<_i13.DateCubit>(() => _i13.DateCubit(get<_i8.NewGameCubit>(),
      get<_i5.DaySettingCubit>(), get<_i7.LoadingCubit>()));
  gh.lazySingleton<_i14.DepositCubit>(
      () => _i14.DepositCubit(get<_i13.DateCubit>(), get<_i8.NewGameCubit>()));
  gh.lazySingleton<_i15.MoneyCubit>(() => _i15.MoneyCubit(
      get<_i10.TransactionsRepository>(),
      get<_i13.DateCubit>(),
      get<_i8.NewGameCubit>()));
  gh.factory<_i16.ScreenTransactionsCubit>(() => _i16.ScreenTransactionsCubit(
      get<_i13.DateCubit>(), get<_i10.TransactionsRepository>()));
  gh.lazySingleton<_i17.StockMarketCubit>(() => _i17.StockMarketCubit(
      get<_i8.NewGameCubit>(),
      get<_i13.DateCubit>(),
      get<_i12.DatabaseCubit>(),
      get<_i7.LoadingCubit>()));
  gh.lazySingleton<_i18.TimeSpendCubit>(() =>
      _i18.TimeSpendCubit(get<_i8.NewGameCubit>(), get<_i13.DateCubit>()));
  gh.lazySingleton<_i19.BusinessesCubit>(() =>
      _i19.BusinessesCubit(get<_i8.NewGameCubit>(), get<_i15.MoneyCubit>()));
  gh.lazySingleton<_i20.BuyAssetCubit>(() =>
      _i20.BuyAssetCubit(get<_i8.NewGameCubit>(), get<_i12.DatabaseCubit>()));
  gh.lazySingleton<_i21.EventCubit>(() => _i21.EventCubit(
      get<_i8.NewGameCubit>(),
      get<_i12.DatabaseCubit>(),
      get<_i13.DateCubit>(),
      get<_i15.MoneyCubit>()));
  gh.lazySingleton<_i22.ExchangesCubit>(() => _i22.ExchangesCubit(
      get<_i8.NewGameCubit>(),
      get<_i13.DateCubit>(),
      get<_i17.StockMarketCubit>(),
      get<_i15.MoneyCubit>()));
  gh.lazySingleton<_i23.FameCubit>(() => _i23.FameCubit(
      get<_i8.NewGameCubit>(), get<_i13.DateCubit>(), get<_i15.MoneyCubit>()));
  gh.lazySingleton<_i24.FreelanceDoneCubit>(() => _i24.FreelanceDoneCubit(
      get<_i8.NewGameCubit>(),
      get<_i13.DateCubit>(),
      get<_i23.FameCubit>(),
      get<_i15.MoneyCubit>(),
      get<_i7.LoadingCubit>()));
  gh.lazySingleton<_i25.FreelanceJobCubit>(() => _i25.FreelanceJobCubit(
      get<_i8.NewGameCubit>(),
      get<_i13.DateCubit>(),
      get<_i18.TimeSpendCubit>(),
      get<_i24.FreelanceDoneCubit>(),
      get<_i9.SkillsCubit>()));
  gh.lazySingleton<_i26.IncomeCubit>(() => _i26.IncomeCubit(
      get<_i15.MoneyCubit>(), get<_i8.NewGameCubit>(), get<_i13.DateCubit>()));
  gh.lazySingleton<_i27.JobCubit>(() => _i27.JobCubit(
      get<_i8.NewGameCubit>(),
      get<_i26.IncomeCubit>(),
      get<_i18.TimeSpendCubit>(),
      get<_i9.SkillsCubit>(),
      get<_i15.MoneyCubit>(),
      get<_i13.DateCubit>()));
  gh.lazySingleton<_i28.LearningCubit>(() => _i28.LearningCubit(
      get<_i8.NewGameCubit>(),
      get<_i9.SkillsCubit>(),
      get<_i15.MoneyCubit>(),
      get<_i18.TimeSpendCubit>(),
      get<_i13.DateCubit>()));
  gh.lazySingleton<_i29.LoanCubit>(() => _i29.LoanCubit(
      get<_i15.MoneyCubit>(), get<_i13.DateCubit>(), get<_i8.NewGameCubit>()));
  gh.lazySingleton<_i30.MedicinesCubit>(() => _i30.MedicinesCubit(
      get<_i15.MoneyCubit>(),
      get<_i8.NewGameCubit>(),
      get<_i12.DatabaseCubit>(),
      get<_i13.DateCubit>()));
  gh.lazySingleton<_i31.StatsCubit>(() => _i31.StatsCubit(
      get<_i8.NewGameCubit>(),
      get<_i18.TimeSpendCubit>(),
      get<_i21.EventCubit>(),
      get<_i30.MedicinesCubit>(),
      get<_i13.DateCubit>()));
  gh.lazySingleton<_i32.TenantsCubit>(() => _i32.TenantsCubit(
      get<_i8.NewGameCubit>(),
      get<_i12.DatabaseCubit>(),
      get<_i26.IncomeCubit>()));
  gh.lazySingleton<_i33.TransportCubit>(() => _i33.TransportCubit(
      get<_i15.MoneyCubit>(),
      get<_i26.IncomeCubit>(),
      get<_i18.TimeSpendCubit>(),
      get<_i8.NewGameCubit>()));
  gh.lazySingleton<_i34.AssetsCubit>(() => _i34.AssetsCubit(
      get<_i8.NewGameCubit>(),
      get<_i15.MoneyCubit>(),
      get<_i20.BuyAssetCubit>(),
      get<_i13.DateCubit>(),
      get<_i12.DatabaseCubit>(),
      get<_i32.TenantsCubit>(),
      get<_i26.IncomeCubit>()));
  gh.lazySingleton<_i35.BuildAssetCubit>(() => _i35.BuildAssetCubit(
      get<_i8.NewGameCubit>(),
      get<_i15.MoneyCubit>(),
      get<_i34.AssetsCubit>(),
      get<_i13.DateCubit>()));
  gh.lazySingleton<_i36.FoodCubit>(() => _i36.FoodCubit(
      get<_i26.IncomeCubit>(),
      get<_i12.DatabaseCubit>(),
      get<_i8.NewGameCubit>(),
      get<_i18.TimeSpendCubit>()));
  gh.lazySingleton<_i37.HouseCubit>(() => _i37.HouseCubit(
      get<_i15.MoneyCubit>(),
      get<_i18.TimeSpendCubit>(),
      get<_i26.IncomeCubit>(),
      get<_i8.NewGameCubit>(),
      get<_i12.DatabaseCubit>()));
  gh.lazySingleton<_i38.RulesCubit>(() => _i38.RulesCubit(
      get<_i15.MoneyCubit>(), get<_i31.StatsCubit>(), get<_i8.NewGameCubit>()));
  return get;
}
