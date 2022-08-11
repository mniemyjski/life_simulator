// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Experience _$$_ExperienceFromJson(Map<String, dynamic> json) => _$_Experience(
      id: json['id'] as String,
      name: json['name'] as String,
      exp: json['exp'] as int,
      requirements: (json['requirements'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      salary: (json['salary'] as num).toDouble(),
      eTypeFrequency: $enumDecode(_$ETypeFrequencyEnumMap, json['eTypeFrequency']),
      work: json['job'] as int,
      commuting: json['commuting'] as int,
      bonusToRelax: json['bonusToRelax'] as int? ?? 0,
      bonusToSleep: json['bonusToSleep'] as int? ?? 0,
      bonusToLearn: json['bonusToLearn'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ExperienceToJson(_$_Experience instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'exp': instance.exp,
      'requirements': instance.requirements.map((e) => e.toJson()).toList(),
      'salary': instance.salary,
      'eTypeFrequency': _$ETypeFrequencyEnumMap[instance.eTypeFrequency],
      'job': instance.work,
      'commuting': instance.commuting,
      'bonusToRelax': instance.bonusToRelax,
      'bonusToSleep': instance.bonusToSleep,
      'bonusToLearn': instance.bonusToLearn,
    };

const _$ETypeFrequencyEnumMap = {
  ETypeFrequency.annually: 'annually',
  ETypeFrequency.monthly: 'monthly',
  ETypeFrequency.weekly: 'weekly',
  ETypeFrequency.daily: 'daily',
};
