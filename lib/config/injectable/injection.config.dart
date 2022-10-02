// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/assets/cubit/assets/assets_cubit.dart' as _i31;
import '../../app/assets/cubit/build/build_asset_cubit.dart' as _i32;
import '../../app/assets/cubit/buy/buy_asset_cubit.dart' as _i17;
import '../../app/assets/cubit/tenant/tenants_cubit.dart' as _i27;
import '../../app/bank/cubit/deposit/deposit_cubit.dart' as _i21;
import '../../app/bank/cubit/loan/loan_cubit.dart' as _i25;
import '../../app/business/cubit/businesses/businesses_cubit.dart' as _i16;
import '../../app/database/cubit/database_cubit.dart' as _i13;
import '../../app/date/cubit/date_cubit.dart' as _i20;
import '../../app/event/cubit/event_cubit.dart' as _i22;
import '../../app/freelance/cubit/done/freelance_done_cubit.dart' as _i19;
import '../../app/freelance/cubit/fame/fame_cubit.dart' as _i18;
import '../../app/freelance/cubit/job/freelance_job_cubit.dart' as _i34;
import '../../app/job/cubit/job_cubit.dart' as _i36;
import '../../app/learning/cubit/learning_cubit.dart' as _i37;
import '../../app/loading/cubit/loading_cubit.dart' as _i7;
import '../../app/medicines/cubit/medicines_cubit.dart' as _i26;
import '../../app/money/cubit/income/income_cubit.dart' as _i24;
import '../../app/money/cubit/money/money_cubit.dart' as _i14;
import '../../app/money/cubit/transactions/transactions_cubit.dart' as _i29;
import '../../app/new_game/new_game_cubit.dart' as _i8;
import '../../app/personality/cubit/food/food_cubit.dart' as _i33;
import '../../app/personality/cubit/house/house_cubit.dart' as _i35;
import '../../app/personality/cubit/transport/transport_cubit.dart' as _i30;
import '../../app/rules/cubit/rules_cubit.dart' as _i39;
import '../../app/settings/cubit/audio_cubit.dart' as _i3;
import '../../app/settings/cubit/dark_mode_cubit.dart' as _i4;
import '../../app/settings/cubit/day_setting_cubit.dart' as _i5;
import '../../app/skills/cubit/skills_cubit.dart' as _i9;
import '../../app/stats/cubit/stats_cubit.dart' as _i38;
import '../../app/stock_market/cubit/exchanges/exchanges_cubit.dart' as _i23;
import '../../app/stock_market/cubit/stock_market/stock_market_cubit.dart'
    as _i15;
import '../../app/time_spend/cubit/time_spend_cubit.dart' as _i28;
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
  gh.lazySingleton<_i14.MoneyCubit>(() => _i14.MoneyCubit(
      get<_i11.TransactionsRepository>(), get<_i8.NewGameCubit>()));
  gh.lazySingleton<_i15.StockMarketCubit>(() => _i15.StockMarketCubit(
      get<_i8.NewGameCubit>(),
      get<_i13.DatabaseCubit>(),
      get<_i10.StockMarketRepository>()));
  gh.lazySingleton<_i16.BusinessesCubit>(() =>
      _i16.BusinessesCubit(get<_i8.NewGameCubit>(), get<_i14.MoneyCubit>()));
  gh.lazySingleton<_i17.BuyAssetCubit>(() =>
      _i17.BuyAssetCubit(get<_i8.NewGameCubit>(), get<_i13.DatabaseCubit>()));
  gh.lazySingleton<_i18.FameCubit>(
      () => _i18.FameCubit(get<_i8.NewGameCubit>(), get<_i14.MoneyCubit>()));
  gh.lazySingleton<_i19.FreelanceDoneCubit>(() => _i19.FreelanceDoneCubit(
      get<_i8.NewGameCubit>(), get<_i18.FameCubit>(), get<_i14.MoneyCubit>()));
  gh.lazySingleton<_i20.DateCubit>(() => _i20.DateCubit(
      get<_i8.NewGameCubit>(),
      get<_i5.DaySettingCubit>(),
      get<_i7.LoadingCubit>(),
      get<_i15.StockMarketCubit>(),
      get<_i19.FreelanceDoneCubit>(),
      get<_i18.FameCubit>()));
  gh.lazySingleton<_i21.DepositCubit>(
      () => _i21.DepositCubit(get<_i20.DateCubit>(), get<_i8.NewGameCubit>()));
  gh.lazySingleton<_i22.EventCubit>(() => _i22.EventCubit(
      get<_i8.NewGameCubit>(),
      get<_i13.DatabaseCubit>(),
      get<_i20.DateCubit>(),
      get<_i14.MoneyCubit>()));
  gh.lazySingleton<_i23.ExchangesCubit>(() => _i23.ExchangesCubit(
      get<_i8.NewGameCubit>(),
      get<_i20.DateCubit>(),
      get<_i15.StockMarketCubit>(),
      get<_i14.MoneyCubit>()));
  gh.lazySingleton<_i24.IncomeCubit>(() => _i24.IncomeCubit(
      get<_i14.MoneyCubit>(), get<_i8.NewGameCubit>(), get<_i20.DateCubit>()));
  gh.lazySingleton<_i25.LoanCubit>(() => _i25.LoanCubit(
      get<_i14.MoneyCubit>(), get<_i20.DateCubit>(), get<_i8.NewGameCubit>()));
  gh.lazySingleton<_i26.MedicinesCubit>(() => _i26.MedicinesCubit(
      get<_i14.MoneyCubit>(),
      get<_i8.NewGameCubit>(),
      get<_i13.DatabaseCubit>(),
      get<_i20.DateCubit>()));
  gh.lazySingleton<_i27.TenantsCubit>(() => _i27.TenantsCubit(
      get<_i8.NewGameCubit>(),
      get<_i13.DatabaseCubit>(),
      get<_i24.IncomeCubit>()));
  gh.lazySingleton<_i28.TimeSpendCubit>(() =>
      _i28.TimeSpendCubit(get<_i8.NewGameCubit>(), get<_i20.DateCubit>()));
  gh.factory<_i29.TransactionsCubit>(() => _i29.TransactionsCubit(
      get<_i20.DateCubit>(), get<_i11.TransactionsRepository>()));
  gh.lazySingleton<_i30.TransportCubit>(() => _i30.TransportCubit(
      get<_i14.MoneyCubit>(),
      get<_i24.IncomeCubit>(),
      get<_i28.TimeSpendCubit>(),
      get<_i8.NewGameCubit>(),
      get<_i20.DateCubit>()));
  gh.lazySingleton<_i31.AssetsCubit>(() => _i31.AssetsCubit(
      get<_i8.NewGameCubit>(),
      get<_i14.MoneyCubit>(),
      get<_i17.BuyAssetCubit>(),
      get<_i20.DateCubit>(),
      get<_i27.TenantsCubit>(),
      get<_i24.IncomeCubit>()));
  gh.lazySingleton<_i32.BuildAssetCubit>(() => _i32.BuildAssetCubit(
      get<_i8.NewGameCubit>(),
      get<_i14.MoneyCubit>(),
      get<_i31.AssetsCubit>(),
      get<_i20.DateCubit>()));
  gh.lazySingleton<_i33.FoodCubit>(() => _i33.FoodCubit(
      get<_i24.IncomeCubit>(),
      get<_i13.DatabaseCubit>(),
      get<_i8.NewGameCubit>(),
      get<_i28.TimeSpendCubit>()));
  gh.lazySingleton<_i34.FreelanceJobCubit>(() => _i34.FreelanceJobCubit(
      get<_i8.NewGameCubit>(),
      get<_i20.DateCubit>(),
      get<_i28.TimeSpendCubit>(),
      get<_i19.FreelanceDoneCubit>(),
      get<_i9.SkillsCubit>()));
  gh.lazySingleton<_i35.HouseCubit>(() => _i35.HouseCubit(
      get<_i14.MoneyCubit>(),
      get<_i28.TimeSpendCubit>(),
      get<_i24.IncomeCubit>(),
      get<_i8.NewGameCubit>(),
      get<_i13.DatabaseCubit>(),
      get<_i20.DateCubit>()));
  gh.lazySingleton<_i36.JobCubit>(() => _i36.JobCubit(
      get<_i8.NewGameCubit>(),
      get<_i24.IncomeCubit>(),
      get<_i28.TimeSpendCubit>(),
      get<_i9.SkillsCubit>(),
      get<_i14.MoneyCubit>(),
      get<_i20.DateCubit>()));
  gh.lazySingleton<_i37.LearningCubit>(() => _i37.LearningCubit(
      get<_i8.NewGameCubit>(),
      get<_i9.SkillsCubit>(),
      get<_i14.MoneyCubit>(),
      get<_i28.TimeSpendCubit>(),
      get<_i20.DateCubit>()));
  gh.lazySingleton<_i38.StatsCubit>(() => _i38.StatsCubit(
      get<_i8.NewGameCubit>(),
      get<_i28.TimeSpendCubit>(),
      get<_i22.EventCubit>(),
      get<_i26.MedicinesCubit>(),
      get<_i20.DateCubit>()));
  gh.lazySingleton<_i39.RulesCubit>(() => _i39.RulesCubit(
      get<_i14.MoneyCubit>(), get<_i38.StatsCubit>(), get<_i8.NewGameCubit>()));
  return get;
}
