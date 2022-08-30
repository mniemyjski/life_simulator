import 'package:freezed_annotation/freezed_annotation.dart';

import '../time_bonus/time_bonus_model.dart';

part 'time_spend_model.freezed.dart';
part 'time_spend_model.g.dart';

@freezed
class TimeSpend with _$TimeSpend {
  const TimeSpend._();
  const factory TimeSpend({
    required int free,
    required int work,
    required int commuting,
    required int freelance,
    required int learn,
    required int relax,
    required int sleep,
    required int used,
    required List<TimeBonus> bonuses,
  }) = _TimeSpend;

  factory TimeSpend.fromJson(Map<String, dynamic> json) => _$TimeSpendFromJson(json);

  static TimeSpend newGame() {
    return const TimeSpend(
      free: 13,
      work: 0,
      commuting: 0,
      freelance: 0,
      learn: 0,
      relax: 3,
      sleep: 8,
      used: 0,
      bonuses: [],
    );
  }

  int getBonus(ETypeBonus eTypeBonus) {
    int bonus = 0;
    for (var element in bonuses) {
      if (element.eTypeBonus == eTypeBonus) bonus += element.value;
    }

    switch (eTypeBonus) {
      case ETypeBonus.commuting:
        return commuting > -bonus ? commuting + bonus : 0;
      case ETypeBonus.relax:
        return bonus - (checkBonusSource(ETypeBonusSource.house) ? 0 : 4);
      case ETypeBonus.sleep:
        return bonus - (checkBonusSource(ETypeBonusSource.house) ? 0 : 6);
      case ETypeBonus.learn:
        return bonus - (checkBonusSource(ETypeBonusSource.house) ? 0 : 2);
    }
  }

  bool checkBonusSource(ETypeBonusSource eTypeBonusSource) {
    bool check = false;

    for (var element in bonuses) {
      if (element.eTypeBonusSource == eTypeBonusSource) check = true;
    }

    return check;
  }

  int getTotalWorkTime() {
    return work + freelance + getBonus(ETypeBonus.commuting);
  }

  int getTotalLearnTime() {
    return learn + getBonus(ETypeBonus.learn);
  }

  int getTotalSleepTime() {
    return sleep + getBonus(ETypeBonus.sleep);
  }

  int getTotalRelaxTime() {
    return relax + getBonus(ETypeBonus.relax);
  }
}
