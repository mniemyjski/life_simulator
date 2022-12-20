import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import '../time_bonus/time_bonus_model.dart';

// part 'time_spend_model.freezed.dart';
part 'time_spend_model.g.dart';

// @freezed
// class TimeSpend with _$TimeSpend {
//   const TimeSpend._();
//   const factory TimeSpend({
//     required int free,
//     required int work,
//     required int commuting,
//     required int freelance,
//     required int learn,
//     required int relax,
//     required int sleep,
//     required int used,
//     required List<TimeBonus> bonuses,
//   }) = _TimeSpend;
//
//   factory TimeSpend.fromJson(Map<String, dynamic> json) => _$TimeSpendFromJson(json);
//
//   static TimeSpend newGame() {
//     return const TimeSpend(
//       free: 13,
//       work: 0,
//       commuting: 0,
//       freelance: 0,
//       learn: 0,
//       relax: 3,
//       sleep: 8,
//       used: 0,
//       bonuses: [],
//     );
//   }
//
//   int getBonus(ETypeBonus eTypeBonus) {
//     int bonus = 0;
//     for (var element in bonuses) {
//       if (element.eTypeBonus == eTypeBonus) bonus += element.value;
//     }
//
//     switch (eTypeBonus) {
//       case ETypeBonus.commuting:
//         return commuting > -bonus ? commuting + bonus : 0;
//       case ETypeBonus.relax:
//         return bonus - (checkBonusSource(ETypeBonusSource.house) ? 0 : 4);
//       case ETypeBonus.sleep:
//         return bonus - (checkBonusSource(ETypeBonusSource.house) ? 0 : 6);
//       case ETypeBonus.learn:
//         return bonus - (checkBonusSource(ETypeBonusSource.house) ? 0 : 2);
//     }
//   }
//
//   bool checkBonusSource(ETypeBonusSource eTypeBonusSource) {
//     bool check = false;
//
//     for (var element in bonuses) {
//       if (element.eTypeBonusSource == eTypeBonusSource) check = true;
//     }
//
//     return check;
//   }
//
//   int getTotalWorkTime() {
//     return work + freelance + getBonus(ETypeBonus.commuting);
//   }
//
//   int getTotalLearnTime() {
//     return learn + getBonus(ETypeBonus.learn);
//   }
//
//   int getTotalSleepTime() {
//     return sleep + getBonus(ETypeBonus.sleep);
//   }
//
//   int getTotalRelaxTime() {
//     return relax + getBonus(ETypeBonus.relax);
//   }
// }

@CopyWith()
@JsonSerializable()
@Collection(ignore: {'props', 'stringify'})
class TimeSpend extends Equatable {
  final Id id;
  final int free;
  final int work;
  final int commuting;
  final int freelance;
  final int learn;
  final int relax;
  final int sleep;
  final int used;
  final List<TimeBonus> bonuses;

  const TimeSpend({
    this.id = 1,
    this.free = 13,
    this.work = 0,
    this.commuting = 0,
    this.freelance = 0,
    this.learn = 0,
    this.relax = 3,
    this.sleep = 8,
    this.used = 0,
    this.bonuses = const [],
  });

  factory TimeSpend.fromJson(Map<String, dynamic> json) => _$TimeSpendFromJson(json);
  Map<String, dynamic> toJson() => _$TimeSpendToJson(this);

  @override
  List<Object> get props => [
        free,
        work,
        commuting,
        freelance,
        learn,
        relax,
        sleep,
        used,
        bonuses,
      ];

  int getBonus(ETypeBonus eTypeBonus) {
    int bonus = 0;
    for (var element in bonuses) {
      if (element.eTypeBonus == eTypeBonus) bonus += element.value!;
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

  Future<bool> checkFreeTime(int value) async {
    return free >= value ? true : false;
  }
}
