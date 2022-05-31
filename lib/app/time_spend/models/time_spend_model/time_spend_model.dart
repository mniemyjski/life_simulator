import 'package:freezed_annotation/freezed_annotation.dart';

import '../bonus/bonus_model.dart';

part 'time_spend_model.freezed.dart';
part 'time_spend_model.g.dart';

@freezed
class TimeSpend with _$TimeSpend {
  const factory TimeSpend({
    required int free,
    required int work,
    required int commuting,
    required int learn,
    required int relax,
    required int sleep,
    required int used,
    required List<Bonus> bonuses,
  }) = _TimeSpend;

  factory TimeSpend.fromJson(Map<String, dynamic> json) => _$TimeSpendFromJson(json);
}
