import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:jiffy/jiffy.dart';

import '../../../../utilities/utilities.dart';
import '../../../date/cubit/date_cubit.dart';
import '../../../money/cubit/money/money_cubit.dart';
import '../../../money/models/transaction/transaction_model.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../models/loan/loan_model.dart';

part 'loan_cubit.freezed.dart';
part 'loan_cubit.g.dart';
part 'loan_state.dart';

@lazySingleton
class LoanCubit extends HydratedCubit<LoanState> {
  final MoneyCubit _moneyCubit;
  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  LoanCubit(
    this._moneyCubit,
    this._dateCubit,
    this._newGameCubit,
  ) : super(const LoanState.initial()) {
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
    if (_newGameCubit.state) emit(LoanState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(LoanState.loaded([]));
    });
  }

  Future<bool> _creditworthiness({required double borrow, required DateTime dateTime}) async {
    if (loan() + borrow > 50000 + await _moneyCubit.lastYearIncome(dateTime)) return true;

    return false;
  }

  Future<String> add(Loan loan) async {
    await _dateCubit.state.whenOrNull(loaded: (date) async {
      if (await _creditworthiness(borrow: loan.borrowed, dateTime: date)) {
        return "You don't have creditworthiness";
      }
    });

    return _dateCubit.state.maybeWhen(
        loaded: (date) {
          return state.maybeWhen(
              loaded: (loans) {
                List<Loan> result = List.from(loans);

                result.add(loan.copyWith(next: Jiffy(date).add(months: 1).dateTime));

                _dateCubit.state.whenOrNull(loaded: (date) {
                  _moneyCubit.addTransaction(
                      dateTime: date,
                      value: loan.borrowed,
                      eTypeTransactionSource: ETypeTransactionSource.bankBorrowed);
                });

                emit(LoanState.loaded(result));
                return "Succeed";
              },
              orElse: () => 'error');
        },
        orElse: () => 'error');
  }

  double monthlyRate() {
    double value = 0;
    state.whenOrNull(loaded: (loans) {
      for (var element in loans) {
        value += element.monthlyRate;
      }
    });

    return value;
  }

  double loan() {
    double value = 0;
    state.whenOrNull(loaded: (loans) {
      for (var element in loans) {
        value += element.leftLoan;
      }
    });

    return value;
  }

  _counting() {
    _dateSub = _dateCubit.stream.listen((event) {
      event.whenOrNull(loaded: (date) {
        if (date == DateTime(18, 1, 1)) return;
        state.whenOrNull(loaded: (loans) {
          List<Loan> result = [];

          for (var element in loans) {
            if (element.next == date) {
              Loan loan = element.copyWith(
                leftLoan: element.leftLoan - element.getRate(),
                leftMonths: element.leftMonths - 1,
                next: Jiffy(date).add(months: 1).dateTime.onlyDate(),
              );

              if (loan.leftLoan > 0) result.add(loan);

              _moneyCubit.addTransaction(
                  dateTime: date,
                  value: -element.leftLoan - element.getRate(),
                  eTypeTransactionSource: ETypeTransactionSource.bankInterest);
            } else {
              result.add(element);
            }
          }
          emit(LoanState.loaded(result));
        });
      });
    });
  }

  @override
  LoanState? fromJson(Map<String, dynamic> json) {
    return LoanState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(LoanState state) {
    return state.toJson();
  }
}
