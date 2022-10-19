import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/skills/repositories/skills_repository.dart';
import 'package:uuid/uuid.dart';

import '../../../repositories/time_spend_repository.dart';
import '../../../utilities/utilities.dart';
import '../../money/cubit/money/money_cubit.dart';
import '../../money/models/transaction/transaction_model.dart';
import '../../new_game/new_game_cubit.dart';
import '../../time_spend/models/time_spend_model/time_spend_model.dart';
import '../models/learning_model.dart';

part 'learning_cubit.freezed.dart';
part 'learning_cubit.g.dart';
part 'learning_state.dart';

@lazySingleton
class LearningCubit extends HydratedCubit<LearningState> {
  final NewGameCubit _newGameCubit;
  final SkillsRepository _skillsRepository;
  final MoneyCubit _moneyCubit;
  final TimeSpendRepository _timeSpendRepository;

  late StreamSubscription _newGameSub;

  LearningCubit(
    this._newGameCubit,
    this._skillsRepository,
    this._moneyCubit,
    this._timeSpendRepository,
  ) : super(const LearningState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(LearningState.loaded([], DateTime(18, 1, 1)));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(LearningState.loaded([], DateTime(18, 1, 1)));
    });
  }

  counting(DateTime dateTime) {
    state.whenOrNull(loaded: (learnings, currentDate) async {
      TimeSpend timeSpend = await _timeSpendRepository.getTimeSpend();
      List<Learning> result = List.from(learnings);
      int hours = timeSpend.learn;

      for (var i = 0; i < result.length; i++) {
        if (result[i].time > hours) {
          result[i] = result[i].copyWith(time: result[i].time - hours);
          _skillsRepository.update(
              skill: result[i].skillType, exp: (result[i].exp / result[i].baseTime) * hours);
          break;
        } else if (result[i].time == hours) {
          _skillsRepository.update(
              skill: result[i].skillType, exp: (result[i].exp / result[i].baseTime) * hours);
          result.removeAt(i);
          break;
        } else {
          hours -= result[i].time;
          _skillsRepository.update(
              skill: result[i].skillType, exp: (result[i].exp / result[i].baseTime) * hours);
          result.removeAt(i);
        }
      }

      if (result.isEmpty) {
        _timeSpendRepository.changeLearning(-timeSpend.learn);
      }

      emit(LearningState.loaded(result, dateTime));
    });
  }

  add(Learning learning) {
    if (_moneyCubit.getBalance() < -learning.cost) return 'notEnoughMoney';
    state.whenOrNull(loaded: (learnings, currentDate) {
      List<Learning> result = List.from(learnings)..add(learning.copyWith(id: const Uuid().v1()));

      _moneyCubit.addTransaction(
          dateTime: currentDate,
          value: learning.cost,
          eTypeTransactionSource: ETypeTransactionSource.learning);

      emit(LearningState.loaded(result, currentDate));
    });
  }

  reorderAble({required int oldIndex, required int newIndex}) {
    state.whenOrNull(loaded: (learnings, currentDate) {
      List<Learning> result = List.from(learnings);

      if (oldIndex < newIndex) {
        newIndex -= 1;
      }
      final Learning item = result.removeAt(oldIndex);
      result.insert(newIndex, item);

      emit(LearningState.loaded(result, currentDate));
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
