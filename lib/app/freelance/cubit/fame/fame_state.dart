part of 'fame_cubit.dart';

@freezed
class FameState with _$FameState {
  const factory FameState.initial() = Initial;
  const factory FameState.loading() = Loading;
  const factory FameState.loaded(double fame, DateTime currentDate) = Loaded;

  factory FameState.fromJson(Map<String, dynamic> json) => _$FameStateFromJson(json);
}
