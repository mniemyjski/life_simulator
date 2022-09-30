import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/money/models/transaction/transaction_model.dart';

import '../../../../repositories/transactions_repository.dart';
import '../../../date/cubit/date_cubit.dart';
import '../../../new_game/new_game_cubit.dart';

part 'money_cubit.freezed.dart';
part 'money_cubit.g.dart';
part 'money_state.dart';

@lazySingleton
class MoneyCubit extends Cubit<MoneyState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final TransactionsRepository _transactionRepository;
  final DateCubit _dateCubit;

  MoneyCubit(
    this._transactionRepository,
    this._dateCubit,
    this._newGameCubit,
  ) : super(const MoneyState.initial()) {
    _newGame();

    _transactionRepository.watchLazy().listen((event) async {
      double value = await _transactionRepository.sum();
      emit(MoneyState.loaded(value));
    });
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) {
      _transactionRepository.add(Transaction(
          value: 2000,
          eTypeTransactionSource: ETypeTransactionSource.giftFromParents,
          dateCre: DateTime(18, 1, 1)));
    }
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) {
        _transactionRepository.add(Transaction(
            value: 2000,
            eTypeTransactionSource: ETypeTransactionSource.giftFromParents,
            dateCre: DateTime(18, 1, 1)));
      }
    });
  }

  double getBalance() {
    return state.maybeWhen(orElse: () => 0, loaded: (balance) => balance);
  }

  Future<double> lastYearIncome() async {
    return _dateCubit.state.maybeWhen(
        orElse: () => 0,
        loaded: (date) {
          return _transactionRepository.lastYearIncome(date);
        });
  }

  Future addTransaction({
    required double value,
    required ETypeTransactionSource eTypeTransactionSource,
  }) async {
    _dateCubit.state.maybeWhen(
        orElse: () => throw "Date doesn't loaded!!!",
        loaded: (date) async {
          Transaction transaction = Transaction(
            value: value,
            eTypeTransactionSource: eTypeTransactionSource,
            dateCre: date,
          );
          await _transactionRepository.add(transaction);
        });
  }
}
