import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../utilities/utilities.dart';
import '../../database/cubit/database_cubit.dart';
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
  final DatabaseCubit _databaseCubit;
  final SkillsCubit _skillsCubit;
  final MoneyCubit _moneyCubit;
  late StreamSubscription _newGameSub;

  LearningCubit(
    NewGameCubit newGameCubit,
    DatabaseCubit databaseCubit,
    SkillsCubit skillsCubit,
    MoneyCubit moneyCubit,
  )   : _skillsCubit = skillsCubit,
        _moneyCubit = moneyCubit,
        _newGameCubit = newGameCubit,
        _databaseCubit = databaseCubit,
        super(const LearningState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(LearningState.loaded(_databaseCubit.state.learningsDB));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(LearningState.loaded(_databaseCubit.state.learningsDB));
    });
  }

  add(Learning learning) {
    state.whenOrNull(loaded: (learnings) {
      List<Learning> result = List.from(learnings)
        ..removeWhere((element) => element.id == learning.id)
        ..add(learning.copyWith(status: ETypeStatus.queue, cost: 0));

      _moneyCubit.change(-learning.cost);
      emit(LearningState.loaded(result));
    });
  }

  remove(Learning learning) {
    state.whenOrNull(loaded: (learnings) {
      List<Learning> result = List.from(learnings)
        ..removeWhere((element) => element.id == learning.id)
        ..add(learning.copyWith(status: ETypeStatus.base));

      result = result..sort((a, b) => a.id.compareTo(b.id));
      emit(LearningState.loaded(result));
    });
  }

  bool counting(int h) {
    int hours = h;

    bool? reset = state.whenOrNull(loaded: (learnings) {
      List<Learning> result = List.from(learnings);

      for (var i = 0; i < result.length; i++) {
        if (result[i].status == ETypeStatus.queue) {
          if (result[i].time > hours) {
            result[i] = result[i].copyWith(time: result[i].time - hours);
            _skillsCubit.update(
                skill: result[i].skillType, exp: (result[i].exp / result[i].baseTime) * hours);
            break;
          } else if (result[i].time == hours) {
            result[i] = _databaseCubit.state.learningsDB
                .where((element) => element.skillType == result[i].skillType)
                .first;
            _skillsCubit.update(
                skill: result[i].skillType, exp: (result[i].exp / result[i].baseTime) * hours);
            break;
          } else {
            hours -= result[i].time;
            result[i] = _databaseCubit.state.learningsDB
                .where((element) => element.skillType == result[i].skillType)
                .first;
            _skillsCubit.update(
                skill: result[i].skillType, exp: (result[i].exp / result[i].baseTime) * hours);
          }
        }
      }
      result = result..sort((a, b) => a.id.compareTo(b.id));

      emit(LearningState.loaded(result));

      if (result.where((element) => element.status == ETypeStatus.queue).isEmpty) return true;
      return false;
    });

    return reset ?? false;
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
