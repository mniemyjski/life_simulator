// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/assets/cubit/assets/assets_cubit.dart' as _i35;
import '../../app/assets/cubit/build/build_asset_cubit.dart' as _i36;
import '../../app/assets/cubit/buy/buy_asset_cubit.dart' as _i21;
import '../../app/assets/cubit/tenant/tenants_cubit.dart' as _i33;
import '../../app/bank/cubit/deposit/deposit_cubit.dart' as _i15;
import '../../app/bank/cubit/loan/loan_cubit.dart' as _i30;
import '../../app/business/cubit/businesses/businesses_cubit.dart' as _i20;
import '../../app/database/cubit/database_cubit.dart' as _i13;
import '../../app/date/cubit/date_cubit.dart' as _i14;
import '../../app/event/cubit/event_cubit.dart' as _i22;
import '../../app/freelance/cubit/done/freelance_done_cubit.dart' as _i25;
import '../../app/freelance/cubit/fame/fame_cubit.dart' as _i24;
import '../../app/freelance/cubit/job/freelance_job_cubit.dart' as _i26;
import '../../app/job/cubit/job_cubit.dart' as _i28;
import '../../app/learning/cubit/learning_cubit.dart' as _i29;
import '../../app/loading/cubit/loading_cubit.dart' as _i7;
import '../../app/medicines/cubit/medicines_cubit.dart' as _i31;
import '../../app/money/cubit/income/income_cubit.dart' as _i27;
import '../../app/money/cubit/money/money_cubit.dart' as _i16;
import '../../app/money/cubit/transactions/transactions_cubit.dart' as _i19;
import '../../app/new_game/new_game_cubit.dart' as _i8;
import '../../app/personality/cubit/food/food_cubit.dart' as _i37;
import '../../app/personality/cubit/house/house_cubit.dart' as _i38;
import '../../app/personality/cubit/transport/transport_cubit.dart' as _i34;
import '../../app/rules/cubit/rules_cubit.dart' as _i39;
import '../../app/settings/cubit/audio_cubit.dart' as _i3;
import '../../app/settings/cubit/dark_mode_cubit.dart' as _i4;
import '../../app/settings/cubit/day_setting_cubit.dart' as _i5;
import '../../app/skills/cubit/skills_cubit.dart' as _i9;
import '../../app/stats/cubit/stats_cubit.dart' as _i32;
import '../../app/stock_market/cubit/exchanges/exchanges_cubit.dart' as _i23;
import '../../app/stock_market/cubit/stock_market/stock_market_cubit.dart'
    as _i17;
import '../../app/time_spend/cubit/time_spend_cubit.dart' as _i18;
import '../../app/tutorial/cubit/tutorial_cubit.dart' as _i12;
import '../../repositories/isar_repository.dart' as _i6;
import '../../repositories/stock_market_repository.dart' as _i10;
import '../../repositories/transactions_repository.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i10.StockMarketRepository>(
      () => _i10.StockMarketRepository());
  gh.lazySingleton<_i11.TransactionsRepository>(
      () => _i11.TransactionsRepository());
  gh.lazySingleton<_i12.TutorialCubit>(() => _i12.TutorialCubit());
  gh.lazySingleton<_i13.DatabaseCubit>(
      () => _i13.DatabaseCubit(get<_i8.NewGameCubit>()));
  gh.lazySingleton<_i14.DateCubit>(() => _i14.DateCubit(get<_i8.NewGameCubit>(),
      get<_i5.DaySettingCubit>(), get<_i7.LoadingCubit>()));
  gh.lazySingleton<_i15.DepositCubit>(
      () => _i15.DepositCubit(get<_i14.DateCubit>(), get<_i8.NewGameCubit>()));
  gh.lazySingleton<_i16.MoneyCubit>(() => _i16.MoneyCubit(
      get<_i11.TransactionsRepository>(),
      get<_i14.DateCubit>(),
      get<_i8.NewGameCubit>()));
  gh.lazySingleton<_i17.StockMarketCubit>(() => _i17.StockMarketCubit(
      get<_i8.NewGameCubit>(),
      get<_i14.DateCubit>(),
      get<_i13.DatabaseCubit>(),
      get<_i10.StockMarketRepository>()));
  gh.lazySingleton<_i18.TimeSpendCubit>(() =>
      _i18.TimeSpendCubit(get<_i8.NewGameCubit>(), get<_i14.DateCubit>()));
  gh.factory<_i19.TransactionsCubit>(() => _i19.TransactionsCubit(
      get<_i14.DateCubit>(), get<_i11.TransactionsRepository>()));
  gh.lazySingleton<_i20.BusinessesCubit>(() =>
      _i20.BusinessesCubit(get<_i8.NewGameCubit>(), get<_i16.MoneyCubit>()));
  gh.lazySingleton<_i21.BuyAssetCubit>(() =>
      _i21.BuyAssetCubit(get<_i8.NewGameCubit>(), get<_i13.DatabaseCubit>()));
  gh.lazySingleton<_i22.EventCubit>(() => _i22.EventCubit(
      get<_i8.NewGameCubit>(),
      get<_i13.DatabaseCubit>(),
      get<_i14.DateCubit>(),
      get<_i16.MoneyCubit>()));
  gh.lazySingleton<_i23.ExchangesCubit>(() => _i23.ExchangesCubit(
      get<_i8.NewGameCubit>(),
      get<_i14.DateCubit>(),
      get<_i17.StockMarketCubit>(),
      get<_i16.MoneyCubit>()));
  gh.lazySingleton<_i24.FameCubit>(() => _i24.FameCubit(
      get<_i8.NewGameCubit>(), get<_i14.DateCubit>(), get<_i16.MoneyCubit>()));
  gh.lazySingleton<_i25.FreelanceDoneCubit>(() => _i25.FreelanceDoneCubit(
      get<_i8.NewGameCubit>(),
      get<_i14.DateCubit>(),
      get<_i24.FameCubit>(),
      get<_i16.MoneyCubit>(),
      get<_i7.LoadingCubit>()));
  gh.lazySingleton<_i26.FreelanceJobCubit>(() => _i26.FreelanceJobCubit(
      get<_i8.NewGameCubit>(),
      get<_i14.DateCubit>(),
      get<_i18.TimeSpendCubit>(),
      get<_i25.FreelanceDoneCubit>(),
      get<_i9.SkillsCubit>()));
  gh.lazySingleton<_i27.IncomeCubit>(() => _i27.IncomeCubit(
      get<_i16.MoneyCubit>(), get<_i8.NewGameCubit>(), get<_i14.DateCubit>()));
  gh.lazySingleton<_i28.JobCubit>(() => _i28.JobCubit(
      get<_i8.NewGameCubit>(),
      get<_i27.IncomeCubit>(),
      get<_i18.TimeSpendCubit>(),
      get<_i9.SkillsCubit>(),
      get<_i16.MoneyCubit>(),
      get<_i14.DateCubit>()));
  gh.lazySingleton<_i29.LearningCubit>(() => _i29.LearningCubit(
      get<_i8.NewGameCubit>(),
      get<_i9.SkillsCubit>(),
      get<_i16.MoneyCubit>(),
      get<_i18.TimeSpendCubit>(),
      get<_i14.DateCubit>()));
  gh.lazySingleton<_i30.LoanCubit>(() => _i30.LoanCubit(
      get<_i16.MoneyCubit>(), get<_i14.DateCubit>(), get<_i8.NewGameCubit>()));
  gh.lazySingleton<_i31.MedicinesCubit>(() => _i31.MedicinesCubit(
      get<_i16.MoneyCubit>(),
      get<_i8.NewGameCubit>(),
      get<_i13.DatabaseCubit>(),
      get<_i14.DateCubit>()));
  gh.lazySingleton<_i32.StatsCubit>(() => _i32.StatsCubit(
      get<_i8.NewGameCubit>(),
      get<_i18.TimeSpendCubit>(),
      get<_i22.EventCubit>(),
      get<_i31.MedicinesCubit>(),
      get<_i14.DateCubit>()));
  gh.lazySingleton<_i33.TenantsCubit>(() => _i33.TenantsCubit(
      get<_i8.NewGameCubit>(),
      get<_i13.DatabaseCubit>(),
      get<_i27.IncomeCubit>()));
  gh.lazySingleton<_i34.TransportCubit>(() => _i34.TransportCubit(
      get<_i16.MoneyCubit>(),
      get<_i27.IncomeCubit>(),
      get<_i18.TimeSpendCubit>(),
      get<_i8.NewGameCubit>()));
  gh.lazySingleton<_i35.AssetsCubit>(() => _i35.AssetsCubit(
      get<_i8.NewGameCubit>(),
      get<_i16.MoneyCubit>(),
      get<_i21.BuyAssetCubit>(),
      get<_i14.DateCubit>(),
      get<_i13.DatabaseCubit>(),
      get<_i33.TenantsCubit>(),
      get<_i27.IncomeCubit>()));
  gh.lazySingleton<_i36.BuildAssetCubit>(() => _i36.BuildAssetCubit(
      get<_i8.NewGameCubit>(),
      get<_i16.MoneyCubit>(),
      get<_i35.AssetsCubit>(),
      get<_i14.DateCubit>()));
  gh.lazySingleton<_i37.FoodCubit>(() => _i37.FoodCubit(
      get<_i27.IncomeCubit>(),
      get<_i13.DatabaseCubit>(),
      get<_i8.NewGameCubit>(),
      get<_i18.TimeSpendCubit>()));
  gh.lazySingleton<_i38.HouseCubit>(() => _i38.HouseCubit(
      get<_i16.MoneyCubit>(),
      get<_i18.TimeSpendCubit>(),
      get<_i27.IncomeCubit>(),
      get<_i8.NewGameCubit>(),
      get<_i13.DatabaseCubit>()));
  gh.lazySingleton<_i39.RulesCubit>(() => _i39.RulesCubit(
      get<_i16.MoneyCubit>(), get<_i32.StatsCubit>(), get<_i8.NewGameCubit>()));
  return get;
}
