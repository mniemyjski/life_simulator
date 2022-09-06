import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:jiffy/jiffy.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../date/cubit/date_cubit.dart';
import '../../models/sum_transactions/sum_transactions_model.dart';
import '../../models/transaction/transaction_model.dart';
import '../transactions/transactions_cubit.dart';

part 'screen_transactions_cubit.freezed.dart';
part 'screen_transactions_cubit.g.dart';
part 'screen_transactions_state.dart';

@injectable
class ScreenTransactionsCubit extends Cubit<ScreenTransactionsState> {
  final TransactionsCubit _transactionsCubit;
  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  ScreenTransactionsCubit(
    this._transactionsCubit,
    this._dateCubit,
  ) : super(const ScreenTransactionsState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _dateSub.cancel();
    super.close();
  }

  _newGame() {
    _dateSub = _dateCubit.stream.listen(
      (dateState) {
        dateState.whenOrNull(
          loaded: (date) {
            state.whenOrNull(
              loaded: (oldDate, oldTransport) {
                _counter(date);
              },
            );
          },
        );
      },
    );

    state.whenOrNull(initial: () {
      _dateCubit.state.whenOrNull(loaded: (date) {
        _counter(date);
      });
    });
  }

  _counter(DateTime date) {
    _transactionsCubit.state.whenOrNull(loaded: (allTransactions) {
      int from = DateTime(date.year, date.month, 1).millisecondsSinceEpoch;
      int to = Jiffy(date)
          .add(months: 1)
          .dateTime
          .onlyDate()
          .add(const Duration(days: -1))
          .onlyDate()
          .millisecondsSinceEpoch;

      List<Transaction> result = allTransactions
          .where(
            (e) =>
                e.dateCre.millisecondsSinceEpoch >= from && e.dateCre.millisecondsSinceEpoch <= to,
          )
          .toList();

      emit(ScreenTransactionsState.loaded(
          dateTime: DateTime(date.year, date.month, 1), transactions: result));
    });
  }

  backMonth() {
    state.whenOrNull(loaded: (date, oldTransactions) {
      _counter(Jiffy(date).add(months: -1).dateTime.onlyDate());
    });
  }

  nextMonth() {
    state.whenOrNull(loaded: (date, oldTransactions) {
      _counter(Jiffy(date).add(months: 1).dateTime.onlyDate());
    });
  }

  double getTotalSum(ETypeTransaction? eTypeTransaction) {
    return state.maybeWhen(
        orElse: () => 0,
        loaded: (date, transactions) {
          double value = 0;
          for (var element in transactions) {
            if (eTypeTransaction == null) {
              value += element.value;
            } else if (element.eTypeTransaction == eTypeTransaction) {
              value += element.value;
            }
          }
          return value;
        });
  }

  List<SumTransactions> getSumByType(ETypeTransaction eTypeTransaction) {
    return state.maybeWhen(
        orElse: () => [],
        loaded: (date, transactions) {
          List<SumTransactions> result = [];
          for (var element in transactions) {
            if (element.eTypeTransaction == eTypeTransaction) {
              var test = result.firstWhereOrNull(
                  (e) => e.eTypeTransactionSource == element.eTypeTransactionSource);

              if (test == null) {
                result.add(SumTransactions(
                    eTypeTransactionSource: element.eTypeTransactionSource, value: element.value));
              } else {
                result.remove(test);
                result.add(test.copyWith(value: test.value + element.value));
              }
            }
          }
          return result;
        });
  }
}
