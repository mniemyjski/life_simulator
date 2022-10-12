import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/freelance/models/freelance_counting_model.dart';
import 'package:richeable/app/freelance/services/freelance_services.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../../repositories/freelance_repository.dart';
import '../../../money/cubit/money/money_cubit.dart';
import '../../../money/models/transaction/transaction_model.dart';
import '../../../new_game/new_game_cubit.dart';
import '../../models/freelance_done/freelance_done_model.dart';
import '../fame/fame_cubit.dart';

part 'freelance_done_cubit.freezed.dart';
part 'freelance_done_cubit.g.dart';
part 'freelance_done_state.dart';

@lazySingleton
class FreelanceDoneCubit extends HydratedCubit<FreelanceDoneState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final FameCubit _fameCubit;

  final MoneyCubit _moneyCubit;
  final FreelanceRepository _freelanceRepository;
  late StreamSubscription _freelanceSub;

  FreelanceDoneCubit(
    this._newGameCubit,
    this._fameCubit,
    this._moneyCubit,
    this._freelanceRepository,
  ) : super(const FreelanceDoneState.initial()) {
    _newGame();

    _freelanceSub = _freelanceRepository.watch().listen((freelances) {
      emit(FreelanceDoneState.loaded(freelances));
    });
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    _freelanceSub.cancel();

    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(FreelanceDoneState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(FreelanceDoneState.loaded([]));
    });
  }

  Future counting(DateTime dateTime) async {
    await _fameCubit.state.whenOrNull(
      loaded: (fame, currentDate) async {
        List<FreelanceDone> freelances = await _freelanceRepository.getToReduce(dateTime);
        if (freelances.isNotEmpty) {
          final FreelanceCounting result =
              await FreelanceServices.reduceFameAndCountingFameAndMoney(
                  [dateTime, fame, freelances]);

          _freelanceRepository.change(result.freelances);
        }

        double addFame = await _freelanceRepository.dailyFame();
        double addMoney = await _freelanceRepository.dailyPrice();
        addMoney = addMoney * (fame / 30000);

        if (addFame > 0) _fameCubit.add(addFame);

        if (addMoney > 0) {
          _moneyCubit.addTransaction(
            dateTime: dateTime,
            value: addMoney,
            eTypeTransactionSource: ETypeTransactionSource.freelance,
          );
        }
        _freelanceRepository.removeOld(dateTime);
      },
    );
  }

  Future add(FreelanceDone freelanceDone) async {
    await state.whenOrNull(loaded: (freelances) async {
      await _freelanceRepository.add(freelanceDone);
    });
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
