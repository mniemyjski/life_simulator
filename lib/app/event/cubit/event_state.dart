part of 'event_cubit.dart';

@freezed
class EventState with _$EventState {
  const factory EventState.initial() = Initial;
  const factory EventState.loading() = Loading;
  const factory EventState.loaded({required List<GameEvent> events}) = Loaded;

  factory EventState.fromJson(Map<String, dynamic> json) => _$EventStateFromJson(json);
}
