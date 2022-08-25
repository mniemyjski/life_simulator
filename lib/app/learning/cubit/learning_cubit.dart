import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/date/cubit/date_cubit.dart';
import 'package:life_simulator/app/money/models/transaction/transaction_model.dart';
import 'package:life_simulator/app/time_spend/cubit/time_spend_cubit.dart';
import 'package:uuid/uuid.dart';

import '../../../utilities/utilities.dart';
import '../../money/cubit/money_cubit.dart';
import '../../new_game/new_game_cubit.dart';
import '../../skills/cubit/skills_cubit.dart';
import '../models/learning_model.dart';

part 'learning_cubit.freezed.dart';
part 'learning_cubit.g.dart';
part 'learning_state.dart';

@lazySingleton
class LearningCubit extends HydratedCubit<LearningState> {
  final NewGameCubit _newGameCubit;
  final SkillsCubit _skillsCubit;
  final MoneyCubit _moneyCubit;
  final TimeSpendCubit _timeSpendCubit;
  final DateCubit _dateCubit;

  late StreamSubscription _newGameSub;
  late StreamSubscription _dateSub;

  LearningCubit(
    this._newGameCubit,
    this._skillsCubit,
    this._moneyCubit,
    this._timeSpendCubit,
    this._dateCubit,
  ) : super(const LearningState.initial()) {
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
    if (_newGameCubit.state) emit(const LearningState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(const LearningState.loaded([]));
    });
  }

  _counting() {
    _dateSub = _dateCubit.stream.listen((event) {
      _timeSpendCubit.state.whenOrNull(loaded: (timeSpend) {
        state.whenOrNull(loaded: (learnings) {
          List<Learning> result = List.from(learnings);
          int hours = timeSpend.learn;

          for (var i = 0; i < result.length; i++) {
            if (result[i].time > hours) {
              result[i] = result[i].copyWith(time: result[i].time - hours);
              _skillsCubit.update(
                  skill: result[i].skillType, exp: (result[i].exp / result[i].baseTime) * hours);
              break;
            } else if (result[i].time == hours) {
              _skillsCubit.update(
                  skill: result[i].skillType, exp: (result[i].exp / result[i].baseTime) * hours);
              result.removeAt(i);
              break;
            } else {
              hours -= result[i].time;
              _skillsCubit.update(
                  skill: result[i].skillType, exp: (result[i].exp / result[i].baseTime) * hours);
              result.removeAt(i);
            }
          }

          if (result.isEmpty) {
            _timeSpendCubit.changeLearn(-timeSpend.learn);
          }

          emit(LearningState.loaded(result));
        });
      });
    });
  }

  add(Learning learning) {
    state.whenOrNull(loaded: (learnings) {
      List<Learning> result = List.from(learnings)..add(learning.copyWith(id: Uuid().v1()));

      _moneyCubit.addTransaction(
          value: -learning.cost, eTypeTransactionSource: ETypeTransactionSource.learning);
      emit(LearningState.loaded(result));
    });
  }

  reorderAble({required int oldIndex, required int newIndex}) {
    state.whenOrNull(loaded: (learnings) {
      List<Learning> result = List.from(learnings);

      if (oldIndex < newIndex) {
        newIndex -= 1;
      }
      final Learning item = result.removeAt(oldIndex);
      result.insert(newIndex, item);

      emit(LearningState.loaded(result));
    });
  }

  @override
  LearningState? fromJson(Map<String, dynamic> json) {
    return LearningState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(LearningState state) {
    return state.toJson();
  }
}
