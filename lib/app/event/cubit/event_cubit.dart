import 'dart:async';
import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/database/cubit/database_cubit.dart';
import 'package:life_simulator/app/date/cubit/date_cubit.dart';

import '../../money/cubit/money_cubit.dart';
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

  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  final MoneyCubit _moneyCubit;

  EventCubit(
    DatabaseCubit databaseCubit,
    NewGameCubit newGameCubit,
    DateCubit dateCubit,
    MoneyCubit moneyCubit,
  )   : _newGameCubit = newGameCubit,
        _dateCubit = dateCubit,
        _moneyCubit = moneyCubit,
        _databaseCubit = databaseCubit,
        super(EventState.initial()) {
    _newGame();
    _counting();
    _draw();
  }

  @override
  Future<void> close() async {
    _newGameSub.cancel();
    _dateSub.cancel();
    super.close();
  }

  _newGame() {
    if (_newGameCubit.state) emit(EventState.loaded(events: []));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(EventState.loaded(events: []));
    });
  }

  _draw() {
    _dateSub = _dateCubit.stream.listen((dateState) {
      dateState.whenOrNull(loaded: (date) {
        if (date.millisecondsSinceEpoch < DateTime(18, 1, 2).millisecondsSinceEpoch) return;
        var rng = Random();
        state.whenOrNull(loaded: (events) {
          _databaseCubit.state.eventsDB.forEach((elementFromDataBase) {
            int random = rng.nextInt(elementFromDataBase.frequency);

            if (random == 0) {
              bool already = false;
              events
                ..forEach((e) {
                  if (e.active && e.eTypeEffect == elementFromDataBase.eTypeEffect) {
                    already = true;
                    return;
                  }
                });

              if (!already) add(elementFromDataBase.copyWith(datCre: date));
            }
          });
        });
      });
    });
  }

  _counting() {
    _dateSub = _dateCubit.stream.listen((dateState) {
      dateState.whenOrNull(loaded: (date) {
        if (date == DateTime(18, 1, 1)) return;
        state.whenOrNull(loaded: (events) {
          List<GameEvent> result = [];

          events.forEach((element) {
            GameEvent gameEvent = element.copyWith(
                leftDuration: element.leftDuration > 0 ? element.leftDuration - 1 : 0);
            if (gameEvent.leftDuration == 0) gameEvent = gameEvent.copyWith(active: false);
            result.add(gameEvent);
          });

          emit(EventState.loaded(events: result));
        });
      });
    });
  }

  add(GameEvent event) {
    state.whenOrNull(loaded: (events) {
      if (event.eTypeEffect == ETypeEffect.money) _moneyCubit.change(event.value);

      if (event.eTypeEffect == ETypeEffect.taxes)
        _moneyCubit.change(_moneyCubit.state * event.value);

      List<GameEvent> result = List.from(events)
        ..add(event)
        ..sort((a, b) => b.datCre!.compareTo(a.datCre!));

      emit(EventState.loaded(events: result));
    });
  }

  change(GameEvent event) {
    state.whenOrNull(loaded: (events) {
      List<GameEvent> result = List.from(events)
        ..removeWhere((element) => element.id == id)
        ..add(event);

      emit(EventState.loaded(events: result));
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
