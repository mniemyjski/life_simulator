import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../money/cubit/money/money_cubit.dart';
import '../../../money/models/transaction/transaction_model.dart';
import '../../../new_game/new_game_cubit.dart';

part 'fame_cubit.freezed.dart';
part 'fame_cubit.g.dart';
part 'fame_state.dart';

@lazySingleton
class FameCubit extends HydratedCubit<FameState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final MoneyCubit _moneyCubit;

  FameCubit(
    this._newGameCubit,
    this._moneyCubit,
  ) : super(const FameState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(FameState.loaded(0, DateTime(18, 1, 1)));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(FameState.loaded(0, DateTime(18, 1, 1)));
    });
  }

  Future counting(DateTime dateTime) async {
    state.whenOrNull(loaded: (fame, currentDate) {
      double result = fame - (fame * 0.001);
      emit(FameState.loaded(result, dateTime));
      return;
    });
  }

  add(double fame) {
    state.whenOrNull(loaded: (value, currentDate) {
      emit(FameState.loaded(value += fame, currentDate));
    });
  }

  buyAdv({required double money, required int fame}) {
    if (_moneyCubit.getBalance() < money) return 'notEnoughMoney';
    state.whenOrNull(loaded: (value, currentDate) {
      _moneyCubit.addTransaction(
          dateTime: currentDate,
          value: -money,
          eTypeTransactionSource: ETypeTransactionSource.advertisement);

      emit(FameState.loaded(value += fame, currentDate));
    });
  }

  @override
  FameState? fromJson(Map<String, dynamic> json) {
    return FameState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(FameState state) {
    return state.toJson();
  }
}
