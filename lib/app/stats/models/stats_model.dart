import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_model.freezed.dart';
part 'stats_model.g.dart';

@freezed
class Stats with _$Stats {
  const factory Stats({
    required double health,
    required double satisfaction,
    required double tiredness,
    required double maxHealth,
    required double maxSatisfaction,
    required double maxTiredness,
  }) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
}
