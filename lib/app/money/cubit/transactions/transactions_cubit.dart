import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../date/cubit/date_cubit.dart';
import '../../models/sum_transactions/sum_transactions_model.dart';
import '../../models/transaction/transaction_model.dart';
import '../../repositories/transactions_repository.dart';

part 'transactions_cubit.freezed.dart';
part 'transactions_cubit.g.dart';
part 'transactions_state.dart';

@injectable
class TransactionsCubit extends Cubit<TransactionsState> {
  final DateCubit _dateCubit;
  final TransactionsRepository _transactionRepository;
  late StreamSubscription _transactionsSub;

  TransactionsCubit(
    this._dateCubit,
    this._transactionRepository,
  ) : super(const TransactionsState.initial()) {
    init();
  }

  @override
  Future<void> close() async {
    _transactionsSub.cancel();
    super.close();
  }

  init() {
    state.whenOrNull(initial: () {
      _dateCubit.state.whenOrNull(loaded: (date) {
        _counter(date.monthDate());
        _listen(date.monthDate());
      });
    });
  }

  _listen(DateTime dateTime) {
    try {
      _transactionsSub.cancel();
    } catch (_) {}

    _transactionsSub = _transactionRepository.watchLazyTotalUser().listen((event) {
      _dateCubit.state.whenOrNull(
        loaded: (currentDate) {
          if (currentDate.monthDate().millisecondsSinceEpoch >=
              dateTime.monthDate().millisecondsSinceEpoch) {
            _counter(DateTime(currentDate.year, currentDate.month, 1));
          } else {
            _counter(DateTime(dateTime.year, dateTime.month, 1));
          }
        },
      );
    });
  }

  _counter(DateTime date) async {
    List<Transaction> result = await _transactionRepository.getTransactions(date, ETypeDate.month);

    emit(TransactionsState.loaded(
        dateTime: DateTime(date.year, date.month, 1), transactions: result));
  }

  backMonth() {
    state.whenOrNull(loaded: (date, oldTransactions) {
      DateTime newMonth = date.monthDate().addDate(months: -1);

      if (newMonth.millisecondsSinceEpoch >= DateTime(18, 1, 1).millisecondsSinceEpoch) {
        _counter(newMonth);
        _listen(newMonth);
      }
    });
  }

  nextMonth() {
    state.whenOrNull(loaded: (date, oldTransactions) {
      DateTime newMonth = date.monthDate().addDate(months: 1);

      _dateCubit.state.whenOrNull(loaded: (d) {
        if (newMonth.millisecondsSinceEpoch <= d.monthDate().millisecondsSinceEpoch) {
          _counter(newMonth);
          _listen(newMonth);
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
