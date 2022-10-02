import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../assets/cubit/assets/assets_cubit.dart';
import '../../assets/cubit/build/build_asset_cubit.dart';
import '../../bank/cubit/deposit/deposit_cubit.dart';
import '../../bank/cubit/loan/loan_cubit.dart';
import '../../event/cubit/event_cubit.dart';
import '../../freelance/cubit/done/freelance_done_cubit.dart';
import '../../freelance/cubit/fame/fame_cubit.dart';
import '../../freelance/cubit/job/freelance_job_cubit.dart';
import '../../job/cubit/job_cubit.dart';
import '../../learning/cubit/learning_cubit.dart';
import '../../loading/cubit/loading_cubit.dart';
import '../../medicines/cubit/medicines_cubit.dart';
import '../../money/cubit/income/income_cubit.dart';
import '../../new_game/new_game_cubit.dart';
import '../../settings/cubit/day_setting_cubit.dart';
import '../../stats/cubit/stats_cubit.dart';
import '../../stock_market/cubit/stock_market/stock_market_cubit.dart';
import '../../time_spend/cubit/time_spend_cubit.dart';

part 'date_cubit.freezed.dart';
part 'date_cubit.g.dart';
part 'date_state.dart';

@lazySingleton
class DateCubit extends HydratedCubit<DateState> {
  final NewGameCubit _newGameCubit;
  final DaySettingCubit _daySettingCubit;
  late StreamSubscription _newGameSub;

  final LoadingCubit _loadingCubit;

  final StockMarketCubit _stockMarketCubit;
  final FreelanceJobCubit _freelanceJobCubit;
  final FreelanceDoneCubit _freelanceDoneCubit;
  final FameCubit _fameCubit;
  final TimeSpendCubit _timeSpendCubit;
  final LearningCubit _learningCubit;
  final EventCubit _eventCubit;
  final StatsCubit _statsCubit;
  final MedicinesCubit _medicinesCubit;
  final IncomeCubit _incomeCubit;
  final JobCubit _jobCubit;
  final AssetsCubit _assetsCubit;
  final BuildAssetCubit _buildAssetsCubit;
  final DepositCubit _depositCubit;
  final LoanCubit _loanCubit;

  DateCubit(
    this._newGameCubit,
    this._daySettingCubit,
    this._loadingCubit,
    this._stockMarketCubit,
    this._freelanceDoneCubit,
    this._fameCubit,
    this._freelanceJobCubit,
    this._timeSpendCubit,
    this._learningCubit,
    this._eventCubit,
    this._statsCubit,
    this._medicinesCubit,
    this._incomeCubit,
    this._jobCubit,
    this._assetsCubit,
    this._buildAssetsCubit,
    this._depositCubit,
    this._loanCubit,
  ) : super(const DateState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(DateState.loaded(DateTime(18, 1, 1)));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(DateState.loaded(DateTime(18, 1, 1)));
    });
  }

  Future nextDay() async {
    String uid = _loadingCubit.add();
    await Future.delayed(const Duration(milliseconds: 300));
    for (var i = 0; i < _daySettingCubit.state; i++) {
      await state.whenOrNull(loaded: (date) async {
        DateTime dateTime = date.addDate(days: 1);
        await _stockMarketCubit.counting(dateTime);
        await _freelanceJobCubit.counting(dateTime);
        await _freelanceDoneCubit.counting(dateTime);
        await _fameCubit.counting(dateTime);
        await _learningCubit.counting(dateTime);
        await _eventCubit.counting(dateTime);
        await _statsCubit.counting(dateTime);
        await _medicinesCubit.counting(dateTime);
        await _incomeCubit.counting(dateTime);
        await _jobCubit.counting();
        await _assetsCubit.counting(dateTime);
        await _buildAssetsCubit.counting(dateTime);
        await _depositCubit.counting(dateTime);
        await _loanCubit.counting(dateTime);
        await _timeSpendCubit.counting();

        emit(DateState.loaded(dateTime));
      });
    }
    _loadingCubit.remove(uid);
  }

  @override
  DateState? fromJson(Map<String, dynamic> json) {
    return DateState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(DateState state) {
    return state.toJson();
  }
}
