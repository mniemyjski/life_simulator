import 'package:freezed_annotation/freezed_annotation.dart';

part 'bonus_model.freezed.dart';
part 'bonus_model.g.dart';

enum ETypeBonus { commuting, relax, sleep, learn }

enum ETypeBonusSource { transport, meal, house, job }

@freezed
class Bonus with _$Bonus {
  const factory Bonus({
    required ETypeBonus eTypeBonus,
    required ETypeBonusSource eTypeBonusSource,
    required int value,
  }) = _Bonus;

  factory Bonus.fromJson(Map<String, dynamic> json) => _$BonusFromJson(json);
}
