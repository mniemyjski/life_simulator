// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skills_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Skills _$$_SkillsFromJson(Map<String, dynamic> json) => _$_Skills(
      name: $enumDecode(_$ETypeSkillsEnumMap, json['name']),
      exp: json['exp'] as int,
    );

Map<String, dynamic> _$$_SkillsToJson(_$_Skills instance) => <String, dynamic>{
      'name': _$ETypeSkillsEnumMap[instance.name],
      'exp': instance.exp,
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
