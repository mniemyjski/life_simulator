import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/freelance/services/freelance_services.dart';

import '../../../../repositories/time_spend_repository.dart';
import '../../../../utilities/utilities.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../../skills/models/skill_emb/skill_emb_model.dart';
import '../../../skills/repositories/skills_repository.dart';
import '../../../time_spend/models/time_spend_model/time_spend_model.dart';
import '../../models/freelance_job/freelance_job_model.dart';
import '../done/freelance_done_cubit.dart';

part 'freelance_job_cubit.freezed.dart';
part 'freelance_job_cubit.g.dart';
part 'freelance_job_state.dart';

@lazySingleton
class FreelanceJobCubit extends HydratedCubit<FreelanceJobState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final FreelanceDoneCubit _freelanceDoneCubit;
  final SkillsRepository _skillsRepository;
  final TimeSpendRepository _timeSpendRepository;

  FreelanceJobCubit(
    this._newGameCubit,
    this._freelanceDoneCubit,
    this._skillsRepository,
    this._timeSpendRepository,
  ) : super(const FreelanceJobState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(const FreelanceJobState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(const FreelanceJobState.loaded([]));
    });
  }

  Future counting(DateTime dateTime) async {
    await state.maybeWhen(
        orElse: () => throw 'error',
        loaded: (freelanceJobs) async {
          TimeSpend timeSpend = await _timeSpendRepository.getTimeSpend();
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
              await _freelanceDoneCubit.add(e.toDone(dateTime));
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
            _timeSpendRepository.changeFreelance(-timeSpend.freelance);
          }
          emit(FreelanceJobState.loaded(result));
        });
  }

  _countingExp({
    required List<SkillEmb> reqSkills,
    required List<SkillEmb> userSkills,
    required int hours,
  }) {
    for (var r in reqSkills) {
      for (var u in userSkills) {
        if (u.name == r.name) {
          _skillsRepository.update(skill: u.name, exp: hours / 2.toDouble());
        }
      }
    }
  }

  String? add(FreelanceJob freelanceWork) {
    bool test = FreelanceServices.testReqSkill(
      reqSkill: freelanceWork.reqSkills,
      userSkills: freelanceWork.userSkills,
    );
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

  remove(String uid) {
    state.maybeWhen(
        orElse: () => 'error',
        loaded: (list) {
          emit(FreelanceJobState.loaded(List.from(list)..removeWhere((e) => e.uid == uid)));
        });
  }

  repeat(FreelanceJob element) {
    state.maybeWhen(
        orElse: () => 'error',
        loaded: (list) {
          List<FreelanceJob> result = List.of(list);
          int index = result.indexWhere((e) => e.uid == element.uid);
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
