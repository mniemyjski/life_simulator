// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Event _$$_EventFromJson(Map<String, dynamic> json) => _$_Event(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      datCre: json['datCre'] == null
          ? null
          : DateTime.parse(json['datCre'] as String),
      eTypeEffect: $enumDecode(_$ETypeEffectEnumMap, json['eTypeEffect']),
      value: (json['value'] as num).toDouble(),
      duration: json['duration'] as int,
      leftDuration: json['leftDuration'] as int,
      frequency: json['frequency'] as int,
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$$_EventToJson(_$_Event instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'datCre': instance.datCre?.toIso8601String(),
      'eTypeEffect': _$ETypeEffectEnumMap[instance.eTypeEffect],
      'value': instance.value,
      'duration': instance.duration,
      'leftDuration': instance.leftDuration,
      'frequency': instance.frequency,
      'active': instance.active,
    };

const _$ETypeEffectEnumMap = {
  ETypeEffect.sick: 'sick',
  ETypeEffect.taxes: 'taxes',
  ETypeEffect.inheritance: 'inheritance',
  ETypeEffect.penalty: 'penalty',
};
