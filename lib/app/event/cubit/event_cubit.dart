import 'dart:async';
import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:life_simulator/app/date/cubit/date_cubit.dart';

import '../../../data/data.dart';
import '../../date/models/date_game_model.dart';
import '../../new_game/new_game_cubit.dart';
import '../models/game_event/game_event_model.dart';

part 'event_cubit.freezed.dart';
part 'event_cubit.g.dart';
part 'event_state.dart';

@lazySingleton
class EventCubit extends HydratedCubit<EventState> {
  final NewGameCubit _newGameCubit;
  late StreamSubscription _newGameSub;

  final DateCubit _dateCubit;
  late StreamSubscription _dateSub;

  EventCubit(NewGameCubit newGameCubit, DateCubit dateCubit)
      : _newGameCubit = newGameCubit,
        _dateCubit = dateCubit,
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
    if (_newGameCubit.state) emit(EventState.loaded(events: [], database: Data.events()));
    _newGameSub = _newGameCubit.stream.listen((newGame) {
      if (newGame) emit(EventState.loaded(events: [], database: Data.events()));
    });
  }

  add(GameEvent event) {
    state.whenOrNull(loaded: (events, database) {
      List<GameEvent> result = List.from(events)..add(event);
      emit(EventState.loaded(events: result, database: database));
    });
  }

  _draw() {
    _dateSub = _dateCubit.stream.listen((dateState) {
      dateState.whenOrNull(loaded: (date) {
        if (date == DateGame(year: 18, month: 1, day: 1)) return;
        state.whenOrNull(loaded: (events, database) {
          var rng = Random();
          int random = rng.nextInt(1);

          if (database.length > random) {
            add(database[random]);
          }
        });
      });
    });
  }

  _counting() {
    _dateSub = _dateCubit.stream.listen((dateState) {
      dateState.whenOrNull(loaded: (date) {
        if (date == DateGame(year: 18, month: 1, day: 1)) return;
        state.whenOrNull(loaded: (events, database) {
          events.forEach((element) {
            List<GameEvent> result = [];

            events.forEach((element) {
              GameEvent gameEvent = element.copyWith(leftDuration: element.leftDuration - 1);
              if (gameEvent.leftDuration == 0) gameEvent = element.copyWith(active: false);

              result.add(gameEvent);
            });

            emit(EventState.loaded(events: result, database: database));
          });
        });
      });
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
