// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/assets/cubit/assets/assets_cubit.dart' as _i44;
import '../../app/assets/cubit/build/build_asset_cubit.dart' as _i45;
import '../../app/assets/cubit/buy/buy_asset_cubit.dart' as _i41;
import '../../app/assets/cubit/tenant/tenants_cubit.dart' as _i40;
import '../../app/bank/cubit/deposit/deposit_cubit.dart' as _i31;
import '../../app/bank/cubit/loan/loan_cubit.dart' as _i37;
import '../../app/business/cubit/balance_business/balance_business_cubit.dart'
    as _i56;
import '../../app/business/cubit/businesses_list/businesses_cubit.dart' as _i29;
import '../../app/business/cubit/employees_list/employees_cubit.dart' as _i47;
import '../../app/business/cubit/human_resources/human_resources_cubit.dart'
    as _i10;
import '../../app/business/cubit/product_details/product_details_cubit.dart'
    as _i14;
import '../../app/business/cubit/products_list/products_cubit.dart' as _i51;
import '../../app/business/cubit/research_product/research_product_cubit.dart'
    as _i52;
import '../../app/business/cubit/transactions_list/transactions_business_cubit.dart'
    as _i53;
import '../../app/business/repositories/businesses_repository.dart' as _i5;
import '../../app/business/repositories/employee_repository.dart' as _i8;
import '../../app/business/repositories/products_repository.dart' as _i15;
import '../../app/business/repositories/research_repository.dart' as _i16;
import '../../app/database/cubit/database_cubit.dart' as _i30;
import '../../app/date/cubit/date_cubit.dart' as _i46;
import '../../app/event/cubit/event_cubit.dart' as _i32;
import '../../app/freelance/cubit/done/freelance_done_cubit.dart' as _i23;
import '../../app/freelance/cubit/fame/fame_cubit.dart' as _i49;
import '../../app/freelance/cubit/job/freelance_job_cubit.dart' as _i33;
import '../../app/freelance/repositories/freelance_repository.dart' as _i9;
import '../../app/job/cubit/job_cubit.dart' as _i35;
import '../../app/learning/cubit/learning_cubit.dart' as _i36;
import '../../app/loading/cubit/loading_cubit.dart' as _i12;
import '../../app/medicines/cubit/medicines_cubit.dart' as _i38;
import '../../app/money/cubit/income/income_cubit.dart' as _i34;
import '../../app/money/cubit/money/money_cubit.dart' as _i25;
import '../../app/money/cubit/transactions/transactions_cubit.dart' as _i54;
import '../../app/money/repositories/income_repository.dart' as _i11;
import '../../app/money/repositories/transactions_repository.dart' as _i21;
import '../../app/new_game/new_game_cubit.dart' as _i26;
import '../../app/personality/cubit/food/food_cubit.dart' as _i42;
import '../../app/personality/cubit/house/house_cubit.dart' as _i50;
import '../../app/personality/cubit/transport/transport_cubit.dart' as _i55;
import '../../app/personality/repositories/personality_repository.dart' as _i13;
import '../../app/rules/cubit/rules_cubit.dart' as _i43;
import '../../app/settings/cubit/audio_cubit.dart' as _i4;
import '../../app/settings/cubit/dark_mode_cubit.dart' as _i6;
import '../../app/settings/cubit/day_setting_cubit.dart' as _i7;
import '../../app/skills/cubit/skills_cubit.dart' as _i27;
import '../../app/skills/repositories/skills_repository.dart' as _i17;
import '../../app/stats/cubit/stats_cubit.dart' as _i39;
import '../../app/stats/repositories/stats_repository.dart' as _i18;
import '../../app/stock_market/cubit/candles/candles_cubit.dart' as _i57;
import '../../app/stock_market/cubit/exchanges/exchanges_cubit.dart' as _i48;
import '../../app/stock_market/cubit/instruments/instruments_cubit.dart'
    as _i24;
import '../../app/stock_market/repositories/stock_market_repository.dart'
    as _i19;
import '../../app/time_spend/cubit/time_spend_cubit.dart' as _i28;
import '../../app/time_spend/repositories/time_spend_repository.dart' as _i20;
import '../../app/tutorial/cubit/tutorial_cubit.dart' as _i22;
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
  gh.factoryParam<_i10.HumanResourcesCubit, int, dynamic>((
    businessId,
    _,
  ) =>
      _i10.HumanResourcesCubit(
        businessId,
        get<_i8.EmployeeRepository>(),
      ));
  gh.lazySingleton<_i11.IncomeRepository>(() => _i11.IncomeRepository());
  gh.lazySingleton<_i12.LoadingCubit>(() => _i12.LoadingCubit());
  gh.lazySingleton<_i13.PersonalityRepository>(
      () => _i13.PersonalityRepository());
  gh.factoryParam<_i14.ProductDetailsCubit, int, int>((
    businessId,
    productId,
  ) =>
      _i14.ProductDetailsCubit(
        get<_i8.EmployeeRepository>(),
        businessId,
        productId,
      ));
  gh.lazySingleton<_i15.ProductsRepository>(() => _i15.ProductsRepository());
  gh.lazySingleton<_i16.ResearchRepository>(() => _i16.ResearchRepository());
  gh.lazySingleton<_i17.SkillsRepository>(() => _i17.SkillsRepository());
  gh.lazySingleton<_i18.StatsRepository>(() => _i18.StatsRepository());
  gh.lazySingleton<_i19.StockMarketRepository>(
      () => _i19.StockMarketRepository());
  gh.lazySingleton<_i20.TimeSpendRepository>(() => _i20.TimeSpendRepository());
  gh.lazySingleton<_i21.TransactionsRepository>(
      () => _i21.TransactionsRepository());
  gh.lazySingleton<_i22.TutorialCubit>(() => _i22.TutorialCubit());
  gh.factory<_i23.FreelanceDoneCubit>(
      () => _i23.FreelanceDoneCubit(get<_i9.FreelanceRepository>()));
  gh.factory<_i24.InstrumentsCubit>(
      () => _i24.InstrumentsCubit(get<_i19.StockMarketRepository>()));
  gh.lazySingleton<_i25.MoneyCubit>(
      () => _i25.MoneyCubit(get<_i21.TransactionsRepository>()));
  gh.lazySingleton<_i26.NewGameCubit>(() => _i26.NewGameCubit(
        get<_i19.StockMarketRepository>(),
        get<_i17.SkillsRepository>(),
        get<_i20.TimeSpendRepository>(),
        get<_i21.TransactionsRepository>(),
      ));
  gh.factory<_i27.SkillsCubit>(
      () => _i27.SkillsCubit(get<_i17.SkillsRepository>()));
  gh.factory<_i28.TimeSpendCubit>(
      () => _i28.TimeSpendCubit(get<_i20.TimeSpendRepository>()));
  gh.lazySingleton<_i29.BusinessesCubit>(() => _i29.BusinessesCubit(
        get<_i26.NewGameCubit>(),
        get<_i5.BusinessesRepository>(),
      ));
  gh.lazySingleton<_i30.DatabaseCubit>(
      () => _i30.DatabaseCubit(get<_i26.NewGameCubit>()));
  gh.lazySingleton<_i31.DepositCubit>(
      () => _i31.DepositCubit(get<_i26.NewGameCubit>()));
  gh.lazySingleton<_i32.EventCubit>(() => _i32.EventCubit(
        get<_i26.NewGameCubit>(),
        get<_i30.DatabaseCubit>(),
        get<_i25.MoneyCubit>(),
      ));
  gh.lazySingleton<_i33.FreelanceJobCubit>(() => _i33.FreelanceJobCubit(
        get<_i26.NewGameCubit>(),
        get<_i17.SkillsRepository>(),
        get<_i20.TimeSpendRepository>(),
        get<_i9.FreelanceRepository>(),
      ));
  gh.lazySingleton<_i34.IncomeCubit>(() => _i34.IncomeCubit(
        get<_i25.MoneyCubit>(),
        get<_i26.NewGameCubit>(),
      ));
  gh.lazySingleton<_i35.JobCubit>(() => _i35.JobCubit(
        get<_i26.NewGameCubit>(),
        get<_i34.IncomeCubit>(),
        get<_i17.SkillsRepository>(),
        get<_i20.TimeSpendRepository>(),
      ));
  gh.lazySingleton<_i36.LearningCubit>(() => _i36.LearningCubit(
        get<_i26.NewGameCubit>(),
        get<_i17.SkillsRepository>(),
        get<_i25.MoneyCubit>(),
        get<_i20.TimeSpendRepository>(),
      ));
  gh.lazySingleton<_i37.LoanCubit>(() => _i37.LoanCubit(
        get<_i25.MoneyCubit>(),
        get<_i26.NewGameCubit>(),
      ));
  gh.lazySingleton<_i38.MedicinesCubit>(() => _i38.MedicinesCubit(
        get<_i25.MoneyCubit>(),
        get<_i26.NewGameCubit>(),
        get<_i30.DatabaseCubit>(),
      ));
  gh.lazySingleton<_i39.StatsCubit>(() => _i39.StatsCubit(
        get<_i26.NewGameCubit>(),
        get<_i32.EventCubit>(),
        get<_i38.MedicinesCubit>(),
        get<_i20.TimeSpendRepository>(),
      ));
  gh.lazySingleton<_i40.TenantsCubit>(() => _i40.TenantsCubit(
        get<_i26.NewGameCubit>(),
        get<_i30.DatabaseCubit>(),
        get<_i34.IncomeCubit>(),
      ));
  gh.lazySingleton<_i41.BuyAssetCubit>(() => _i41.BuyAssetCubit(
        get<_i26.NewGameCubit>(),
        get<_i30.DatabaseCubit>(),
      ));
  gh.lazySingleton<_i42.FoodCubit>(() => _i42.FoodCubit(
        get<_i34.IncomeCubit>(),
        get<_i30.DatabaseCubit>(),
        get<_i26.NewGameCubit>(),
        get<_i20.TimeSpendRepository>(),
      ));
  gh.lazySingleton<_i43.RulesCubit>(() => _i43.RulesCubit(
        get<_i25.MoneyCubit>(),
        get<_i39.StatsCubit>(),
        get<_i26.NewGameCubit>(),
      ));
  gh.lazySingleton<_i44.AssetsCubit>(() => _i44.AssetsCubit(
        get<_i26.NewGameCubit>(),
        get<_i25.MoneyCubit>(),
        get<_i41.BuyAssetCubit>(),
        get<_i40.TenantsCubit>(),
        get<_i34.IncomeCubit>(),
      ));
  gh.lazySingleton<_i45.BuildAssetCubit>(() => _i45.BuildAssetCubit(
        get<_i26.NewGameCubit>(),
        get<_i25.MoneyCubit>(),
        get<_i44.AssetsCubit>(),
      ));
  gh.lazySingleton<_i46.DateCubit>(() => _i46.DateCubit(
        get<_i26.NewGameCubit>(),
        get<_i7.DaySettingCubit>(),
        get<_i12.LoadingCubit>(),
        get<_i19.StockMarketRepository>(),
        get<_i33.FreelanceJobCubit>(),
        get<_i36.LearningCubit>(),
        get<_i32.EventCubit>(),
        get<_i39.StatsCubit>(),
        get<_i38.MedicinesCubit>(),
        get<_i34.IncomeCubit>(),
        get<_i35.JobCubit>(),
        get<_i44.AssetsCubit>(),
        get<_i45.BuildAssetCubit>(),
        get<_i31.DepositCubit>(),
        get<_i37.LoanCubit>(),
        get<_i9.FreelanceRepository>(),
        get<_i20.TimeSpendRepository>(),
        get<_i16.ResearchRepository>(),
        get<_i8.EmployeeRepository>(),
      ));
  gh.factoryParam<_i47.EmployeesCubit, int, dynamic>((
    businessId,
    _,
  ) =>
      _i47.EmployeesCubit(
        get<_i46.DateCubit>(),
        get<_i5.BusinessesRepository>(),
        businessId,
        get<_i8.EmployeeRepository>(),
      ));
  gh.factoryParam<_i48.ExchangesCubit, int, dynamic>((
    instrumentId,
    _,
  ) =>
      _i48.ExchangesCubit(
        instrumentId,
        get<_i19.StockMarketRepository>(),
        get<_i46.DateCubit>(),
        get<_i21.TransactionsRepository>(),
      ));
  gh.factory<_i49.FameCubit>(() => _i49.FameCubit(
        get<_i9.FreelanceRepository>(),
        get<_i46.DateCubit>(),
      ));
  gh.lazySingleton<_i50.HouseCubit>(() => _i50.HouseCubit(
        get<_i25.MoneyCubit>(),
        get<_i34.IncomeCubit>(),
        get<_i26.NewGameCubit>(),
        get<_i30.DatabaseCubit>(),
        get<_i46.DateCubit>(),
        get<_i20.TimeSpendRepository>(),
      ));
  gh.factoryParam<_i51.ProductsCubit, int, dynamic>((
    businessId,
    _,
  ) =>
      _i51.ProductsCubit(
        get<_i15.ProductsRepository>(),
        businessId,
        get<_i46.DateCubit>(),
      ));
  gh.factoryParam<_i52.ResearchProductCubit, int, dynamic>((
    businessId,
    _,
  ) =>
      _i52.ResearchProductCubit(
        get<_i16.ResearchRepository>(),
        get<_i46.DateCubit>(),
        businessId,
      ));
  gh.factoryParam<_i53.TransactionsBusinessCubit, int, dynamic>((
    businessId,
    _,
  ) =>
      _i53.TransactionsBusinessCubit(
        get<_i46.DateCubit>(),
        get<_i21.TransactionsRepository>(),
        businessId,
      ));
  gh.factory<_i54.TransactionsCubit>(() => _i54.TransactionsCubit(
        get<_i46.DateCubit>(),
        get<_i21.TransactionsRepository>(),
      ));
  gh.lazySingleton<_i55.TransportCubit>(() => _i55.TransportCubit(
        get<_i25.MoneyCubit>(),
        get<_i34.IncomeCubit>(),
        get<_i26.NewGameCubit>(),
        get<_i46.DateCubit>(),
        get<_i20.TimeSpendRepository>(),
      ));
  gh.factoryParam<_i56.BalanceBusinessCubit, int, dynamic>((
    businessId,
    _,
  ) =>
      _i56.BalanceBusinessCubit(
        get<_i21.TransactionsRepository>(),
        get<_i46.DateCubit>(),
        businessId,
      ));
  gh.factory<_i57.CandlesCubit>(() => _i57.CandlesCubit(
        get<_i19.StockMarketRepository>(),
        get<_i46.DateCubit>(),
      ));
  return get;
}
