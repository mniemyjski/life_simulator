// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/assets/cubit/assets/assets_cubit.dart' as _i37;
import '../../app/assets/cubit/build/build_asset_cubit.dart' as _i38;
import '../../app/assets/cubit/buy/buy_asset_cubit.dart' as _i28;
import '../../app/assets/cubit/tenant/tenants_cubit.dart' as _i36;
import '../../app/bank/cubit/deposit/deposit_cubit.dart' as _i24;
import '../../app/bank/cubit/loan/loan_cubit.dart' as _i33;
import '../../app/business/cubit/balance_business/balance_business_cubit.dart'
    as _i49;
import '../../app/business/cubit/businesses/businesses_cubit.dart' as _i27;
import '../../app/business/cubit/employees_list/employees_cubit.dart' as _i40;
import '../../app/business/cubit/products/products_cubit.dart' as _i11;
import '../../app/business/cubit/research_product/research_product_cubit.dart'
    as _i20;
import '../../app/business/cubit/transactions_list/transactions_business_cubit.dart'
    as _i46;
import '../../app/business/services/business_service.dart' as _i16;
import '../../app/database/cubit/database_cubit.dart' as _i23;
import '../../app/date/cubit/date_cubit.dart' as _i39;
import '../../app/event/cubit/event_cubit.dart' as _i29;
import '../../app/freelance/cubit/done/freelance_done_cubit.dart' as _i17;
import '../../app/freelance/cubit/fame/fame_cubit.dart' as _i42;
import '../../app/freelance/cubit/job/freelance_job_cubit.dart' as _i25;
import '../../app/freelance/repositories/freelance_repository.dart' as _i9;
import '../../app/job/cubit/job_cubit.dart' as _i31;
import '../../app/learning/cubit/learning_cubit.dart' as _i32;
import '../../app/loading/cubit/loading_cubit.dart' as _i10;
import '../../app/medicines/cubit/medicines_cubit.dart' as _i34;
import '../../app/money/cubit/income/income_cubit.dart' as _i30;
import '../../app/money/cubit/money/money_cubit.dart' as _i26;
import '../../app/money/cubit/transactions/transactions_cubit.dart' as _i47;
import '../../app/new_game/new_game_cubit.dart' as _i19;
import '../../app/personality/cubit/food/food_cubit.dart' as _i43;
import '../../app/personality/cubit/house/house_cubit.dart' as _i44;
import '../../app/personality/cubit/transport/transport_cubit.dart' as _i48;
import '../../app/rules/cubit/rules_cubit.dart' as _i45;
import '../../app/settings/cubit/audio_cubit.dart' as _i4;
import '../../app/settings/cubit/dark_mode_cubit.dart' as _i6;
import '../../app/settings/cubit/day_setting_cubit.dart' as _i7;
import '../../app/skills/cubit/skills_cubit.dart' as _i21;
import '../../app/skills/repositories/skills_repository.dart' as _i12;
import '../../app/stats/cubit/stats_cubit.dart' as _i35;
import '../../app/stock_market/cubit/candles/candles_cubit.dart' as _i50;
import '../../app/stock_market/cubit/exchanges/exchanges_cubit.dart' as _i41;
import '../../app/stock_market/cubit/instruments/instruments_cubit.dart'
    as _i18;
import '../../app/stock_market/repositories/stock_market_repository.dart'
    as _i13;
import '../../app/time_spend/cubit/time_spend_cubit.dart' as _i22;
import '../../app/tutorial/cubit/tutorial_cubit.dart' as _i15;
import '../../repositories/businesses_repository.dart' as _i5;
import '../../repositories/employee_repository.dart' as _i8;
import '../../repositories/transactions_repository.dart' as _i14;
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
  gh.lazySingleton<_i13.StockMarketRepository>(
      () => _i13.StockMarketRepository());
  gh.lazySingleton<_i14.TransactionsRepository>(
      () => _i14.TransactionsRepository());
  gh.lazySingleton<_i15.TutorialCubit>(() => _i15.TutorialCubit());
  gh.lazySingleton<_i16.BusinessService>(() => _i16.BusinessService(
        get<_i5.BusinessesRepository>(),
        get<_i8.EmployeeRepository>(),
        get<_i14.TransactionsRepository>(),
      ));
  gh.factory<_i17.FreelanceDoneCubit>(
      () => _i17.FreelanceDoneCubit(get<_i9.FreelanceRepository>()));
  gh.factory<_i18.InstrumentsCubit>(
      () => _i18.InstrumentsCubit(get<_i13.StockMarketRepository>()));
  gh.lazySingleton<_i19.NewGameCubit>(() => _i19.NewGameCubit(
        get<_i13.StockMarketRepository>(),
        get<_i12.SkillsRepository>(),
      ));
  gh.lazySingleton<_i20.ResearchProductCubit>(
      () => _i20.ResearchProductCubit(get<_i19.NewGameCubit>()));
  gh.lazySingleton<_i21.SkillsCubit>(
      () => _i21.SkillsCubit(get<_i12.SkillsRepository>()));
  gh.lazySingleton<_i22.TimeSpendCubit>(
      () => _i22.TimeSpendCubit(get<_i19.NewGameCubit>()));
  gh.lazySingleton<_i23.DatabaseCubit>(
      () => _i23.DatabaseCubit(get<_i19.NewGameCubit>()));
  gh.lazySingleton<_i24.DepositCubit>(
      () => _i24.DepositCubit(get<_i19.NewGameCubit>()));
  gh.lazySingleton<_i25.FreelanceJobCubit>(() => _i25.FreelanceJobCubit(
        get<_i19.NewGameCubit>(),
        get<_i22.TimeSpendCubit>(),
        get<_i17.FreelanceDoneCubit>(),
        get<_i12.SkillsRepository>(),
      ));
  gh.lazySingleton<_i26.MoneyCubit>(() => _i26.MoneyCubit(
        get<_i14.TransactionsRepository>(),
        get<_i19.NewGameCubit>(),
      ));
  gh.lazySingleton<_i27.BusinessesCubit>(() => _i27.BusinessesCubit(
        get<_i19.NewGameCubit>(),
        get<_i5.BusinessesRepository>(),
        get<_i8.EmployeeRepository>(),
        get<_i26.MoneyCubit>(),
        get<_i14.TransactionsRepository>(),
        get<_i16.BusinessService>(),
      ));
  gh.lazySingleton<_i28.BuyAssetCubit>(() => _i28.BuyAssetCubit(
        get<_i19.NewGameCubit>(),
        get<_i23.DatabaseCubit>(),
      ));
  gh.lazySingleton<_i29.EventCubit>(() => _i29.EventCubit(
        get<_i19.NewGameCubit>(),
        get<_i23.DatabaseCubit>(),
        get<_i26.MoneyCubit>(),
      ));
  gh.lazySingleton<_i30.IncomeCubit>(() => _i30.IncomeCubit(
        get<_i26.MoneyCubit>(),
        get<_i19.NewGameCubit>(),
      ));
  gh.lazySingleton<_i31.JobCubit>(() => _i31.JobCubit(
        get<_i19.NewGameCubit>(),
        get<_i30.IncomeCubit>(),
        get<_i22.TimeSpendCubit>(),
        get<_i12.SkillsRepository>(),
      ));
  gh.lazySingleton<_i32.LearningCubit>(() => _i32.LearningCubit(
        get<_i19.NewGameCubit>(),
        get<_i12.SkillsRepository>(),
        get<_i26.MoneyCubit>(),
        get<_i22.TimeSpendCubit>(),
      ));
  gh.lazySingleton<_i33.LoanCubit>(() => _i33.LoanCubit(
        get<_i26.MoneyCubit>(),
        get<_i19.NewGameCubit>(),
      ));
  gh.lazySingleton<_i34.MedicinesCubit>(() => _i34.MedicinesCubit(
        get<_i26.MoneyCubit>(),
        get<_i19.NewGameCubit>(),
        get<_i23.DatabaseCubit>(),
      ));
  gh.lazySingleton<_i35.StatsCubit>(() => _i35.StatsCubit(
        get<_i19.NewGameCubit>(),
        get<_i22.TimeSpendCubit>(),
        get<_i29.EventCubit>(),
        get<_i34.MedicinesCubit>(),
      ));
  gh.lazySingleton<_i36.TenantsCubit>(() => _i36.TenantsCubit(
        get<_i19.NewGameCubit>(),
        get<_i23.DatabaseCubit>(),
        get<_i30.IncomeCubit>(),
      ));
  gh.lazySingleton<_i37.AssetsCubit>(() => _i37.AssetsCubit(
        get<_i19.NewGameCubit>(),
        get<_i26.MoneyCubit>(),
        get<_i28.BuyAssetCubit>(),
        get<_i36.TenantsCubit>(),
        get<_i30.IncomeCubit>(),
      ));
  gh.lazySingleton<_i38.BuildAssetCubit>(() => _i38.BuildAssetCubit(
        get<_i19.NewGameCubit>(),
        get<_i26.MoneyCubit>(),
        get<_i37.AssetsCubit>(),
      ));
  gh.lazySingleton<_i39.DateCubit>(() => _i39.DateCubit(
        get<_i19.NewGameCubit>(),
        get<_i7.DaySettingCubit>(),
        get<_i10.LoadingCubit>(),
        get<_i13.StockMarketRepository>(),
        get<_i25.FreelanceJobCubit>(),
        get<_i22.TimeSpendCubit>(),
        get<_i32.LearningCubit>(),
        get<_i29.EventCubit>(),
        get<_i35.StatsCubit>(),
        get<_i34.MedicinesCubit>(),
        get<_i30.IncomeCubit>(),
        get<_i31.JobCubit>(),
        get<_i37.AssetsCubit>(),
        get<_i38.BuildAssetCubit>(),
        get<_i24.DepositCubit>(),
        get<_i33.LoanCubit>(),
        get<_i27.BusinessesCubit>(),
        get<_i9.FreelanceRepository>(),
      ));
  gh.factoryParam<_i40.EmployeesCubit, int, dynamic>((
    businessId,
    _,
  ) =>
      _i40.EmployeesCubit(
        get<_i39.DateCubit>(),
        get<_i5.BusinessesRepository>(),
        businessId,
        get<_i8.EmployeeRepository>(),
      ));
  gh.factoryParam<_i41.ExchangesCubit, int, dynamic>((
    instrumentId,
    _,
  ) =>
      _i41.ExchangesCubit(
        instrumentId,
        get<_i13.StockMarketRepository>(),
        get<_i39.DateCubit>(),
        get<_i14.TransactionsRepository>(),
      ));
  gh.factory<_i42.FameCubit>(() => _i42.FameCubit(
        get<_i9.FreelanceRepository>(),
        get<_i39.DateCubit>(),
      ));
  gh.lazySingleton<_i43.FoodCubit>(() => _i43.FoodCubit(
        get<_i30.IncomeCubit>(),
        get<_i23.DatabaseCubit>(),
        get<_i19.NewGameCubit>(),
        get<_i22.TimeSpendCubit>(),
      ));
  gh.lazySingleton<_i44.HouseCubit>(() => _i44.HouseCubit(
        get<_i26.MoneyCubit>(),
        get<_i22.TimeSpendCubit>(),
        get<_i30.IncomeCubit>(),
        get<_i19.NewGameCubit>(),
        get<_i23.DatabaseCubit>(),
        get<_i39.DateCubit>(),
      ));
  gh.lazySingleton<_i45.RulesCubit>(() => _i45.RulesCubit(
        get<_i26.MoneyCubit>(),
        get<_i35.StatsCubit>(),
        get<_i19.NewGameCubit>(),
      ));
  gh.factoryParam<_i46.TransactionsBusinessCubit, int, dynamic>((
    businessId,
    _,
  ) =>
      _i46.TransactionsBusinessCubit(
        get<_i39.DateCubit>(),
        get<_i14.TransactionsRepository>(),
        businessId,
      ));
  gh.factory<_i47.TransactionsCubit>(() => _i47.TransactionsCubit(
        get<_i39.DateCubit>(),
        get<_i14.TransactionsRepository>(),
      ));
  gh.lazySingleton<_i48.TransportCubit>(() => _i48.TransportCubit(
        get<_i26.MoneyCubit>(),
        get<_i30.IncomeCubit>(),
        get<_i22.TimeSpendCubit>(),
        get<_i19.NewGameCubit>(),
        get<_i39.DateCubit>(),
      ));
  gh.factoryParam<_i49.BalanceBusinessCubit, int, dynamic>((
    businessId,
    _,
  ) =>
      _i49.BalanceBusinessCubit(
        get<_i14.TransactionsRepository>(),
        get<_i39.DateCubit>(),
        businessId,
      ));
  gh.factory<_i50.CandlesCubit>(() => _i50.CandlesCubit(
        get<_i13.StockMarketRepository>(),
        get<_i39.DateCubit>(),
      ));
  return get;
}
