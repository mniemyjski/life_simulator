import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_bonus_model.freezed.dart';
part 'time_bonus_model.g.dart';

enum ETypeBonus { commuting, relax, sleep, learn }

enum ETypeBonusSource { transport, meal, house, job }

@freezed
class TimeBonus with _$TimeBonus {
  const factory TimeBonus({
    required ETypeBonus eTypeBonus,
    required ETypeBonusSource eTypeBonusSource,
    required int value,
  }) = _TimeBonus;

  factory TimeBonus.fromJson(Map<String, dynamic> json) => _$TimeBonusFromJson(json);
}
