import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/utilities/utilities.dart';

import '../../../date/cubit/date_cubit.dart';
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

  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  final FameCubit _fameCubit;

  FreelanceDoneCubit(
    this._newGameCubit,
    this._dateCubit,
    this._fameCubit,
  ) : super(const FreelanceDoneState.initial()) {
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
    if (_newGameCubit.state) emit(const FreelanceDoneState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(const FreelanceDoneState.loaded([]));
    });
  }

  _counting() {
    _dateSub = _dateCubit.stream.listen((event) {
      event.whenOrNull(loaded: (date) {
        state.whenOrNull(loaded: (freelances) {
          List<FreelanceDone> result = [];

          //Interval reduce fame in jobs
          for (var e in freelances) {
            DateTime next1 = e.dateCre.onlyDate().add(const Duration(days: 180));
            DateTime next2 = e.dateCre.onlyDate().add(const Duration(days: 360));
            DateTime next3 = e.dateCre.onlyDate().add(const Duration(days: 720));

            if (next1 == date.onlyDate()) {
              result.add(e.copyWith(fame: e.fame / 2));
              continue;
            }
            if (next2 == date.onlyDate()) {
              result.add(e.copyWith(fame: e.fame / 2));
              continue;
            }
            if (next3 == date.onlyDate()) {
              continue;
            }
            result.add(e);
          }

          double addFame = 0;

          //Daily cumulate fame
          for (var e in result) {
            addFame += e.fame;
          }
          if (addFame > 0) _fameCubit.add(addFame);

          _fameCubit.state.whenOrNull(loaded: (fame) {
            double fame10 = fame / 1000;
            double addMoney = 0;
            for (var e in result) {
              addMoney = e.price * fame10;
            }
            //Todo add transaction money
            Logger().wtf(addMoney.toMoney());
          });

          emit(FreelanceDoneState.loaded(result));
        });
      });
    });
  }

  add(FreelanceDone freelanceDone) {
    state.whenOrNull(loaded: (freelances) {
      List<FreelanceDone> result = List.of(freelances)..add(freelanceDone);
      result.sort((a, b) => b.dateCre.compareTo(a.dateCre));
      emit(FreelanceDoneState.loaded(result));
    });
  }

  remove(String id) {
    state.maybeWhen(
        orElse: () => 'error',
        loaded: (freelances) {
          emit(FreelanceDoneState.loaded(List.from(freelances)..removeWhere((e) => e.id == id)));
        });
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
