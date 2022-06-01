part of 'stats_cubit.dart';

@freezed
class StatsState with _$StatsState {
  const factory StatsState.initial() = Initial;
  const factory StatsState.loading() = Loading;
  const factory StatsState.loaded(Stats stats) = Loaded;

  factory StatsState.fromJson(Map<String, dynamic> json) => _$StatsStateFromJson(json);
}
