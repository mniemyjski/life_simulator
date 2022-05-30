// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Learning _$$_LearningFromJson(Map<String, dynamic> json) => _$_Learning(
      id: json['id'] as String,
      name: json['name'] as String,
      skills: (json['skills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      time: json['time'] as int,
      cost: json['cost'] as int,
      status: $enumDecodeNullable(_$ETypeStatusEnumMap, json['status']) ??
          ETypeStatus.base,
    );

Map<String, dynamic> _$$_LearningToJson(_$_Learning instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'skills': instance.skills.map((e) => e.toJson()).toList(),
      'time': instance.time,
      'cost': instance.cost,
      'status': _$ETypeStatusEnumMap[instance.status],
    };

const _$ETypeStatusEnumMap = {
  ETypeStatus.base: 'base',
  ETypeStatus.queue: 'queue',
  ETypeStatus.done: 'done',
};
