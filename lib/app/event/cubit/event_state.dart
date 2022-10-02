part of 'event_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class EventState with _$EventState {
  const factory EventState.initial() = Initial;
  const factory EventState.loading() = Loading;
  factory EventState.loaded({required List<GameEvent> events, required DateTime currentDate}) =
      Loaded;

  factory EventState.fromJson(Map<String, dynamic> json) => _$EventStateFromJson(json);
}
