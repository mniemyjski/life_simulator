import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utilities/utilities.dart';

part 'game_event_model.freezed.dart';
part 'game_event_model.g.dart';

enum ETypeEffect {
  sick,
  addMoney,
  lostMoney,
  taxes,
}

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent({
    required String id,
    required String name,
    required String description,
    DateTime? datCre,
    required ETypeEffect eTypeEffect,
    required double value,
    required int duration,
    required int leftDuration,
    required int frequency,
    @Default(true) bool active,
  }) = _Event;

  factory GameEvent.fromJson(Map<String, dynamic> json) => _$GameEventFromJson(json);
}
