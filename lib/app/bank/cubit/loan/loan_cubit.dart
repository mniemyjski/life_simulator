import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/date/cubit/date_cubit.dart';
import 'package:life_simulator/app/money/cubit/money_cubit.dart';
import 'package:life_simulator/app/new_game/new_game_cubit.dart';

import '../../../date/models/date_game_model.dart';
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
    MoneyCubit moneyCubit,
    DateCubit dateCubit,
    NewGameCubit saveCubit,
  )   : _dateCubit = dateCubit,
        _newGameCubit = saveCubit,
        _moneyCubit = moneyCubit,
        super(LoanState.initial()) {
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

  bool creditworthiness(double borrow) {
    if (loan() + borrow > 50000) return true;

    return false;
  }

  String add(Loan loan) {
    if (creditworthiness(loan.borrowed)) return "You don't have creditworthiness";

    return state.maybeWhen(
        loaded: (loans) {
          List<Loan> result = List.from(loans);

          result.add(loan);
          _moneyCubit.change(loan.borrowed);
          emit(LoanState.loaded(result));
          return "Succeed";
        },
        orElse: () => 'error');
  }

  double monthlyRate() {
    double value = 0;
    state.whenOrNull(loaded: (loans) {
      loans
        ..forEach((element) {
          value += element.monthlyRate;
        });
    });

    return value;
  }

  double loan() {
    double value = 0;
    state.whenOrNull(loaded: (loans) {
      loans
        ..forEach((element) {
          value += element.left;
        });
    });

    return value;
  }

  _counting() {
    _dateSub = _dateCubit.stream.listen((event) {
      event.whenOrNull(loaded: (date) {
        if (date == DateGame(year: 18, month: 1, day: 1)) return;
        state.whenOrNull(loaded: (loans) {
          List<Loan> result = [];

          loans
            ..forEach((element) {
              if (element.turnsToEnd % 30 == 0) {
                Loan newLoan = element.copyWith(
                  left: element.left - element.monthlyRate,
                  turnsToEnd: element.turnsToEnd - 1,
                );

                if (newLoan.left > newLoan.monthlyRate) {
                  result.add(newLoan);
                  _moneyCubit.change(-element.monthlyRate);
                } else {
                  _moneyCubit.change(-element.left - element.monthlyRate);
                }
              } else {
                result.add(
                  element.copyWith(
                    turnsToEnd: element.turnsToEnd - 1,
                  ),
                );
              }
            });
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
