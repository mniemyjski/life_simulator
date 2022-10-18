import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../models/freelance_done/freelance_done_model.dart';
import '../../repositories/freelance_repository.dart';

part 'freelance_done_cubit.freezed.dart';
part 'freelance_done_cubit.g.dart';
part 'freelance_done_state.dart';

@injectable
class FreelanceDoneCubit extends HydratedCubit<FreelanceDoneState> {
  final FreelanceRepository _freelanceRepository;
  late StreamSubscription _freelanceSub;

  FreelanceDoneCubit(
    this._freelanceRepository,
  ) : super(const FreelanceDoneState.initial()) {
    state.maybeWhen(orElse: () async {
      final result = await _freelanceRepository.getFreelanceDone();
      emit(FreelanceDoneState.loaded(result));
    });

    _freelanceSub = _freelanceRepository.watchDone().listen((_) async {
      final result = await _freelanceRepository.getFreelanceDone();
      emit(FreelanceDoneState.loaded(result));
    });
  }

  @override
  Future<void> close() async {
    _freelanceSub.cancel();
    super.close();
  }

  Future add(FreelanceDone freelanceDone) async {
    await _freelanceRepository.add(freelanceDone);
  }

  double getDailyFame() {
    double fame = 0;
    state.maybeWhen(
        orElse: () => 0.0,
        loaded: (done) {
          for (var element in done) {
            fame += element.fame;
          }
        });

    return fame;
  }

  double getValue() {
    double price = 0;
    state.maybeWhen(
        orElse: () => 0.0,
        loaded: (done) {
          for (var element in done) {
            price += element.price;
          }
        });

    return price;
  }

  @override
  FreelanceDoneState? fromJson(Map<String, dynamic> json) {
    return FreelanceDoneState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(FreelanceDoneState state) {
    return state.toJson();
  }
}
