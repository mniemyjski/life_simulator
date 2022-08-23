import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../date/cubit/date_cubit.dart';
import '../../new_game/new_game_cubit.dart';
import '../models/transaction/transaction_model.dart';
import 'transactions/transactions_cubit.dart';

@lazySingleton
class MoneyCubit extends HydratedCubit<double> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;
  final TransactionsCubit _transactionCubit;
  final DateCubit _dateCubit;

  MoneyCubit(
    this._newGameCubit,
    this._transactionCubit,
    this._dateCubit,
  ) : super(0) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(500000000);
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(500000000);
    });
  }

  addTransaction({
    required double value,
    required ETypeTransactionSource eTypeTransactionSource,
  }) {
    _dateCubit.state.whenOrNull(loaded: (date) {
      Transaction transaction = Transaction(
        id: const Uuid().v1(),
        value: value,
        eTypeTransaction: value > 0 ? ETypeTransaction.revenue : ETypeTransaction.expense,
        eTypeTransactionSource: eTypeTransactionSource,
        dateCre: date,
      );
      bool done = _transactionCubit.add(transaction);
      if (done) {
        _change(value);
      } else {
        throw 'Error when add transaction';
      }
    });
  }

  _change(double money) {
    double refresh = state + money;
    emit(refresh);
  }

  @override
  double? fromJson(Map<String, dynamic> json) => json['value'] as double;

  @override
  Map<String, dynamic>? toJson(double state) => {'value': state};
}
