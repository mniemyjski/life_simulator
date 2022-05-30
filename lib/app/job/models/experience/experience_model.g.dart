// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Experience _$$_ExperienceFromJson(Map<String, dynamic> json) =>
    _$_Experience(
      exp: json['exp'] as int,
      requirements: (json['requirements'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      salary: json['salary'] as int,
      interval: json['interval'] as int,
      time: json['time'] as int,
    );

Map<String, dynamic> _$$_ExperienceToJson(_$_Experience instance) =>
    <String, dynamic>{
      'exp': instance.exp,
      'requirements': instance.requirements.map((e) => e.toJson()).toList(),
      'salary': instance.salary,
      'interval': instance.interval,
      'time': instance.time,
    };
