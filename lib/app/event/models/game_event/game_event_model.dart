import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:life_simulator/app/date/models/date_game_model.dart';

part 'game_event_model.freezed.dart';
part 'game_event_model.g.dart';

enum ETypeEffect {
  ill,
  taxes,
  inheritance,
  penalty,
}

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent({
    required String id,
    required String name,
    required String description,
    required DateGame? dateGame,
    required ETypeEffect eTypeEffect,
    required double value,
    required int duration,
    required int leftDuration,
    @Default(true) bool active,
  }) = _Event;

  factory GameEvent.fromJson(Map<String, dynamic> json) => _$GameEventFromJson(json);
}
