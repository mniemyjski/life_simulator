import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/app/freelance/models/freelance_counting_model.dart';
import 'package:richeable/app/freelance/services/freelance_services.dart';
import 'package:richeable/utilities/utilities.dart';

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

  FreelanceDoneCubit(
    this._newGameCubit,
    this._fameCubit,
    this._moneyCubit,
  ) : super(const FreelanceDoneState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(FreelanceDoneState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(FreelanceDoneState.loaded([]));
    });
  }

  Future counting(DateTime dateTime) async {
    return state.whenOrNull(
      loaded: (freelances) {
        return _fameCubit.state.whenOrNull(
          loaded: (fame, currentDate) async {
            final FreelanceCounting result =
                await FreelanceServices.reduceFameAndCountingFameAndMoney(
              date: dateTime,
              fame: fame,
              freelances: freelances,
            );

            if (result.addFame > 0) _fameCubit.add(result.addFame);

            if (result.addMoney > 0) {
              _moneyCubit.addTransaction(
                dateTime: dateTime,
                value: result.addMoney,
                eTypeTransactionSource: ETypeTransactionSource.freelance,
              );
            }

            emit(FreelanceDoneState.loaded(result.freelances));
            return;
          },
        );
      },
    );
  }

  add(FreelanceDone freelanceDone) {
    state.whenOrNull(loaded: (freelances) {
      List<FreelanceDone> result = [freelanceDone, ...freelances];

      emit(FreelanceDoneState.loaded(result));
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
