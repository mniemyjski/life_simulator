import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/money/models/transaction/transaction_model.dart';

import '../../../date/cubit/date_cubit.dart';
import '../../../money/cubit/money_cubit.dart';
import '../../../new_game/new_game_cubit.dart';

part 'fame_cubit.freezed.dart';
part 'fame_cubit.g.dart';
part 'fame_state.dart';

@lazySingleton
class FameCubit extends HydratedCubit<FameState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  final MoneyCubit _moneyCubit;

  FameCubit(
    this._newGameCubit,
    this._dateCubit,
    this._moneyCubit,
  ) : super(const FameState.initial()) {
    _newGame();
    _counting();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    _dateSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(const FameState.loaded(0));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(const FameState.loaded(0));
    });
  }

  _counting() {
    _dateSub = _dateCubit.stream.listen((event) {
      event.whenOrNull(loaded: (date) {
        state.whenOrNull(loaded: (fame) {
          double result = fame - (fame * 0.001);
          emit(FameState.loaded(result));
        });
      });
    });
  }

  add(double add) {
    state.whenOrNull(loaded: (value) {
      emit(FameState.loaded(value += add));
    });
  }

  buyAdv({required double money, required int fame}) {
    if (_moneyCubit.state < money) return 'notEnoughMoney';
    state.whenOrNull(loaded: (value) {
      _moneyCubit.addTransaction(
          value: -money, eTypeTransactionSource: ETypeTransactionSource.advertisement);
      emit(FameState.loaded(value += fame));
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
