// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Learning _$$_LearningFromJson(Map<String, dynamic> json) => _$_Learning(
      id: json['id'] as String,
      name: json['name'] as String,
      skillType: $enumDecode(_$ETypeSkillsEnumMap, json['skillType']),
      baseTime: json['baseTime'] as int,
      exp: json['exp'] as int,
      time: json['time'] as int,
      cost: (json['cost'] as num).toDouble(),
      status: $enumDecodeNullable(_$ETypeStatusEnumMap, json['status']) ??
          ETypeStatus.base,
    );

Map<String, dynamic> _$$_LearningToJson(_$_Learning instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'skillType': _$ETypeSkillsEnumMap[instance.skillType],
      'baseTime': instance.baseTime,
      'exp': instance.exp,
      'time': instance.time,
      'cost': instance.cost,
      'status': _$ETypeStatusEnumMap[instance.status],
    };

const _$ETypeSkillsEnumMap = {
  ETypeSkills.programming: 'programming',
  ETypeSkills.analytics: 'analytics',
  ETypeSkills.bookkeeping: 'bookkeeping',
  ETypeSkills.business: 'business',
  ETypeSkills.management: 'management',
  ETypeSkills.confidence: 'confidence',
  ETypeSkills.communicativeness: 'communicativeness',
};

const _$ETypeStatusEnumMap = {
  ETypeStatus.base: 'base',
  ETypeStatus.queue: 'queue',
  ETypeStatus.done: 'done',
};
