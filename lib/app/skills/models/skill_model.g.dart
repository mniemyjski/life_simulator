// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Skill _$$_SkillFromJson(Map<String, dynamic> json) => _$_Skill(
      name: $enumDecode(_$ETypeSkillsEnumMap, json['name']),
      lvl: json['lvl'] as int? ?? 0,
      exp: (json['exp'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_SkillToJson(_$_Skill instance) => <String, dynamic>{
      'name': _$ETypeSkillsEnumMap[instance.name]!,
      'lvl': instance.lvl,
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
  ETypeSkills.writing: 'writing',
  ETypeSkills.creativity: 'creativity',
  ETypeSkills.handyman: 'handyman',
};
