import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/money/models/transaction/transaction_model.dart';

import '../../repositories/transactions_repository.dart';

part 'money_cubit.freezed.dart';
part 'money_cubit.g.dart';
part 'money_state.dart';

@lazySingleton
class MoneyCubit extends Cubit<MoneyState> {
  final TransactionsRepository _transactionRepository;
  late StreamSubscription _transactionSub;

  MoneyCubit(
    this._transactionRepository,
  ) : super(const MoneyState.initial()) {
    state.maybeWhen(orElse: () async {
      double value = await _transactionRepository.balance();
      emit(MoneyState.loaded(value));
    });

    _transactionSub = _transactionRepository.watchLazyTotalUser().listen((event) async {
      double value = await _transactionRepository.balance();
      emit(MoneyState.loaded(value));
    });
  }

  @override
  Future<void> close() async {
    _transactionSub.cancel();
    super.close();
  }

  double getBalance() {
    return state.maybeWhen(orElse: () => 0, loaded: (balance) => balance);
  }

  Future<double> lastYearIncome(DateTime dateTime) async {
    return await _transactionRepository.lastYearIncome(dateTime);
  }

  Future addTransaction({
    int? idSource,
    required double value,
    required ETypeTransactionSource eTypeTransactionSource,
    required DateTime dateTime,
  }) async {
    Transaction transaction = Transaction(
      idSource: idSource,
      value: value,
      eTypeTransactionSource: eTypeTransactionSource,
      dateCre: dateTime,
    );
    await _transactionRepository.add(transaction);
  }
}
