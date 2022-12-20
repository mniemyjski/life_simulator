import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/money/models/transaction/transaction_model.dart';
import 'package:richeable/utilities/extensions.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../date/cubit/date_cubit.dart';
import '../../../money/models/sum_transactions/sum_transactions_model.dart';
import '../../../money/repositories/transactions_repository.dart';

part 'transactions_business_cubit.freezed.dart';
part 'transactions_business_cubit.g.dart';
part 'transactions_business_state.dart';

@injectable
class TransactionsBusinessCubit extends Cubit<TransactionsBusinessState> {
  final DateCubit dateCubit;
  final TransactionsRepository transactionRepository;
  final int businessId;
  late StreamSubscription transactionsSub;

  TransactionsBusinessCubit(
    this.dateCubit,
    this.transactionRepository,
    @factoryParam this.businessId,
  ) : super(const TransactionsBusinessState.initial()) {
    init();
  }

  @override
  Future<void> close() async {
    transactionsSub.cancel();
    super.close();
  }

  init() {
    state.whenOrNull(initial: () {
      dateCubit.state.whenOrNull(loaded: (date) {
        _counter(date.monthDate());
        _listen(date.monthDate());
      });
    });
  }

  _listen(DateTime dateTime) {
    try {
      transactionsSub.cancel();
    } catch (_) {}

    transactionsSub = transactionRepository.watchLazyForBusiness(businessId).listen((event) {
      dateCubit.state.whenOrNull(
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
    List<Transaction> result = await transactionRepository.getTransactionsBusiness(
        date: date, eTypeDate: ETypeDate.month, businessId: businessId);

    emit(
      TransactionsBusinessState.loaded(
          dateTime: DateTime(date.year, date.month, 1), transactions: result),
    );
  }

  backMonth() {
    state.whenOrNull(loaded: (oldTransactions, date) {
      DateTime newMonth = date.monthDate().addDate(months: -1);

      if (newMonth.millisecondsSinceEpoch >= DateTime(18, 1, 1).millisecondsSinceEpoch) {
        _counter(newMonth);
        _listen(newMonth);
      }
    });
  }

  nextMonth() {
    state.whenOrNull(loaded: (oldTransactions, date) {
      DateTime newMonth = date.monthDate().addDate(months: 1);

      dateCubit.state.whenOrNull(loaded: (d) {
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
        loaded: (transactions, date) {
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
        loaded: (transactions, date) {
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
