// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'time_bonus_model.freezed.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'time_bonus_model.g.dart';

enum ETypeBonus { commuting, relax, sleep, learn }

enum ETypeBonusSource { transport, meal, house, job }

// @freezed
// class TimeBonus with _$TimeBonus {
//   const factory TimeBonus({
//     required ETypeBonus eTypeBonus,
//     required ETypeBonusSource eTypeBonusSource,
//     required int value,
//   }) = _TimeBonus;
//
//   factory TimeBonus.fromJson(Map<String, dynamic> json) => _$TimeBonusFromJson(json);
// }

@CopyWith()
@JsonSerializable()
@Embedded(ignore: {'props', 'stringify'})
class TimeBonus extends Equatable {
  @Enumerated(EnumType.ordinal32)
  final ETypeBonus? eTypeBonus;
  @Enumerated(EnumType.ordinal32)
  final ETypeBonusSource? eTypeBonusSource;
  final int? value;

  const TimeBonus({
    this.eTypeBonus,
    this.eTypeBonusSource,
    this.value,
  });

  factory TimeBonus.fromJson(Map<String, dynamic> json) => _$TimeBonusFromJson(json);

  Map<String, dynamic> toJson() => _$TimeBonusToJson(this);

  @override
  List<Object> get props => [eTypeBonus!, eTypeBonusSource!, value!];
}
