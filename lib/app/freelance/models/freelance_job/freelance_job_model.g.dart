// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freelance_job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FreelanceJob _$$_FreelanceJobFromJson(Map<String, dynamic> json) =>
    _$_FreelanceJob(
      uid: json['uid'] as String,
      name: json['name'] as String,
      eTypeFreelance:
          $enumDecode(_$ETypeFreelanceEnumMap, json['eTypeFreelance']),
      level: json['level'] as int,
      workTime: json['workTime'] as int,
      leftWorkTime: json['leftWorkTime'] as int,
      reqSkills: (json['reqSkills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      userSkills: (json['userSkills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      repeat: json['repeat'] as bool? ?? false,
      lastVersion: json['lastVersion'] as int? ?? 0,
    );

Map<String, dynamic> _$$_FreelanceJobToJson(_$_FreelanceJob instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'eTypeFreelance': _$ETypeFreelanceEnumMap[instance.eTypeFreelance]!,
      'level': instance.level,
      'workTime': instance.workTime,
      'leftWorkTime': instance.leftWorkTime,
      'reqSkills': instance.reqSkills.map((e) => e.toJson()).toList(),
      'userSkills': instance.userSkills.map((e) => e.toJson()).toList(),
      'repeat': instance.repeat,
      'lastVersion': instance.lastVersion,
    };

const _$ETypeFreelanceEnumMap = {
  ETypeFreelance.book: 'book',
  ETypeFreelance.course: 'course',
  ETypeFreelance.youtube: 'youtube',
  ETypeFreelance.application: 'application',
  ETypeFreelance.handicrafts: 'handicrafts',
};
