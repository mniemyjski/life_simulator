// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/assets/cubit/assets/assets_cubit.dart' as _i32;
import '../../app/assets/cubit/build/build_asset_cubit.dart' as _i33;
import '../../app/assets/cubit/buy/buy_asset_cubit.dart' as _i20;
import '../../app/assets/cubit/tenant/tenants_cubit.dart' as _i31;
import '../../app/bank/cubit/deposit/deposit_cubit.dart' as _i16;
import '../../app/bank/cubit/loan/loan_cubit.dart' as _i28;
import '../../app/business/cubit/businesses/businesses_cubit.dart' as _i19;
import '../../app/database/cubit/database_cubit.dart' as _i15;
import '../../app/date/cubit/date_cubit.dart' as _i34;
import '../../app/event/cubit/event_cubit.dart' as _i21;
import '../../app/freelance/cubit/done/freelance_done_cubit.dart' as _i23;
import '../../app/freelance/cubit/fame/fame_cubit.dart' as _i22;
import '../../app/freelance/cubit/job/freelance_job_cubit.dart' as _i24;
import '../../app/job/cubit/job_cubit.dart' as _i26;
import '../../app/learning/cubit/learning_cubit.dart' as _i27;
import '../../app/loading/cubit/loading_cubit.dart' as _i8;
import '../../app/medicines/cubit/medicines_cubit.dart' as _i29;
import '../../app/money/cubit/income/income_cubit.dart' as _i25;
import '../../app/money/cubit/money/money_cubit.dart' as _i17;
import '../../app/money/cubit/transactions/transactions_cubit.dart' as _i39;
import '../../app/new_game/new_game_cubit.dart' as _i9;
import '../../app/personality/cubit/food/food_cubit.dart' as _i36;
import '../../app/personality/cubit/house/house_cubit.dart' as _i37;
import '../../app/personality/cubit/transport/transport_cubit.dart' as _i40;
import '../../app/rules/cubit/rules_cubit.dart' as _i38;
import '../../app/settings/cubit/audio_cubit.dart' as _i3;
import '../../app/settings/cubit/dark_mode_cubit.dart' as _i4;
import '../../app/settings/cubit/day_setting_cubit.dart' as _i5;
import '../../app/skills/cubit/skills_cubit.dart' as _i10;
import '../../app/stats/cubit/stats_cubit.dart' as _i30;
import '../../app/stock_market/cubit/exchanges/exchanges_cubit.dart' as _i35;
import '../../app/stock_market/cubit/stock_market/stock_market_cubit.dart'
    as _i18;
import '../../app/time_spend/cubit/time_spend_cubit.dart' as _i12;
import '../../app/tutorial/cubit/tutorial_cubit.dart' as _i14;
import '../../repositories/freelance_repository.dart' as _i6;
import '../../repositories/isar_repository.dart' as _i7;
import '../../repositories/stock_market_repository.dart' as _i11;
import '../../repositories/transactions_repository.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AudioCubit>(() => _i3.AudioCubit());
  gh.lazySingleton<_i4.DarkModeCubit>(() => _i4.DarkModeCubit());
  gh.lazySingleton<_i5.DaySettingCubit>(() => _i5.DaySettingCubit());
  gh.lazySingleton<_i6.FreelanceRepository>(() => _i6.FreelanceRepository());
  gh.lazySingleton<_i7.IsarRepository>(() => _i7.IsarRepository());
  gh.lazySingleton<_i8.LoadingCubit>(() => _i8.LoadingCubit());
  gh.lazySingleton<_i9.NewGameCubit>(() => _i9.NewGameCubit());
  gh.lazySingleton<_i10.SkillsCubit>(
      () => _i10.SkillsCubit(get<_i9.NewGameCubit>()));
  gh.lazySingleton<_i11.StockMarketRepository>(
      () => _i11.StockMarketRepository());
  gh.lazySingleton<_i12.TimeSpendCubit>(
      () => _i12.TimeSpendCubit(get<_i9.NewGameCubit>()));
  gh.lazySingleton<_i13.TransactionsRepository>(
      () => _i13.TransactionsRepository());
  gh.lazySingleton<_i14.TutorialCubit>(() => _i14.TutorialCubit());
  gh.lazySingleton<_i15.DatabaseCubit>(
      () => _i15.DatabaseCubit(get<_i9.NewGameCubit>()));
  gh.lazySingleton<_i16.DepositCubit>(
      () => _i16.DepositCubit(get<_i9.NewGameCubit>()));
  gh.lazySingleton<_i17.MoneyCubit>(() => _i17.MoneyCubit(
      get<_i13.TransactionsRepository>(), get<_i9.NewGameCubit>()));
  gh.lazySingleton<_i18.StockMarketCubit>(() => _i18.StockMarketCubit(
      get<_i9.NewGameCubit>(),
      get<_i15.DatabaseCubit>(),
      get<_i11.StockMarketRepository>()));
  gh.lazySingleton<_i19.BusinessesCubit>(() =>
      _i19.BusinessesCubit(get<_i9.NewGameCubit>(), get<_i17.MoneyCubit>()));
  gh.lazySingleton<_i20.BuyAssetCubit>(() =>
      _i20.BuyAssetCubit(get<_i9.NewGameCubit>(), get<_i15.DatabaseCubit>()));
  gh.lazySingleton<_i21.EventCubit>(() => _i21.EventCubit(
      get<_i9.NewGameCubit>(),
      get<_i15.DatabaseCubit>(),
      get<_i17.MoneyCubit>()));
  gh.lazySingleton<_i22.FameCubit>(
      () => _i22.FameCubit(get<_i9.NewGameCubit>(), get<_i17.MoneyCubit>()));
  gh.lazySingleton<_i23.FreelanceDoneCubit>(() => _i23.FreelanceDoneCubit(
      get<_i9.NewGameCubit>(),
      get<_i22.FameCubit>(),
      get<_i17.MoneyCubit>(),
      get<_i6.FreelanceRepository>()));
  gh.lazySingleton<_i24.FreelanceJobCubit>(() => _i24.FreelanceJobCubit(
      get<_i9.NewGameCubit>(),
      get<_i12.TimeSpendCubit>(),
      get<_i23.FreelanceDoneCubit>(),
      get<_i10.SkillsCubit>()));
  gh.lazySingleton<_i25.IncomeCubit>(
      () => _i25.IncomeCubit(get<_i17.MoneyCubit>(), get<_i9.NewGameCubit>()));
  gh.lazySingleton<_i26.JobCubit>(() => _i26.JobCubit(
      get<_i9.NewGameCubit>(),
      get<_i25.IncomeCubit>(),
      get<_i12.TimeSpendCubit>(),
      get<_i10.SkillsCubit>()));
  gh.lazySingleton<_i27.LearningCubit>(() => _i27.LearningCubit(
      get<_i9.NewGameCubit>(),
      get<_i10.SkillsCubit>(),
      get<_i17.MoneyCubit>(),
      get<_i12.TimeSpendCubit>()));
  gh.lazySingleton<_i28.LoanCubit>(
      () => _i28.LoanCubit(get<_i17.MoneyCubit>(), get<_i9.NewGameCubit>()));
  gh.lazySingleton<_i29.MedicinesCubit>(() => _i29.MedicinesCubit(
      get<_i17.MoneyCubit>(),
      get<_i9.NewGameCubit>(),
      get<_i15.DatabaseCubit>()));
  gh.lazySingleton<_i30.StatsCubit>(() => _i30.StatsCubit(
      get<_i9.NewGameCubit>(),
      get<_i12.TimeSpendCubit>(),
      get<_i21.EventCubit>(),
      get<_i29.MedicinesCubit>()));
  gh.lazySingleton<_i31.TenantsCubit>(() => _i31.TenantsCubit(
      get<_i9.NewGameCubit>(),
      get<_i15.DatabaseCubit>(),
      get<_i25.IncomeCubit>()));
  gh.lazySingleton<_i32.AssetsCubit>(() => _i32.AssetsCubit(
      get<_i9.NewGameCubit>(),
      get<_i17.MoneyCubit>(),
      get<_i20.BuyAssetCubit>(),
      get<_i31.TenantsCubit>(),
      get<_i25.IncomeCubit>()));
  gh.lazySingleton<_i33.BuildAssetCubit>(() => _i33.BuildAssetCubit(
      get<_i9.NewGameCubit>(),
      get<_i17.MoneyCubit>(),
      get<_i32.AssetsCubit>()));
  gh.lazySingleton<_i34.DateCubit>(() => _i34.DateCubit(
      get<_i9.NewGameCubit>(),
      get<_i5.DaySettingCubit>(),
      get<_i8.LoadingCubit>(),
      get<_i18.StockMarketCubit>(),
      get<_i23.FreelanceDoneCubit>(),
      get<_i22.FameCubit>(),
      get<_i24.FreelanceJobCubit>(),
      get<_i12.TimeSpendCubit>(),
      get<_i27.LearningCubit>(),
      get<_i21.EventCubit>(),
      get<_i30.StatsCubit>(),
      get<_i29.MedicinesCubit>(),
      get<_i25.IncomeCubit>(),
      get<_i26.JobCubit>(),
      get<_i32.AssetsCubit>(),
      get<_i33.BuildAssetCubit>(),
      get<_i16.DepositCubit>(),
      get<_i28.LoanCubit>()));
  gh.lazySingleton<_i35.ExchangesCubit>(() => _i35.ExchangesCubit(
      get<_i9.NewGameCubit>(),
      get<_i34.DateCubit>(),
      get<_i18.StockMarketCubit>(),
      get<_i17.MoneyCubit>()));
  gh.lazySingleton<_i36.FoodCubit>(() => _i36.FoodCubit(
      get<_i25.IncomeCubit>(),
      get<_i15.DatabaseCubit>(),
      get<_i9.NewGameCubit>(),
      get<_i12.TimeSpendCubit>()));
  gh.lazySingleton<_i37.HouseCubit>(() => _i37.HouseCubit(
      get<_i17.MoneyCubit>(),
      get<_i12.TimeSpendCubit>(),
      get<_i25.IncomeCubit>(),
      get<_i9.NewGameCubit>(),
      get<_i15.DatabaseCubit>(),
      get<_i34.DateCubit>()));
  gh.lazySingleton<_i38.RulesCubit>(() => _i38.RulesCubit(
      get<_i17.MoneyCubit>(), get<_i30.StatsCubit>(), get<_i9.NewGameCubit>()));
  gh.factory<_i39.TransactionsCubit>(() => _i39.TransactionsCubit(
      get<_i34.DateCubit>(), get<_i13.TransactionsRepository>()));
  gh.lazySingleton<_i40.TransportCubit>(() => _i40.TransportCubit(
      get<_i17.MoneyCubit>(),
      get<_i25.IncomeCubit>(),
      get<_i12.TimeSpendCubit>(),
      get<_i9.NewGameCubit>(),
      get<_i34.DateCubit>()));
  return get;
}
