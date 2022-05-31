import 'dart:async';
import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/job/models/experience/experience_model.dart';
import 'package:life_simulator/app/skills/cubit/skills_cubit.dart';
import 'package:life_simulator/app/time_spend/cubit/time_spend_cubit.dart';
import 'package:life_simulator/data/data.dart';

import '../../income/cubit/income_cubit.dart';
import '../../income/models/income_model.dart';
import '../../money/cubit/money_cubit.dart';
import '../../save/save_cubit.dart';
import '../models/job/job_model.dart';

part 'job_cubit.freezed.dart';
part 'job_cubit.g.dart';
part 'job_state.dart';

@lazySingleton
class JobCubit extends HydratedCubit<JobState> {
  final SaveCubit _saveCubit;
  final IncomeCubit _incomeCubit;
  final TimeSpendCubit _timeSpendCubit;
  final SkillsCubit _skillsCubit;
  final MoneyCubit _moneyCubit;
  late StreamSubscription _save;

  JobCubit({
    required SaveCubit saveCubit,
    required IncomeCubit incomeCubit,
    required TimeSpendCubit timeSpendCubit,
    required SkillsCubit skillsCubit,
    required MoneyCubit moneyCubit,
  })  : _incomeCubit = incomeCubit,
        _timeSpendCubit = timeSpendCubit,
        _skillsCubit = skillsCubit,
        _moneyCubit = moneyCubit,
        _saveCubit = saveCubit,
        super(JobState.initial(job: null, experience: null, jobs: null)) {
    _saveCubit.state.whenOrNull(loaded: (save) => init(save));
    _save = _saveCubit.stream.listen((s) => s.whenOrNull(loaded: (save) => init(save)));
  }

  @override
  Future<void> close() async {
    _save.cancel();
    super.close();
  }

  init(bool newGame) {
    _newGame() => emit(JobState.loaded(job: null, experience: null, jobs: Data.jobs()));
    _loadGame(Job? job, Experience? experience, List<Job> jobs) =>
        emit(JobState.loaded(job: job, experience: experience, jobs: jobs));

    state.whenOrNull(
      initial: (job, experience, jobs) {
        !newGame || jobs == null ? _newGame() : _loadGame(job, experience, jobs);
      },
      loaded: (job, experience, jobs) {
        !newGame ? _newGame() : _loadGame(job, experience, jobs);
      },
    );
  }

  String getJob({required Job job, required Experience experience}) {
    bool hasFreeTime = _timeSpendCubit.checkFreeTime(1 + experience.work + experience.commuting);
    if (!hasFreeTime) return "You don't have free time";

    _timeSpendCubit.changeUsed(1);
    bool test = !_testSkills(experience);
    if (test) return "You didn't get a job";

    return state.maybeWhen(
        loaded: (_job, _experience, jobs) {
          _timeSpendCubit.changeWork(experience.work);
          _timeSpendCubit.changeCommuting(experience.commuting);

          Income income = Income(
            id: job.id,
            source: ETypeSource.job,
            typeIncome: ETypeIncome.revenue,
            value: experience.salary,
            interval: experience.interval,
            timeLeft: experience.interval,
          );

          _incomeCubit.add(income);
          emit(JobState.loaded(job: job, experience: experience, jobs: jobs));
          return "succeed";
        },
        orElse: () => 'error');
  }

  bool _testSkills(Experience experience) {
    var rng = Random();
    int _req = 0;
    int _skills = 0;
    int random = 0;

    if (experience.requirements.length == 0) return true;

    bool? test = _skillsCubit.state.whenOrNull(loaded: (skills) {
      for (var r = 0; r < experience.requirements.length; r++) {
        _req += experience.requirements[r].exp;
        for (var s = 0; s < skills.length; s++) {
          if (experience.requirements[r].name == skills[s].name) {
            _skills += skills[s].exp;
          }
        }
      }

      _req = (_req).toInt();
      _skills = (_skills).toInt();

      if (_skills == 0) return false;

      // random = rng.nextInt(_skills);
      if (_skills < _req) return false;

      return true;
    });

    return test ?? false;
  }

  leaveJob() {
    state.whenOrNull(loaded: (job, experience, jobs) {
      _incomeCubit.state.whenOrNull(loaded: (incomes) {
        incomes
          ..forEach((element) {
            if (element.id == job!.id && element.timeLeft <= 20) {
              _moneyCubit
                  .change((element.value / element.interval / element.timeLeft * 100).toInt());
            }
          });
      });

      _incomeCubit.remove(job!.id);
      _timeSpendCubit.changeWork(-experience!.work);
      _timeSpendCubit.changeCommuting(-experience.commuting);

      emit(JobState.loaded(job: null, experience: null, jobs: jobs));
    });
  }

  String applyForPromotion() {
    return state.maybeWhen(
        loaded: (job, experience, jobs) {
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

          _incomeCubit.update(id: job.id, value: newExperience.salary);
          emit(JobState.loaded(job: job, experience: newExperience, jobs: jobs));
          return 'succeed';
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
