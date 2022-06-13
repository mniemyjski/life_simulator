// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Event _$$_EventFromJson(Map<String, dynamic> json) => _$_Event(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      dateGame: json['dateGame'] == null
          ? null
          : DateGame.fromJson(json['dateGame'] as Map<String, dynamic>),
      eTypeEffect: $enumDecode(_$ETypeEffectEnumMap, json['eTypeEffect']),
      value: (json['value'] as num).toDouble(),
      duration: json['duration'] as int,
      leftDuration: json['leftDuration'] as int,
      active: json['active'] as bool? ?? true,
    );

Map<String, dynamic> _$$_EventToJson(_$_Event instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'dateGame': instance.dateGame?.toJson(),
      'eTypeEffect': _$ETypeEffectEnumMap[instance.eTypeEffect],
      'value': instance.value,
      'duration': instance.duration,
      'leftDuration': instance.leftDuration,
      'active': instance.active,
    };

const _$ETypeEffectEnumMap = {
  ETypeEffect.ill: 'ill',
  ETypeEffect.taxes: 'taxes',
  ETypeEffect.inheritance: 'inheritance',
  ETypeEffect.penalty: 'penalty',
};
