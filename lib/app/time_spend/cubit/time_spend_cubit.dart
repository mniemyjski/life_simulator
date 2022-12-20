import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../models/time_spend_model/time_spend_model.dart';
import '../repositories/time_spend_repository.dart';

part 'time_spend_cubit.freezed.dart';
part 'time_spend_cubit.g.dart';
part 'time_spend_state.dart';

@injectable
class TimeSpendCubit extends HydratedCubit<TimeSpendState> {
  final TimeSpendRepository _timeSpendRepository;
  late StreamSubscription _timeSpendSub;

  TimeSpendCubit(this._timeSpendRepository) : super(const TimeSpendState.initial()) {
    _timeSpendSub = _timeSpendRepository.watchTimeSpend().listen((_) async {
      state.maybeWhen(orElse: () async {
        TimeSpend timeSpend = await _timeSpendRepository.getTimeSpend();
        emit(TimeSpendState.loaded(timeSpend));
      });

      TimeSpend timeSpend = await _timeSpendRepository.getTimeSpend();
      emit(TimeSpendState.loaded(timeSpend));
    });
  }

  @override
  Future<void> close() async {
    _timeSpendSub.cancel();
    super.close();
  }

  Future<String?> changeWork(int hours) async {
    return await _timeSpendRepository.changeWork(hours);
  }

  Future<String?> changeCommuting(int hours) async {
    return await _timeSpendRepository.changeCommuting(hours);
  }

  Future<String?> changeLearning(int hours) async {
    return await _timeSpendRepository.changeLearning(hours);
  }

  Future<String?> changeRelax(int hours) async {
    return await _timeSpendRepository.changeRelax(hours);
  }

  Future<String?> changeSleep(int hours) async {
    return await _timeSpendRepository.changeSleep(hours);
  }

  Future<String?> changeFreelance(int hours) async {
    return await _timeSpendRepository.changeFreelance(hours);
  }

  Future<String?> changeUsed(int hours) async {
    return await _timeSpendRepository.changeUsed(hours);
  }

  @override
  TimeSpendState? fromJson(Map<String, dynamic> json) {
    return TimeSpendState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(TimeSpendState state) {
    return state.toJson();
  }
}
