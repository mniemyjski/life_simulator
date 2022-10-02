import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../utilities/utilities.dart';
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

  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  LoanCubit(
    this._moneyCubit,
    this._newGameCubit,
  ) : super(const LoanState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();

    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(LoanState.loaded([], DateTime(18, 1, 1)));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(LoanState.loaded([], DateTime(18, 1, 1)));
    });
  }

  Future<bool> _creditworthiness({required double borrow, required DateTime dateTime}) async {
    if (loan() + borrow > 50000 + await _moneyCubit.lastYearIncome(dateTime)) return true;

    return false;
  }

  Future<String> add(Loan loan) async {
    return state.maybeWhen(
        loaded: (loans, currentDate) async {
          if (await _creditworthiness(borrow: loan.borrowed, dateTime: currentDate)) {
            return "You don't have creditworthiness";
          }

          List<Loan> result = List.from(loans);

          result.add(loan.copyWith(next: currentDate.addDate(months: 1)));

          _moneyCubit.addTransaction(
              dateTime: currentDate,
              value: loan.borrowed,
              eTypeTransactionSource: ETypeTransactionSource.bankBorrowed);

          emit(LoanState.loaded(result, currentDate));
          return "Succeed";
        },
        orElse: () => 'error');
  }

  double monthlyRate() {
    double value = 0;
    state.whenOrNull(loaded: (loans, currentDate) {
      for (var element in loans) {
        value += element.monthlyRate;
      }
    });

    return value;
  }

  double loan() {
    double value = 0;
    state.whenOrNull(loaded: (loans, currentDate) {
      for (var element in loans) {
        value += element.leftLoan;
      }
    });

    return value;
  }

  counting(DateTime dateTime) {
    if (dateTime == DateTime(18, 1, 1)) return;
    state.whenOrNull(loaded: (loans, currentDate) {
      List<Loan> result = [];

      for (var element in loans) {
        if (element.next == dateTime) {
          Loan loan = element.copyWith(
            leftLoan: element.leftLoan - element.getRate(),
            leftMonths: element.leftMonths - 1,
            next: dateTime.addDate(months: 1),
          );

          if (loan.leftLoan > 0) result.add(loan);

          _moneyCubit.addTransaction(
              dateTime: dateTime,
              value: -element.leftLoan - element.getRate(),
              eTypeTransactionSource: ETypeTransactionSource.bankInterest);
        } else {
          result.add(element);
        }
      }
      emit(LoanState.loaded(result, dateTime));
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
