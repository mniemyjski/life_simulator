// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/assets/cubit/assets/assets_cubit.dart' as _i34;
import '../../app/assets/cubit/build/build_asset_cubit.dart' as _i35;
import '../../app/assets/cubit/buy/buy_asset_cubit.dart' as _i22;
import '../../app/assets/cubit/tenant/tenants_cubit.dart' as _i33;
import '../../app/bank/cubit/deposit/deposit_cubit.dart' as _i18;
import '../../app/bank/cubit/loan/loan_cubit.dart' as _i30;
import '../../app/business/cubit/balance_business/balance_business_cubit.dart'
    as _i45;
import '../../app/business/cubit/businesses/businesses_cubit.dart' as _i21;
import '../../app/business/cubit/employees_list/employees_cubit.dart' as _i37;
import '../../app/business/cubit/transactions_list/transactions_business_cubit.dart'
    as _i42;
import '../../app/database/cubit/database_cubit.dart' as _i17;
import '../../app/date/cubit/date_cubit.dart' as _i36;
import '../../app/event/cubit/event_cubit.dart' as _i23;
import '../../app/freelance/cubit/done/freelance_done_cubit.dart' as _i25;
import '../../app/freelance/cubit/fame/fame_cubit.dart' as _i24;
import '../../app/freelance/cubit/job/freelance_job_cubit.dart' as _i26;
import '../../app/job/cubit/job_cubit.dart' as _i28;
import '../../app/learning/cubit/learning_cubit.dart' as _i29;
import '../../app/loading/cubit/loading_cubit.dart' as _i10;
import '../../app/medicines/cubit/medicines_cubit.dart' as _i31;
import '../../app/money/cubit/income/income_cubit.dart' as _i27;
import '../../app/money/cubit/money/money_cubit.dart' as _i19;
import '../../app/money/cubit/transactions/transactions_cubit.dart' as _i43;
import '../../app/new_game/new_game_cubit.dart' as _i11;
import '../../app/personality/cubit/food/food_cubit.dart' as _i39;
import '../../app/personality/cubit/house/house_cubit.dart' as _i40;
import '../../app/personality/cubit/transport/transport_cubit.dart' as _i44;
import '../../app/rules/cubit/rules_cubit.dart' as _i41;
import '../../app/settings/cubit/audio_cubit.dart' as _i4;
import '../../app/settings/cubit/dark_mode_cubit.dart' as _i6;
import '../../app/settings/cubit/day_setting_cubit.dart' as _i7;
import '../../app/skills/cubit/skills_cubit.dart' as _i12;
import '../../app/stats/cubit/stats_cubit.dart' as _i32;
import '../../app/stock_market/cubit/candles/candles_cubit.dart' as _i46;
import '../../app/stock_market/cubit/exchanges/exchanges_cubit.dart' as _i38;
import '../../app/stock_market/cubit/stock_market/stock_market_cubit.dart'
    as _i20;
import '../../app/time_spend/cubit/time_spend_cubit.dart' as _i14;
import '../../app/tutorial/cubit/tutorial_cubit.dart' as _i16;
import '../../repositories/businesses_repository.dart' as _i5;
import '../../repositories/employee_repository.dart' as _i8;
import '../../repositories/freelance_repository.dart' as _i9;
import '../../repositories/stock_market_repository.dart' as _i13;
import '../../repositories/transactions_repository.dart' as _i15;
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
  gh.lazySingleton<_i11.NewGameCubit>(() => _i11.NewGameCubit());
  gh.lazySingleton<_i12.SkillsCubit>(
      () => _i12.SkillsCubit(get<_i11.NewGameCubit>()));
  gh.lazySingleton<_i13.StockMarketRepository>(
      () => _i13.StockMarketRepository());
  gh.lazySingleton<_i14.TimeSpendCubit>(
      () => _i14.TimeSpendCubit(get<_i11.NewGameCubit>()));
  gh.lazySingleton<_i15.TransactionsRepository>(
      () => _i15.TransactionsRepository());
  gh.lazySingleton<_i16.TutorialCubit>(() => _i16.TutorialCubit());
  gh.lazySingleton<_i17.DatabaseCubit>(
      () => _i17.DatabaseCubit(get<_i11.NewGameCubit>()));
  gh.lazySingleton<_i18.DepositCubit>(
      () => _i18.DepositCubit(get<_i11.NewGameCubit>()));
  gh.lazySingleton<_i19.MoneyCubit>(() => _i19.MoneyCubit(
        get<_i15.TransactionsRepository>(),
        get<_i11.NewGameCubit>(),
      ));
  gh.lazySingleton<_i20.StockMarketCubit>(() => _i20.StockMarketCubit(
        get<_i11.NewGameCubit>(),
        get<_i17.DatabaseCubit>(),
        get<_i13.StockMarketRepository>(),
      ));
  gh.lazySingleton<_i21.BusinessesCubit>(() => _i21.BusinessesCubit(
        get<_i11.NewGameCubit>(),
        get<_i5.BusinessesRepository>(),
        get<_i8.EmployeeRepository>(),
        get<_i19.MoneyCubit>(),
        get<_i15.TransactionsRepository>(),
      ));
  gh.lazySingleton<_i22.BuyAssetCubit>(() => _i22.BuyAssetCubit(
        get<_i11.NewGameCubit>(),
        get<_i17.DatabaseCubit>(),
      ));
  gh.lazySingleton<_i23.EventCubit>(() => _i23.EventCubit(
        get<_i11.NewGameCubit>(),
        get<_i17.DatabaseCubit>(),
        get<_i19.MoneyCubit>(),
      ));
  gh.lazySingleton<_i24.FameCubit>(() => _i24.FameCubit(
        get<_i11.NewGameCubit>(),
        get<_i19.MoneyCubit>(),
      ));
  gh.lazySingleton<_i25.FreelanceDoneCubit>(() => _i25.FreelanceDoneCubit(
        get<_i11.NewGameCubit>(),
        get<_i24.FameCubit>(),
        get<_i19.MoneyCubit>(),
        get<_i9.FreelanceRepository>(),
      ));
  gh.lazySingleton<_i26.FreelanceJobCubit>(() => _i26.FreelanceJobCubit(
        get<_i11.NewGameCubit>(),
        get<_i14.TimeSpendCubit>(),
        get<_i25.FreelanceDoneCubit>(),
        get<_i12.SkillsCubit>(),
      ));
  gh.lazySingleton<_i27.IncomeCubit>(() => _i27.IncomeCubit(
        get<_i19.MoneyCubit>(),
        get<_i11.NewGameCubit>(),
      ));
  gh.lazySingleton<_i28.JobCubit>(() => _i28.JobCubit(
        get<_i11.NewGameCubit>(),
        get<_i27.IncomeCubit>(),
        get<_i14.TimeSpendCubit>(),
        get<_i12.SkillsCubit>(),
      ));
  gh.lazySingleton<_i29.LearningCubit>(() => _i29.LearningCubit(
        get<_i11.NewGameCubit>(),
        get<_i12.SkillsCubit>(),
        get<_i19.MoneyCubit>(),
        get<_i14.TimeSpendCubit>(),
      ));
  gh.lazySingleton<_i30.LoanCubit>(() => _i30.LoanCubit(
        get<_i19.MoneyCubit>(),
        get<_i11.NewGameCubit>(),
      ));
  gh.lazySingleton<_i31.MedicinesCubit>(() => _i31.MedicinesCubit(
        get<_i19.MoneyCubit>(),
        get<_i11.NewGameCubit>(),
        get<_i17.DatabaseCubit>(),
      ));
  gh.lazySingleton<_i32.StatsCubit>(() => _i32.StatsCubit(
        get<_i11.NewGameCubit>(),
        get<_i14.TimeSpendCubit>(),
        get<_i23.EventCubit>(),
        get<_i31.MedicinesCubit>(),
      ));
  gh.lazySingleton<_i33.TenantsCubit>(() => _i33.TenantsCubit(
        get<_i11.NewGameCubit>(),
        get<_i17.DatabaseCubit>(),
        get<_i27.IncomeCubit>(),
      ));
  gh.lazySingleton<_i34.AssetsCubit>(() => _i34.AssetsCubit(
        get<_i11.NewGameCubit>(),
        get<_i19.MoneyCubit>(),
        get<_i22.BuyAssetCubit>(),
        get<_i33.TenantsCubit>(),
        get<_i27.IncomeCubit>(),
      ));
  gh.lazySingleton<_i35.BuildAssetCubit>(() => _i35.BuildAssetCubit(
        get<_i11.NewGameCubit>(),
        get<_i19.MoneyCubit>(),
        get<_i34.AssetsCubit>(),
      ));
  gh.lazySingleton<_i36.DateCubit>(() => _i36.DateCubit(
        get<_i11.NewGameCubit>(),
        get<_i7.DaySettingCubit>(),
        get<_i10.LoadingCubit>(),
        get<_i20.StockMarketCubit>(),
        get<_i25.FreelanceDoneCubit>(),
        get<_i24.FameCubit>(),
        get<_i26.FreelanceJobCubit>(),
        get<_i14.TimeSpendCubit>(),
        get<_i29.LearningCubit>(),
        get<_i23.EventCubit>(),
        get<_i32.StatsCubit>(),
        get<_i31.MedicinesCubit>(),
        get<_i27.IncomeCubit>(),
        get<_i28.JobCubit>(),
        get<_i34.AssetsCubit>(),
        get<_i35.BuildAssetCubit>(),
        get<_i18.DepositCubit>(),
        get<_i30.LoanCubit>(),
        get<_i21.BusinessesCubit>(),
      ));
  gh.factoryParam<_i37.EmployeesCubit, int, dynamic>((
    businessId,
    _,
  ) =>
      _i37.EmployeesCubit(
        get<_i36.DateCubit>(),
        get<_i5.BusinessesRepository>(),
        businessId,
        get<_i8.EmployeeRepository>(),
      ));
  gh.lazySingleton<_i38.ExchangesCubit>(() => _i38.ExchangesCubit(
        get<_i11.NewGameCubit>(),
        get<_i36.DateCubit>(),
        get<_i20.StockMarketCubit>(),
        get<_i19.MoneyCubit>(),
      ));
  gh.lazySingleton<_i39.FoodCubit>(() => _i39.FoodCubit(
        get<_i27.IncomeCubit>(),
        get<_i17.DatabaseCubit>(),
        get<_i11.NewGameCubit>(),
        get<_i14.TimeSpendCubit>(),
      ));
  gh.lazySingleton<_i40.HouseCubit>(() => _i40.HouseCubit(
        get<_i19.MoneyCubit>(),
        get<_i14.TimeSpendCubit>(),
        get<_i27.IncomeCubit>(),
        get<_i11.NewGameCubit>(),
        get<_i17.DatabaseCubit>(),
        get<_i36.DateCubit>(),
      ));
  gh.lazySingleton<_i41.RulesCubit>(() => _i41.RulesCubit(
        get<_i19.MoneyCubit>(),
        get<_i32.StatsCubit>(),
        get<_i11.NewGameCubit>(),
      ));
  gh.factoryParam<_i42.TransactionsBusinessCubit, int, dynamic>((
    businessId,
    _,
  ) =>
      _i42.TransactionsBusinessCubit(
        get<_i36.DateCubit>(),
        get<_i15.TransactionsRepository>(),
        businessId,
      ));
  gh.factory<_i43.TransactionsCubit>(() => _i43.TransactionsCubit(
        get<_i36.DateCubit>(),
        get<_i15.TransactionsRepository>(),
      ));
  gh.lazySingleton<_i44.TransportCubit>(() => _i44.TransportCubit(
        get<_i19.MoneyCubit>(),
        get<_i27.IncomeCubit>(),
        get<_i14.TimeSpendCubit>(),
        get<_i11.NewGameCubit>(),
        get<_i36.DateCubit>(),
      ));
  gh.factoryParam<_i45.BalanceBusinessCubit, int, dynamic>((
    businessId,
    _,
  ) =>
      _i45.BalanceBusinessCubit(
        get<_i15.TransactionsRepository>(),
        get<_i36.DateCubit>(),
        businessId,
      ));
  gh.lazySingleton<_i46.CandlesCubit>(() => _i46.CandlesCubit(
        get<_i13.StockMarketRepository>(),
        get<_i36.DateCubit>(),
      ));
  return get;
}
