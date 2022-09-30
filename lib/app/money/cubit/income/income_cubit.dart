import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:jiffy/jiffy.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../date/cubit/date_cubit.dart';
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

  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  final MoneyCubit _moneyCubit;

  IncomeCubit(
    this._moneyCubit,
    this._newGameCubit,
    this._dateCubit,
  ) : super(const IncomeState.initial()) {
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
    if (_newGameCubit.state) emit(const IncomeState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(const IncomeState.loaded([]));
    });
  }

  add(Income income) {
    _dateCubit.state.whenOrNull(loaded: (date) {
      state.whenOrNull(loaded: (incomes) {
        DateTime nextDate;
        switch (income.eTypeFrequency) {
          case ETypeFrequency.annually:
            nextDate = Jiffy(date).add(years: 1).dateTime.onlyDate();
            break;
          case ETypeFrequency.monthly:
            nextDate = Jiffy(date).add(months: 1).dateTime.onlyDate();
            break;
          case ETypeFrequency.weekly:
            nextDate = Jiffy(date).add(weeks: 1).dateTime.onlyDate();
            break;
          case ETypeFrequency.daily:
            nextDate = Jiffy(date).add(days: 1).dateTime.onlyDate();
            break;
        }
        List<Income> refresh = List.from(incomes)..add(income.copyWith(next: nextDate));
        emit(IncomeState.loaded(refresh));
      });
    });
  }

  update({required String id, required double value}) {
    state.whenOrNull(loaded: (incomes) {
      Income? income = incomes.firstWhere((element) => element.id == id);
      List<Income> refresh = List.from(incomes)..removeWhere((element) => element.id == id);

      refresh.add(income.copyWith(value: value));
      emit(IncomeState.loaded(refresh));
    });
  }

  remove(String id) {
    state.whenOrNull(loaded: (incomes) {
      List<Income> refresh = List.from(incomes)..removeWhere((element) => element.id == id);
      emit(IncomeState.loaded(refresh));
    });
  }

  _counting() {
    _dateSub = _dateCubit.stream.listen((dateState) {
      dateState.maybeWhen(
          orElse: () => throw "Date doesn't loaded!!!",
          loaded: (date) {
            state.maybeWhen(
                orElse: () => throw "Incomes doesn't loaded!!!",
                loaded: (incomes) {
                  List<Income> result = [];

                  for (var element in incomes) {
                    if (element.next == date) {
                      DateTime nextDate;

                      switch (element.eTypeFrequency) {
                        case ETypeFrequency.annually:
                          nextDate = date.addDate(years: 1);
                          break;
                        case ETypeFrequency.monthly:
                          nextDate = date.addDate(months: 1);
                          break;
                        case ETypeFrequency.weekly:
                          nextDate = date.addDate(weeks: 1);
                          break;
                        case ETypeFrequency.daily:
                          nextDate = date.addDate(days: 1);
                          break;
                      }

                      result.add(element.copyWith(next: nextDate));
                      _moneyCubit.addTransaction(
                        value: element.value,
                        eTypeTransactionSource: element.source,
                      );
                    } else {
                      result.add(element);
                    }
                  }

                  emit(IncomeState.loaded(result));
                });
          });
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
