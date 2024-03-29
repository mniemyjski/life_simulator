import 'dart:async';
import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../database/cubit/database_cubit.dart';
import '../../money/cubit/money/money_cubit.dart';
import '../../money/models/transaction/transaction_model.dart';
import '../../new_game/new_game_cubit.dart';
import '../models/game_event/game_event_model.dart';

part 'event_cubit.freezed.dart';
part 'event_cubit.g.dart';
part 'event_state.dart';

@lazySingleton
class EventCubit extends HydratedCubit<EventState> {
  final NewGameCubit _newGameCubit;
  final DatabaseCubit _databaseCubit;
  late StreamSubscription _newGameSub;

  final MoneyCubit _moneyCubit;

  EventCubit(
    this._newGameCubit,
    this._databaseCubit,
    this._moneyCubit,
  ) : super(const EventState.initial()) {
    _newGame();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(EventState.loaded(events: [], currentDate: DateTime(18, 1, 1)));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(EventState.loaded(events: [], currentDate: DateTime(18, 1, 1)));
    });
  }

  _draw(DateTime dateTime) {
    var rng = Random();
    state.whenOrNull(loaded: (events, currentDate) {
      for (var elementFromDataBase in _databaseCubit.state.eventsDB) {
        int random = rng.nextInt(elementFromDataBase.frequency);

        if (random == elementFromDataBase.frequency ~/ 2) {
          bool already = false;
          for (var e in events) {
            if (e.active && e.eTypeEffect == elementFromDataBase.eTypeEffect) {
              already = true;
              continue;
            }
          }

          if (!already) add(elementFromDataBase.copyWith(datCre: dateTime));
        }
      }
    });
  }

  counting(DateTime dateTime) {
    if (dateTime == DateTime(18, 1, 1)) return;
    state.whenOrNull(loaded: (events, currentDate) {
      List<GameEvent> result = [];

      for (var element in events) {
        GameEvent gameEvent =
            element.copyWith(leftDuration: element.leftDuration > 0 ? element.leftDuration - 1 : 0);
        if (gameEvent.leftDuration == 0) gameEvent = gameEvent.copyWith(active: false);
        result.add(gameEvent);
      }

      emit(EventState.loaded(events: result, currentDate: dateTime));
    });

    _draw(dateTime);
  }

  add(GameEvent event) {
    state.whenOrNull(loaded: (events, currentDate) {
      if (event.eTypeEffect == ETypeEffect.addMoney) {
        _moneyCubit.addTransaction(
            dateTime: currentDate,
            value: event.value,
            eTypeTransactionSource: ETypeTransactionSource.addMoney);
      }

      if (event.eTypeEffect == ETypeEffect.lostMoney) {
        _moneyCubit.addTransaction(
            dateTime: currentDate,
            value: event.value,
            eTypeTransactionSource: ETypeTransactionSource.lostMoney);
      }

      if (event.eTypeEffect == ETypeEffect.taxes) {
        _moneyCubit.addTransaction(
            dateTime: currentDate,
            value: _moneyCubit.getBalance() * event.value,
            eTypeTransactionSource: ETypeTransactionSource.unpaidTaxes);
      }

      List<GameEvent> result = List.from(events)
        ..add(event)
        ..sort((a, b) => b.datCre!.compareTo(a.datCre!));

      emit(EventState.loaded(events: result, currentDate: currentDate));
    });
  }

  change(GameEvent event) {
    state.whenOrNull(loaded: (events, currentDate) {
      List<GameEvent> result = List.from(events)
        ..removeWhere((element) => element.id == id)
        ..add(event);

      emit(EventState.loaded(events: result, currentDate: currentDate));
    });
  }

  @override
  EventState? fromJson(Map<String, dynamic> json) {
    return EventState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(EventState state) {
    return state.toJson();
  }
}
