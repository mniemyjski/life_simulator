import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utilities/utilities.dart';

part 'game_event_model.freezed.dart';
part 'game_event_model.g.dart';

enum ETypeEffect {
  sick,
  money,
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

  // String dateToString() {
  //   if (this.datCre == null) throw 'Next date is null';
  //   if (this.datCre!.year < 99) return DateFormat('yy-MM-dd').format(this.datCre!);
  //   if (this.datCre!.year < 999) return DateFormat('yyy-MM-dd').format(this.datCre!);
  //   return DateFormat('yyyy-MM-dd').format(this.datCre!);
  // }
}
