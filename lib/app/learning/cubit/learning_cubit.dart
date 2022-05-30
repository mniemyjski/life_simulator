import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/skills/cubit/skills_cubit.dart';

import '../../../data/data.dart';
import '../../money/cubit/money_cubit.dart';
import '../../save/save_cubit.dart';
import '../models/learning_model.dart';

part 'learning_cubit.freezed.dart';
part 'learning_cubit.g.dart';
part 'learning_state.dart';

@lazySingleton
class LearningCubit extends HydratedCubit<LearningState> {
  final SaveCubit _saveCubit;
  final SkillsCubit _skillsCubit;
  final MoneyCubit _moneyCubit;
  late StreamSubscription _save;

  LearningCubit({
    required SaveCubit saveCubit,
    required SkillsCubit skillsCubit,
    required MoneyCubit moneyCubit,
  })  : _skillsCubit = skillsCubit,
        _moneyCubit = moneyCubit,
        _saveCubit = saveCubit,
        super(LearningState.initial(null)) {
    _saveCubit.state.whenOrNull(loaded: (save) => init(save));
    _save = _saveCubit.stream.listen((s) => s.whenOrNull(loaded: (save) => init(save)));
  }

  @override
  Future<void> close() async {
    _save.cancel();
    super.close();
  }

  init(bool newGame) {
    state.whenOrNull(
      initial: (data) {
        !newGame || data == null
            ? emit(LearningState.loaded(Data.learnings()))
            : emit(LearningState.loaded(data));
      },
      loaded: (data) {
        !newGame ? emit(LearningState.loaded(Data.learnings())) : emit(LearningState.loaded(data));
      },
    );
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

      emit(LearningState.loaded(result));
    });
  }

  bool counting(int hours) {
    int _hours = hours;

    bool? reset = state.whenOrNull(loaded: (learnings) {
      List<Learning> result = List.from(learnings);

      for (var i = 0; i < result.length; i++) {
        if (result[i].status == ETypeStatus.queue) {
          if (result[i].time > _hours) {
            result[i] = result[i].copyWith(time: result[i].time - _hours);
            break;
          } else if (result[i].time == _hours) {
            result[i] = result[i].copyWith(time: 0, status: ETypeStatus.done);
            _skillsCubit.update(result[i].skills.first);
            break;
          } else {
            _hours -= result[i].time;
            result[i] = result[i].copyWith(time: 0, status: ETypeStatus.done);
            _skillsCubit.update(result[i].skills.first);
          }
        }
      }

      emit(LearningState.loaded(result));

      if (result.where((element) => element.status == ETypeStatus.queue).length == 0) return true;
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
