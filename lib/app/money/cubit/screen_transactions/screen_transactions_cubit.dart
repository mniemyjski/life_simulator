import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../../repositories/transactions_repository.dart';
import '../../../date/cubit/date_cubit.dart';
import '../../models/sum_transactions/sum_transactions_model.dart';
import '../../models/transaction/transaction_model.dart';

part 'screen_transactions_cubit.freezed.dart';
part 'screen_transactions_cubit.g.dart';
part 'screen_transactions_state.dart';

@injectable
class ScreenTransactionsCubit extends Cubit<ScreenTransactionsState> {
  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;
  final TransactionsRepository _transactionRepository;

  ScreenTransactionsCubit(
    this._dateCubit,
    this._transactionRepository,
  ) : super(const ScreenTransactionsState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _dateSub.cancel();
    super.close();
  }

  _newGame() {
    state.whenOrNull(initial: () {
      _dateCubit.state.whenOrNull(loaded: (date) {
        _counter(DateTime(date.year, date.month, 1));
      });
    });

    _dateSub = _dateCubit.stream.listen(
      (dateState) {
        dateState.whenOrNull(
          loaded: (date) {
            state.whenOrNull(loaded: (oldDate, oldTransactions) {
              DateTime newDate = DateTime(date.year, date.month, 1);

              if (newDate.millisecondsSinceEpoch > oldDate.millisecondsSinceEpoch) {
                try {
                  emit(
                    ScreenTransactionsState.loaded(
                      dateTime: newDate,
                      transactions: [],
                    ),
                  );
                } finally {}
              }
            });
          },
        );
      },
    );

    _transactionRepository.watchLazy().listen((event) {
      state.whenOrNull(
        loaded: (date, transport) {
          _counter(DateTime(date.year, date.month, 1));
        },
      );
    });
  }

  _counter(DateTime date) async {
    List<Transaction> result = await _transactionRepository.getTransactions(date, ETypeDate.month);

    emit(ScreenTransactionsState.loaded(
        dateTime: DateTime(date.year, date.month, 1), transactions: result));
  }

  backMonth() {
    state.whenOrNull(loaded: (date, oldTransactions) {
      DateTime newMonth = DateTime(date.year, date.month, 1).addDate(months: -1);

      if (newMonth.millisecondsSinceEpoch >= DateTime(18, 1, 1).millisecondsSinceEpoch) {
        _counter(newMonth);
      }
    });
  }

  nextMonth() {
    state.whenOrNull(loaded: (date, oldTransactions) {
      DateTime newMonth = DateTime(date.year, date.month, 1).addDate(months: 1);

      _dateCubit.state.whenOrNull(loaded: (d) {
        if (newMonth.millisecondsSinceEpoch <=
            DateTime(d.year, d.month, 1).millisecondsSinceEpoch) {
          _counter(newMonth);
        }
      });
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
