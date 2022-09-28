import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../utilities/utilities.dart';
import '../../../date/cubit/date_cubit.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../../skills/cubit/skills_cubit.dart';
import '../../../skills/models/skill_model.dart';
import '../../../time_spend/cubit/time_spend_cubit.dart';
import '../../models/freelance_job/freelance_job_model.dart';
import '../done/freelance_done_cubit.dart';

part 'freelance_job_cubit.freezed.dart';
part 'freelance_job_cubit.g.dart';
part 'freelance_job_state.dart';

@lazySingleton
class FreelanceJobCubit extends HydratedCubit<FreelanceJobState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  final TimeSpendCubit _timeSpendCubit;
  final FreelanceDoneCubit _freelanceDoneCubit;
  final SkillsCubit _skillsCubit;

  FreelanceJobCubit(
    this._newGameCubit,
    this._dateCubit,
    this._timeSpendCubit,
    this._freelanceDoneCubit,
    this._skillsCubit,
  ) : super(const FreelanceJobState.initial()) {
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
    if (_newGameCubit.state) emit(const FreelanceJobState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(const FreelanceJobState.loaded([]));
    });
  }

  _counting() {
    _dateSub = _dateCubit.stream.listen((event) {
      event.maybeWhen(
          orElse: () => throw 'error',
          loaded: (date) {
            _timeSpendCubit.state.maybeWhen(
                orElse: () => throw 'error',
                loaded: (timeSpend) {
                  state.maybeWhen(
                      orElse: () => throw 'error',
                      loaded: (freelanceJobs) {
                        int time = timeSpend.freelance;
                        List<FreelanceJob> result = [];

                        for (var e in freelanceJobs) {
                          if (e.leftWorkTime > time) {
                            result.add(
                              e.copyWith(leftWorkTime: e.leftWorkTime - time),
                            );
                            _countingExp(
                              reqSkills: e.reqSkills,
                              userSkills: e.userSkills,
                              hours: time,
                            );
                            time = 0;
                          }
                          if (e.leftWorkTime <= time) {
                            _freelanceDoneCubit.add(e.toDone(date));
                            _countingExp(
                              reqSkills: e.reqSkills,
                              userSkills: e.userSkills,
                              hours: e.leftWorkTime,
                            );
                            time = time - e.leftWorkTime;

                            if (e.repeat) {
                              result = [e.repeater(), ...result];
                            }
                          }
                        }
                        if (result.isEmpty) {
                          _timeSpendCubit.changeFreelance(-timeSpend.freelance);
                        }
                        emit(FreelanceJobState.loaded(result));
                      });
                });
          });
    });
  }

  _countingExp({
    required List<Skill> reqSkills,
    required List<Skill> userSkills,
    required int hours,
  }) {
    for (var r in reqSkills) {
      for (var u in userSkills) {
        if (u.name == r.name) {
          _skillsCubit.update(skill: u.name, exp: ((u.lvl + 1) * hours / 3).toDouble());
        }
      }
    }
  }

  String? add(FreelanceJob freelanceWork) {
    bool test =
        _testReqSkill(reqSkill: freelanceWork.reqSkills, userSkills: freelanceWork.userSkills);
    if (!test) {
      return "youCannotDoThis";
    }

    return state.maybeWhen(
        orElse: () => 'error',
        loaded: (list) {
          emit(FreelanceJobState.loaded(List.from(list)..add(freelanceWork)));
          return null;
        });
  }

  reorderAble({required int oldIndex, required int newIndex}) {
    state.whenOrNull(loaded: (list) {
      List<FreelanceJob> result = List.from(list);

      if (oldIndex < newIndex) {
        newIndex -= 1;
      }
      final FreelanceJob item = result.removeAt(oldIndex);
      result.insert(newIndex, item);

      emit(FreelanceJobState.loaded(result));
    });
  }

  _testReqSkill({required List<Skill> reqSkill, required List<Skill> userSkills}) {
    List<bool> test = [];
    for (var r in reqSkill) {
      for (var u in userSkills) {
        if (u.name == r.name && u.lvl >= r.lvl) test.add(true);
      }
    }

    return test.length == reqSkill.length ? true : false;
  }

  remove(String id) {
    state.maybeWhen(
        orElse: () => 'error',
        loaded: (list) {
          emit(FreelanceJobState.loaded(List.from(list)..removeWhere((e) => e.id == id)));
        });
  }

  repeat(FreelanceJob element) {
    state.maybeWhen(
        orElse: () => 'error',
        loaded: (list) {
          List<FreelanceJob> result = List.of(list);
          int index = result.indexWhere((e) => e.id == element.id);
          result[index] = element.copyWith(repeat: !element.repeat);

          emit(FreelanceJobState.loaded(result));
        });
  }

  @override
  FreelanceJobState? fromJson(Map<String, dynamic> json) {
    return FreelanceJobState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(FreelanceJobState state) {
    return state.toJson();
  }
}
