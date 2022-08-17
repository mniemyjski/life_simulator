// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_bonus_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeBonus _$$_TimeBonusFromJson(Map<String, dynamic> json) => _$_TimeBonus(
      eTypeBonus: $enumDecode(_$ETypeBonusEnumMap, json['eTypeBonus']),
      eTypeBonusSource:
          $enumDecode(_$ETypeBonusSourceEnumMap, json['eTypeBonusSource']),
      value: json['value'] as int,
    );

Map<String, dynamic> _$$_TimeBonusToJson(_$_TimeBonus instance) =>
    <String, dynamic>{
      'eTypeBonus': _$ETypeBonusEnumMap[instance.eTypeBonus],
      'eTypeBonusSource': _$ETypeBonusSourceEnumMap[instance.eTypeBonusSource],
      'value': instance.value,
    };

const _$ETypeBonusEnumMap = {
  ETypeBonus.commuting: 'commuting',
  ETypeBonus.relax: 'relax',
  ETypeBonus.sleep: 'sleep',
  ETypeBonus.learn: 'learn',
};

const _$ETypeBonusSourceEnumMap = {
  ETypeBonusSource.transport: 'transport',
  ETypeBonusSource.meal: 'meal',
  ETypeBonusSource.house: 'house',
  ETypeBonusSource.job: 'job',
};
