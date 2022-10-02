import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/money/models/transaction/transaction_model.dart';

import '../../../../repositories/transactions_repository.dart';
import '../../../new_game/new_game_cubit.dart';

part 'money_cubit.freezed.dart';
part 'money_cubit.g.dart';
part 'money_state.dart';

@lazySingleton
class MoneyCubit extends Cubit<MoneyState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final TransactionsRepository _transactionRepository;
  late StreamSubscription _transactionSub;

  MoneyCubit(
    this._transactionRepository,
    this._newGameCubit,
  ) : super(const MoneyState.initial()) {
    _newGame();

    try {
      _transactionSub.cancel();
    } catch (_) {}

    _transactionSub = _transactionRepository.watchLazyTotal().listen((event) async {
      double value = await _transactionRepository.sum();
      emit(MoneyState.loaded(value));
    });
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    _transactionSub.cancel();
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

  Future<double> lastYearIncome(DateTime dateTime) async {
    return await _transactionRepository.lastYearIncome(dateTime);
  }

  Future addTransaction({
    required double value,
    required ETypeTransactionSource eTypeTransactionSource,
    required DateTime dateTime,
  }) async {
    Transaction transaction = Transaction(
      value: value,
      eTypeTransactionSource: eTypeTransactionSource,
      dateCre: dateTime,
    );
    await _transactionRepository.add(transaction);
  }
}
