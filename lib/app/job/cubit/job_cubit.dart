import 'dart:async';
import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/time_spend/models/time_spend_model/time_spend_model.dart';

import '../../../repositories/time_spend_repository.dart';
import '../../money/cubit/income/income_cubit.dart';
import '../../money/models/income/income_model.dart';
import '../../money/models/transaction/transaction_model.dart';
import '../../new_game/new_game_cubit.dart';
import '../../skills/models/skill/skill_model.dart';
import '../../skills/repositories/skills_repository.dart';
import '../../time_spend/models/time_bonus/time_bonus_model.dart';
import '../models/experience/experience_model.dart';
import '../models/job/job_model.dart';

part 'job_cubit.freezed.dart';
part 'job_cubit.g.dart';
part 'job_state.dart';

@lazySingleton
class JobCubit extends HydratedCubit<JobState> {
  final IncomeCubit _incomeCubit;
  final TimeSpendRepository _timeSpendRepository;
  final SkillsRepository _skillsRepository;

  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  JobCubit(
    this._newGameCubit,
    this._incomeCubit,
    this._skillsRepository,
    this._timeSpendRepository,
  ) : super(const JobState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(const JobState.loaded(job: null, experience: null));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(const JobState.loaded(job: null, experience: null));
    });
  }

  counting() async {
    state.whenOrNull(loaded: (job, experience) async {
      if (job != null && experience != null) {
        TimeSpend timeSpend = await _timeSpendRepository.getTimeSpend();

        List<Skill> userSkills = await _skillsRepository.getAllSkills();
        for (var r in experience.requirements) {
          for (var u in userSkills) {
            if (r.name == u.name) {
              _skillsRepository.update(skill: u.name, exp: timeSpend.work / 2.toDouble());
            }
          }
        }
      }
    });
  }

  Future<String> getJob({required Job job, required Experience experience}) async {
    TimeSpend timeSpend = await _timeSpendRepository.getTimeSpend();
    bool hasFreeTime = timeSpend.checkFreeTime(1 + experience.work + experience.commuting);
    if (!hasFreeTime) return "You don't have free time";

    _timeSpendRepository.changeUsed(1);
    bool test = await _testSkills(experience);
    if (!test) return "You didn't get a job";

    return state.maybeWhen(
        loaded: (_job, _experience) {
          _timeSpendRepository.changeWork(experience.work);
          _timeSpendRepository.changeCommuting(experience.commuting);

          Income income = Income(
            id: job.id,
            source: ETypeTransactionSource.job,
            typeIncome: ETypeIncome.revenue,
            value: experience.salary,
            eTypeFrequency: experience.eTypeFrequency,
          );

          _timeSpendRepository.addBonuses(
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

  Future<bool> _testSkills(Experience experience) async {
    var rng = Random();

    if (experience.requirements.isEmpty) return true;

    List<Skill> skills = await _skillsRepository.getAllSkills();

    List<bool> test = [];
    for (var r in experience.requirements) {
      for (var u in skills) {
        if (u.name == r.name && u.lvl >= r.lvl) test.add(true);
      }
    }

    return test.length == experience.requirements.length ? (rng.nextBool() ? true : false) : false;
  }

  leaveJob() {
    state.whenOrNull(loaded: (job, experience) {
      _incomeCubit.state.whenOrNull(loaded: (incomes, currentDate) {
        for (var element in incomes) {
          //Todo if you left job you need get money
          // if (element.id == job!.id && element.timeLeft <= 20) {
          //   _moneyCubit.change(element.value / element.interval / element.timeLeft * 100);
          // }
        }
      });

      _timeSpendRepository.removeBonus(ETypeBonusSource.job);
      _incomeCubit.remove(job!.id);
      _timeSpendRepository.changeWork(-experience!.work);
      _timeSpendRepository.changeCommuting(-experience.commuting);

      emit(const JobState.loaded(job: null, experience: null));
    });
  }

  Future<String?> applyForPromotion() async {
    return await state.maybeWhen(
        loaded: (job, experience) async {
          int exp = experience!.exp + 1;

          if (exp >= job!.experiences.length) return 'max';

          Experience newExperience = job.experiences[exp];

          TimeSpend timeSpend = await _timeSpendRepository.getTimeSpend();
          bool hasFreeTime = timeSpend.checkFreeTime(1 + newExperience.work - experience.work);
          if (!hasFreeTime) return "You don't have free time";

          _timeSpendRepository.changeUsed(1);

          bool test = await _testSkills(newExperience);
          if (!test) return "You didn't get a promote";

          _timeSpendRepository.changeCommuting(newExperience.commuting - experience.commuting);

          _timeSpendRepository.addBonuses(
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
