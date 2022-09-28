import 'dart:async';
import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../date/cubit/date_cubit.dart';
import '../../money/cubit/income/income_cubit.dart';
import '../../money/cubit/money_cubit.dart';
import '../../money/models/income/income_model.dart';
import '../../money/models/transaction/transaction_model.dart';
import '../../new_game/new_game_cubit.dart';
import '../../skills/cubit/skills_cubit.dart';
import '../../time_spend/cubit/time_spend_cubit.dart';
import '../../time_spend/models/time_bonus/time_bonus_model.dart';
import '../models/experience/experience_model.dart';
import '../models/job/job_model.dart';

part 'job_cubit.freezed.dart';
part 'job_cubit.g.dart';
part 'job_state.dart';

@lazySingleton
class JobCubit extends HydratedCubit<JobState> {
  final IncomeCubit _incomeCubit;
  final TimeSpendCubit _timeSpendCubit;
  final SkillsCubit _skillsCubit;
  final MoneyCubit _moneyCubit;

  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  JobCubit(
    this._newGameCubit,
    this._incomeCubit,
    this._timeSpendCubit,
    this._skillsCubit,
    this._moneyCubit,
    this._dateCubit,
  ) : super(const JobState.initial()) {
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
    if (_newGameCubit.state) emit(const JobState.loaded(job: null, experience: null));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(const JobState.loaded(job: null, experience: null));
    });
  }

  _counting() {
    _dateSub = _dateCubit.stream.listen((event) {
      state.whenOrNull(loaded: (job, experience) {
        if (job != null && experience != null) {
          _timeSpendCubit.state.whenOrNull(loaded: (timeSpend) {
            _skillsCubit.state.whenOrNull(loaded: (userSkills) {
              for (var r in experience.requirements) {
                for (var u in userSkills) {
                  if (r.name == u.name) {
                    _skillsCubit.update(
                        skill: u.name, exp: ((u.lvl + 1) * (timeSpend.work / 3)).toDouble());
                  }
                }
              }
            });
          });
        }
      });
    });
  }

  String getJob({required Job job, required Experience experience}) {
    bool hasFreeTime = _timeSpendCubit.checkFreeTime(1 + experience.work + experience.commuting);
    if (!hasFreeTime) return "You don't have free time";

    _timeSpendCubit.changeUsed(1);
    bool test = !_testSkills(experience);
    if (test) return "You didn't get a job";

    return state.maybeWhen(
        loaded: (_job, _experience) {
          _timeSpendCubit.changeWork(experience.work);
          _timeSpendCubit.changeCommuting(experience.commuting);

          Income income = Income(
            id: job.id,
            source: ETypeTransactionSource.job,
            typeIncome: ETypeIncome.revenue,
            value: experience.salary,
            eTypeFrequency: experience.eTypeFrequency,
          );

          _timeSpendCubit.addBonus(
            [
              if (experience.bonusToRelax != 0)
                TimeBonus(
                    eTypeBonus: ETypeBonus.relax,
                    eTypeBonusSource: ETypeBonusSource.job,
                    value: experience.bonusToRelax),
              if (experience.bonusToSleep != 0)
                TimeBonus(
                    eTypeBonus: ETypeBonus.sleep,
                    eTypeBonusSource: ETypeBonusSource.job,
                    value: experience.bonusToSleep),
              if (experience.bonusToLearn != 0)
                TimeBonus(
                    eTypeBonus: ETypeBonus.learn,
                    eTypeBonusSource: ETypeBonusSource.job,
                    value: experience.bonusToLearn),
            ],
          );

          _incomeCubit.add(income);
          emit(JobState.loaded(job: job, experience: experience));
          return "succeed";
        },
        orElse: () => 'error');
  }

  bool _testSkills(Experience experience) {
    var rng = Random();

    if (experience.requirements.isEmpty) return true;

    return _skillsCubit.state.maybeWhen(
        loaded: (skills) {
          List<bool> test = [];
          for (var r in experience.requirements) {
            for (var u in skills) {
              if (u.name == r.name && u.lvl >= r.lvl) test.add(true);
            }
          }

          return test.length == experience.requirements.length
              ? (rng.nextBool() ? true : false)
              : false;
        },
        orElse: () => false);
  }

  leaveJob() {
    state.whenOrNull(loaded: (job, experience) {
      _incomeCubit.state.whenOrNull(loaded: (incomes) {
        for (var element in incomes) {
          //Todo if you left job you need get money
          // if (element.id == job!.id && element.timeLeft <= 20) {
          //   _moneyCubit.change(element.value / element.interval / element.timeLeft * 100);
          // }
        }
      });

      _timeSpendCubit.removeBonus(ETypeBonusSource.job);
      _incomeCubit.remove(job!.id);
      _timeSpendCubit.changeWork(-experience!.work);
      _timeSpendCubit.changeCommuting(-experience.commuting);

      emit(const JobState.loaded(job: null, experience: null));
    });
  }

  String? applyForPromotion() {
    return state.maybeWhen(
        loaded: (job, experience) {
          int exp = experience!.exp + 1;

          if (exp >= job!.experiences.length) return 'max';

          Experience newExperience = job.experiences[exp];

          bool hasFreeTime =
              _timeSpendCubit.checkFreeTime(1 + newExperience.work - experience.work);
          if (!hasFreeTime) return "You don't have free time";

          _timeSpendCubit.changeUsed(1);

          bool test = !_testSkills(newExperience);
          if (test) return "You didn't get a promote";

          _timeSpendCubit.changeCommuting(newExperience.commuting - experience.commuting);

          _timeSpendCubit.addBonus(
            [
              TimeBonus(
                  eTypeBonus: ETypeBonus.relax,
                  eTypeBonusSource: ETypeBonusSource.job,
                  value: experience.bonusToRelax),
              TimeBonus(
                  eTypeBonus: ETypeBonus.sleep,
                  eTypeBonusSource: ETypeBonusSource.job,
                  value: experience.bonusToSleep),
              TimeBonus(
                  eTypeBonus: ETypeBonus.learn,
                  eTypeBonusSource: ETypeBonusSource.job,
                  value: experience.bonusToLearn),
            ],
          );

          _incomeCubit.update(id: job.id, value: newExperience.salary);
          emit(JobState.loaded(job: job, experience: newExperience));
        },
        orElse: () => 'error');
  }

  @override
  JobState? fromJson(Map<String, dynamic> json) {
    return JobState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(JobState state) {
    return state.toJson();
  }
}
