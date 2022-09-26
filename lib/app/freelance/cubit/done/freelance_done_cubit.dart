import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:richeable/utilities/utilities.dart';

import '../../../date/cubit/date_cubit.dart';
import '../../../money/cubit/money_cubit.dart';
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

  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  final FameCubit _fameCubit;

  final MoneyCubit _moneyCubit;

  FreelanceDoneCubit(
    this._newGameCubit,
    this._dateCubit,
    this._fameCubit,
    this._moneyCubit,
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
    if (_newGameCubit.state) emit(FreelanceDoneState.loaded([]));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(FreelanceDoneState.loaded([]));
    });
  }

  _counting() {
    _dateSub = _dateCubit.stream.listen((event) {
      event.whenOrNull(loaded: (date) {
        state.whenOrNull(loaded: (freelances) {
          List<FreelanceDone> result = _reduceFameInTime(freelances, date);
          _addMoneyAndFameForFreelance(result);

          emit(FreelanceDoneState.loaded(result));
        });
      });
    });
  }

  List<FreelanceDone> _reduceFameInTime(List<FreelanceDone> freelances, DateTime date) {
    List<FreelanceDone> result = [];

    for (var e in freelances) {
      DateTime next1 = e.dateCre.addDate(months: 6 * e.rating);
      DateTime next2 = e.dateCre.addDate(years: 1 * e.rating);
      DateTime next3 = e.dateCre.addDate(years: 2 * e.rating);

      if (next1 == date.onlyDate()) {
        result.add(e.copyWith(fame: e.fame / 2, price: e.price / 2));
        continue;
      }
      if (next2 == date.onlyDate()) {
        result.add(e.copyWith(fame: e.fame / 2, price: e.price / 2));
        continue;
      }
      if (next3.millisecondsSinceEpoch > date.onlyDate().millisecondsSinceEpoch) {
        result.add(e);
        continue;
      }
    }

    return result;
  }

  _addMoneyAndFameForFreelance(List<FreelanceDone> freelances) {
    _fameCubit.state.whenOrNull(loaded: (fame) {
      double fame10 = fame / 500000;
      double addMoney = 0;
      double addFame = 0;

      for (var e in freelances) {
        addMoney += e.price * fame10;
        addFame += e.fame;
      }

      if (addFame > 0) _fameCubit.add(addFame);

      if (addMoney > 0) {
        _moneyCubit.addTransaction(
          value: addMoney,
          eTypeTransactionSource: ETypeTransactionSource.freelance,
        );
      }
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
