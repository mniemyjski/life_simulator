import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:jiffy/jiffy.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../date/cubit/date_cubit.dart';
import '../../money/cubit/money_cubit.dart';
import '../../new_game/new_game_cubit.dart';
import '../models/income_model.dart';

part 'income_cubit.freezed.dart';
part 'income_cubit.g.dart';
part 'income_state.dart';

@lazySingleton
class IncomeCubit extends HydratedCubit<IncomeState> {
  final MoneyCubit _moneyCubit;

  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  IncomeCubit(
    MoneyCubit moneyCubit,
    NewGameCubit saveCubit,
    DateCubit dateCubit,
  )   : _moneyCubit = moneyCubit,
        _newGameCubit = saveCubit,
        _dateCubit = dateCubit,
        super(const IncomeState.initial()) {
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
        DateTime _nextDate;
        switch (income.eTypeFrequency) {
          case ETypeFrequency.annually:
            _nextDate = Jiffy(date).add(years: 1).dateTime.onlyDate();
            break;
          case ETypeFrequency.monthly:
            _nextDate = Jiffy(date).add(months: 1).dateTime.onlyDate();
            break;
          case ETypeFrequency.weekly:
            _nextDate = Jiffy(date).add(weeks: 1).dateTime.onlyDate();
            break;
          case ETypeFrequency.daily:
            _nextDate = Jiffy(date).add(days: 1).dateTime.onlyDate();
            break;
        }
        List<Income> refresh = List.from(incomes)..add(income.copyWith(next: _nextDate));
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
      dateState.whenOrNull(loaded: (date) {
        state.whenOrNull(loaded: (incomes) {
          List<Income> result = [];

          incomes
            ..forEach((element) {
              if (element.next == date) {
                DateTime _nextDate;

                switch (element.eTypeFrequency) {
                  case ETypeFrequency.annually:
                    _nextDate = Jiffy(date).add(years: 1).dateTime.onlyDate();
                    break;
                  case ETypeFrequency.monthly:
                    _nextDate = Jiffy(date).add(months: 1).dateTime.onlyDate();
                    break;
                  case ETypeFrequency.weekly:
                    _nextDate = Jiffy(date).add(weeks: 1).dateTime.onlyDate();
                    break;
                  case ETypeFrequency.daily:
                    _nextDate = Jiffy(date).add(days: 1).dateTime.onlyDate();
                    break;
                }

                result.add(element.copyWith(next: _nextDate));
                _moneyCubit.change(element.value);
              } else {
                result.add(element);
              }
            });

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
