// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_modifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeModifier _$$_TimeModifierFromJson(Map<String, dynamic> json) =>
    _$_TimeModifier(
      id: json['id'] as String,
      eTypeModifier: $enumDecode(_$ETypeModifierEnumMap, json['eTypeModifier']),
      eTypeModifierSource: $enumDecode(
          _$ETypeModifierSourceEnumMap, json['eTypeModifierSource']),
      value: json['value'] as int,
    );

Map<String, dynamic> _$$_TimeModifierToJson(_$_TimeModifier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'eTypeModifier': _$ETypeModifierEnumMap[instance.eTypeModifier],
      'eTypeModifierSource':
          _$ETypeModifierSourceEnumMap[instance.eTypeModifierSource],
      'value': instance.value,
    };

const _$ETypeModifierEnumMap = {
  ETypeModifier.free: 'free',
  ETypeModifier.work: 'work',
  ETypeModifier.commuting: 'commuting',
  ETypeModifier.learn: 'learn',
  ETypeModifier.relax: 'relax',
  ETypeModifier.sleep: 'sleep',
};

const _$ETypeModifierSourceEnumMap = {
  ETypeModifierSource.job: 'job',
  ETypeModifierSource.freelance: 'freelance',
  ETypeModifierSource.transport: 'transport',
  ETypeModifierSource.meal: 'meal',
  ETypeModifierSource.house: 'house',
};
