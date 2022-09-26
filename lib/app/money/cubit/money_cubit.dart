import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:jiffy/jiffy.dart';
import 'package:richeable/utilities/utilities.dart';
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
    if (_newGameCubit.state) emit(2000);
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(20000000);
    });
  }

  addTransaction({
    required double value,
    required ETypeTransactionSource eTypeTransactionSource,
  }) {
    _dateCubit.state.maybeWhen(
        orElse: () => throw "Date doesn't loaded!!!",
        loaded: (date) {
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

  double getYearlyNet() {
    return _transactionCubit.state.maybeWhen(
        orElse: () => 0,
        loaded: (transactions) {
          return _dateCubit.state.maybeWhen(
              orElse: () => 0,
              loaded: (date) {
                double value = 0;
                DateTime startDate = Jiffy(date).add(years: -1).dateTime.onlyDate();

                for (var element in transactions) {
                  if (element.dateCre.millisecondsSinceEpoch > startDate.millisecondsSinceEpoch) {
                    value += element.value;
                  }
                }

                return value > 0 ? value : 0;
              });
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
