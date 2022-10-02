import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../new_game/new_game_cubit.dart';
import '../../models/income/income_model.dart';
import '../money/money_cubit.dart';

part 'income_cubit.freezed.dart';
part 'income_cubit.g.dart';
part 'income_state.dart';

@lazySingleton
class IncomeCubit extends HydratedCubit<IncomeState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final MoneyCubit _moneyCubit;

  IncomeCubit(
    this._moneyCubit,
    this._newGameCubit,
  ) : super(const IncomeState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(IncomeState.loaded([], DateTime(18, 1, 1)));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(IncomeState.loaded([], DateTime(18, 1, 1)));
    });
  }

  add(Income income) {
    state.whenOrNull(loaded: (incomes, currentDate) {
      DateTime nextDate;
      switch (income.eTypeFrequency) {
        case ETypeFrequency.annually:
          nextDate = currentDate.addDate(years: 1);
          break;
        case ETypeFrequency.monthly:
          nextDate = currentDate.addDate(months: 1);
          break;
        case ETypeFrequency.weekly:
          nextDate = currentDate.addDate(weeks: 1);
          break;
        case ETypeFrequency.daily:
          nextDate = currentDate.addDate(days: 1);
          break;
      }
      List<Income> refresh = List.from(incomes)..add(income.copyWith(next: nextDate));
      emit(IncomeState.loaded(refresh, currentDate));
    });
  }

  update({required String id, required double value}) {
    state.whenOrNull(loaded: (incomes, currentDate) {
      Income? income = incomes.firstWhere((element) => element.id == id);
      List<Income> refresh = List.from(incomes)..removeWhere((element) => element.id == id);

      refresh.add(income.copyWith(value: value));
      emit(IncomeState.loaded(refresh, currentDate));
    });
  }

  remove(String id) {
    state.whenOrNull(loaded: (incomes, currentDate) {
      List<Income> refresh = List.from(incomes)..removeWhere((element) => element.id == id);
      emit(IncomeState.loaded(refresh, currentDate));
    });
  }

  counting(DateTime dateTime) {
    state.maybeWhen(
        orElse: () => throw "Incomes doesn't loaded!!!",
        loaded: (incomes, currentDate) {
          List<Income> result = [];

          for (var element in incomes) {
            if (element.next == dateTime) {
              DateTime nextDate;

              switch (element.eTypeFrequency) {
                case ETypeFrequency.annually:
                  nextDate = dateTime.addDate(years: 1);
                  break;
                case ETypeFrequency.monthly:
                  nextDate = dateTime.addDate(months: 1);
                  break;
                case ETypeFrequency.weekly:
                  nextDate = dateTime.addDate(weeks: 1);
                  break;
                case ETypeFrequency.daily:
                  nextDate = dateTime.addDate(days: 1);
                  break;
              }

              result.add(element.copyWith(next: nextDate));
              _moneyCubit.addTransaction(
                dateTime: dateTime,
                value: element.value,
                eTypeTransactionSource: element.source,
              );
            } else {
              result.add(element);
            }
          }

          emit(IncomeState.loaded(result, dateTime));
        });
  }

  @override
  IncomeState? fromJson(Map<String, dynamic> json) {
    return IncomeState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(IncomeState state) {
    return state.toJson();
  }
}
