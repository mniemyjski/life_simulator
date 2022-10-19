// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/assets/cubit/assets/assets_cubit.dart' as _i39;
import '../../app/assets/cubit/build/build_asset_cubit.dart' as _i40;
import '../../app/assets/cubit/buy/buy_asset_cubit.dart' as _i30;
import '../../app/assets/cubit/tenant/tenants_cubit.dart' as _i38;
import '../../app/bank/cubit/deposit/deposit_cubit.dart' as _i26;
import '../../app/bank/cubit/loan/loan_cubit.dart' as _i35;
import '../../app/business/cubit/balance_business/balance_business_cubit.dart'
    as _i51;
import '../../app/business/cubit/businesses/businesses_cubit.dart' as _i29;
import '../../app/business/cubit/employees_list/employees_cubit.dart' as _i42;
import '../../app/business/cubit/products/products_cubit.dart' as _i11;
import '../../app/business/cubit/research_product/research_product_cubit.dart'
    as _i22;
import '../../app/business/cubit/transactions_list/transactions_business_cubit.dart'
    as _i48;
import '../../app/business/services/business_service.dart' as _i18;
import '../../app/database/cubit/database_cubit.dart' as _i25;
import '../../app/date/cubit/date_cubit.dart' as _i41;
import '../../app/event/cubit/event_cubit.dart' as _i31;
import '../../app/freelance/cubit/done/freelance_done_cubit.dart' as _i19;
import '../../app/freelance/cubit/fame/fame_cubit.dart' as _i44;
import '../../app/freelance/cubit/job/freelance_job_cubit.dart' as _i27;
import '../../app/freelance/repositories/freelance_repository.dart' as _i9;
import '../../app/job/cubit/job_cubit.dart' as _i33;
import '../../app/learning/cubit/learning_cubit.dart' as _i34;
import '../../app/loading/cubit/loading_cubit.dart' as _i10;
import '../../app/medicines/cubit/medicines_cubit.dart' as _i36;
import '../../app/money/cubit/income/income_cubit.dart' as _i32;
import '../../app/money/cubit/money/money_cubit.dart' as _i28;
import '../../app/money/cubit/transactions/transactions_cubit.dart' as _i49;
import '../../app/new_game/new_game_cubit.dart' as _i21;
import '../../app/personality/cubit/food/food_cubit.dart' as _i45;
import '../../app/personality/cubit/house/house_cubit.dart' as _i46;
import '../../app/personality/cubit/transport/transport_cubit.dart' as _i50;
import '../../app/rules/cubit/rules_cubit.dart' as _i47;
import '../../app/settings/cubit/audio_cubit.dart' as _i4;
import '../../app/settings/cubit/dark_mode_cubit.dart' as _i6;
import '../../app/settings/cubit/day_setting_cubit.dart' as _i7;
import '../../app/skills/cubit/skills_cubit.dart' as _i23;
import '../../app/skills/repositories/skills_repository.dart' as _i12;
import '../../app/stats/cubit/stats_cubit.dart' as _i37;
import '../../app/stock_market/cubit/candles/candles_cubit.dart' as _i52;
import '../../app/stock_market/cubit/exchanges/exchanges_cubit.dart' as _i43;
import '../../app/stock_market/cubit/instruments/instruments_cubit.dart'
    as _i20;
import '../../app/stock_market/repositories/stock_market_repository.dart'
    as _i14;
import '../../app/time_spend/cubit/time_spend_cubit.dart' as _i24;
import '../../app/tutorial/cubit/tutorial_cubit.dart' as _i17;
import '../../repositories/businesses_repository.dart' as _i5;
import '../../repositories/employee_repository.dart' as _i8;
import '../../repositories/stats_repository.dart' as _i13;
import '../../repositories/time_spend_repository.dart' as _i15;
import '../../repositories/transactions_repository.dart' as _i16;
import 'app_module.dart' as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.AppModule>(() => _i3.AppModule());
  gh.lazySingleton<_i4.AudioCubit>(() => _i4.AudioCubit());
  gh.lazySingleton<_i5.BusinessesRepository>(() => _i5.BusinessesRepository());
  gh.lazySingleton<_i6.DarkModeCubit>(() => _i6.DarkModeCubit());
  gh.lazySingleton<_i7.DaySettingCubit>(() => _i7.DaySettingCubit());
  gh.lazySingleton<_i8.EmployeeRepository>(() => _i8.EmployeeRepository());
  gh.lazySingleton<_i9.FreelanceRepository>(() => _i9.FreelanceRepository());
  gh.lazySingleton<_i10.LoadingCubit>(() => _i10.LoadingCubit());
  gh.lazySingleton<_i11.ProductsCubit>(() => _i11.ProductsCubit());
  gh.lazySingleton<_i12.SkillsRepository>(() => _i12.SkillsRepository());
  gh.lazySingleton<_i13.StatsRepository>(() => _i13.StatsRepository());
  gh.lazySingleton<_i14.StockMarketRepository>(
      () => _i14.StockMarketRepository());
  gh.lazySingleton<_i15.TimeSpendRepository>(() => _i15.TimeSpendRepository());
  gh.lazySingleton<_i16.TransactionsRepository>(
      () => _i16.TransactionsRepository());
  gh.lazySingleton<_i17.TutorialCubit>(() => _i17.TutorialCubit());
  gh.lazySingleton<_i18.BusinessService>(() => _i18.BusinessService(
        get<_i5.BusinessesRepository>(),
        get<_i8.EmployeeRepository>(),
        get<_i16.TransactionsRepository>(),
      ));
  gh.factory<_i19.FreelanceDoneCubit>(
      () => _i19.FreelanceDoneCubit(get<_i9.FreelanceRepository>()));
  gh.factory<_i20.InstrumentsCubit>(
      () => _i20.InstrumentsCubit(get<_i14.StockMarketRepository>()));
  gh.lazySingleton<_i21.NewGameCubit>(() => _i21.NewGameCubit(
        get<_i14.StockMarketRepository>(),
        get<_i12.SkillsRepository>(),
        get<_i15.TimeSpendRepository>(),
      ));
  gh.lazySingleton<_i22.ResearchProductCubit>(
      () => _i22.ResearchProductCubit(get<_i21.NewGameCubit>()));
  gh.factory<_i23.SkillsCubit>(
      () => _i23.SkillsCubit(get<_i12.SkillsRepository>()));
  gh.factory<_i24.TimeSpendCubit>(
      () => _i24.TimeSpendCubit(get<_i15.TimeSpendRepository>()));
  gh.lazySingleton<_i25.DatabaseCubit>(
      () => _i25.DatabaseCubit(get<_i21.NewGameCubit>()));
  gh.lazySingleton<_i26.DepositCubit>(
      () => _i26.DepositCubit(get<_i21.NewGameCubit>()));
  gh.lazySingleton<_i27.FreelanceJobCubit>(() => _i27.FreelanceJobCubit(
        get<_i21.NewGameCubit>(),
        get<_i19.FreelanceDoneCubit>(),
        get<_i12.SkillsRepository>(),
        get<_i15.TimeSpendRepository>(),
      ));
  gh.lazySingleton<_i28.MoneyCubit>(() => _i28.MoneyCubit(
        get<_i16.TransactionsRepository>(),
        get<_i21.NewGameCubit>(),
      ));
  gh.lazySingleton<_i29.BusinessesCubit>(() => _i29.BusinessesCubit(
        get<_i21.NewGameCubit>(),
        get<_i5.BusinessesRepository>(),
        get<_i8.EmployeeRepository>(),
        get<_i28.MoneyCubit>(),
        get<_i16.TransactionsRepository>(),
        get<_i18.BusinessService>(),
      ));
  gh.lazySingleton<_i30.BuyAssetCubit>(() => _i30.BuyAssetCubit(
        get<_i21.NewGameCubit>(),
        get<_i25.DatabaseCubit>(),
      ));
  gh.lazySingleton<_i31.EventCubit>(() => _i31.EventCubit(
        get<_i21.NewGameCubit>(),
        get<_i25.DatabaseCubit>(),
        get<_i28.MoneyCubit>(),
      ));
  gh.lazySingleton<_i32.IncomeCubit>(() => _i32.IncomeCubit(
        get<_i28.MoneyCubit>(),
        get<_i21.NewGameCubit>(),
      ));
  gh.lazySingleton<_i33.JobCubit>(() => _i33.JobCubit(
        get<_i21.NewGameCubit>(),
        get<_i32.IncomeCubit>(),
        get<_i12.SkillsRepository>(),
        get<_i15.TimeSpendRepository>(),
      ));
  gh.lazySingleton<_i34.LearningCubit>(() => _i34.LearningCubit(
        get<_i21.NewGameCubit>(),
        get<_i12.SkillsRepository>(),
        get<_i28.MoneyCubit>(),
        get<_i15.TimeSpendRepository>(),
      ));
  gh.lazySingleton<_i35.LoanCubit>(() => _i35.LoanCubit(
        get<_i28.MoneyCubit>(),
        get<_i21.NewGameCubit>(),
      ));
  gh.lazySingleton<_i36.MedicinesCubit>(() => _i36.MedicinesCubit(
        get<_i28.MoneyCubit>(),
        get<_i21.NewGameCubit>(),
        get<_i25.DatabaseCubit>(),
      ));
  gh.lazySingleton<_i37.StatsCubit>(() => _i37.StatsCubit(
        get<_i21.NewGameCubit>(),
        get<_i31.EventCubit>(),
        get<_i36.MedicinesCubit>(),
        get<_i15.TimeSpendRepository>(),
      ));
  gh.lazySingleton<_i38.TenantsCubit>(() => _i38.TenantsCubit(
        get<_i21.NewGameCubit>(),
        get<_i25.DatabaseCubit>(),
        get<_i32.IncomeCubit>(),
      ));
  gh.lazySingleton<_i39.AssetsCubit>(() => _i39.AssetsCubit(
        get<_i21.NewGameCubit>(),
        get<_i28.MoneyCubit>(),
        get<_i30.BuyAssetCubit>(),
        get<_i38.TenantsCubit>(),
        get<_i32.IncomeCubit>(),
      ));
  gh.lazySingleton<_i40.BuildAssetCubit>(() => _i40.BuildAssetCubit(
        get<_i21.NewGameCubit>(),
        get<_i28.MoneyCubit>(),
        get<_i39.AssetsCubit>(),
      ));
  gh.lazySingleton<_i41.DateCubit>(() => _i41.DateCubit(
        get<_i21.NewGameCubit>(),
        get<_i7.DaySettingCubit>(),
        get<_i10.LoadingCubit>(),
        get<_i14.StockMarketRepository>(),
        get<_i27.FreelanceJobCubit>(),
        get<_i34.LearningCubit>(),
        get<_i31.EventCubit>(),
        get<_i37.StatsCubit>(),
        get<_i36.MedicinesCubit>(),
        get<_i32.IncomeCubit>(),
        get<_i33.JobCubit>(),
        get<_i39.AssetsCubit>(),
        get<_i40.BuildAssetCubit>(),
        get<_i26.DepositCubit>(),
        get<_i35.LoanCubit>(),
        get<_i29.BusinessesCubit>(),
        get<_i9.FreelanceRepository>(),
        get<_i15.TimeSpendRepository>(),
      ));
  gh.factoryParam<_i42.EmployeesCubit, int, dynamic>((
    businessId,
    _,
  ) =>
      _i42.EmployeesCubit(
        get<_i41.DateCubit>(),
        get<_i5.BusinessesRepository>(),
        businessId,
        get<_i8.EmployeeRepository>(),
      ));
  gh.factoryParam<_i43.ExchangesCubit, int, dynamic>((
    instrumentId,
    _,
  ) =>
      _i43.ExchangesCubit(
        instrumentId,
        get<_i14.StockMarketRepository>(),
        get<_i41.DateCubit>(),
        get<_i16.TransactionsRepository>(),
      ));
  gh.factory<_i44.FameCubit>(() => _i44.FameCubit(
        get<_i9.FreelanceRepository>(),
        get<_i41.DateCubit>(),
      ));
  gh.lazySingleton<_i45.FoodCubit>(() => _i45.FoodCubit(
        get<_i32.IncomeCubit>(),
        get<_i25.DatabaseCubit>(),
        get<_i21.NewGameCubit>(),
        get<_i15.TimeSpendRepository>(),
      ));
  gh.lazySingleton<_i46.HouseCubit>(() => _i46.HouseCubit(
        get<_i28.MoneyCubit>(),
        get<_i32.IncomeCubit>(),
        get<_i21.NewGameCubit>(),
        get<_i25.DatabaseCubit>(),
        get<_i41.DateCubit>(),
        get<_i15.TimeSpendRepository>(),
      ));
  gh.lazySingleton<_i47.RulesCubit>(() => _i47.RulesCubit(
        get<_i28.MoneyCubit>(),
        get<_i37.StatsCubit>(),
        get<_i21.NewGameCubit>(),
      ));
  gh.factoryParam<_i48.TransactionsBusinessCubit, int, dynamic>((
    businessId,
    _,
  ) =>
      _i48.TransactionsBusinessCubit(
        get<_i41.DateCubit>(),
        get<_i16.TransactionsRepository>(),
        businessId,
      ));
  gh.factory<_i49.TransactionsCubit>(() => _i49.TransactionsCubit(
        get<_i41.DateCubit>(),
        get<_i16.TransactionsRepository>(),
      ));
  gh.lazySingleton<_i50.TransportCubit>(() => _i50.TransportCubit(
        get<_i28.MoneyCubit>(),
        get<_i32.IncomeCubit>(),
        get<_i21.NewGameCubit>(),
        get<_i41.DateCubit>(),
        get<_i15.TimeSpendRepository>(),
      ));
  gh.factoryParam<_i51.BalanceBusinessCubit, int, dynamic>((
    businessId,
    _,
  ) =>
      _i51.BalanceBusinessCubit(
        get<_i16.TransactionsRepository>(),
        get<_i41.DateCubit>(),
        businessId,
      ));
  gh.factory<_i52.CandlesCubit>(() => _i52.CandlesCubit(
        get<_i14.StockMarketRepository>(),
        get<_i41.DateCubit>(),
      ));
  return get;
}
