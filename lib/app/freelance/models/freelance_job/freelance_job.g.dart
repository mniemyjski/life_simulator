// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freelance_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FreelanceJob _$$_FreelanceJobFromJson(Map<String, dynamic> json) =>
    _$_FreelanceJob(
      id: json['id'] as String,
      name: json['name'] as String,
      eTypeWork: $enumDecode(_$ETypeWorkEnumMap, json['eTypeWork']),
      workTime: json['workTime'] as int,
      leftWorkTime: json['leftWorkTime'] as int,
      reqSkills: (json['reqSkills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      fame: json['fame'] as int,
      leftTime: json['leftTime'] as int,
      price: (json['price'] as num).toDouble(),
      finished: json['finished'] as bool,
    );

Map<String, dynamic> _$$_FreelanceJobToJson(_$_FreelanceJob instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'eTypeWork': _$ETypeWorkEnumMap[instance.eTypeWork],
      'workTime': instance.workTime,
      'leftWorkTime': instance.leftWorkTime,
      'reqSkills': instance.reqSkills.map((e) => e.toJson()).toList(),
      'fame': instance.fame,
      'leftTime': instance.leftTime,
      'price': instance.price,
      'finished': instance.finished,
    };

const _$ETypeWorkEnumMap = {
  ETypeWork.book: 'book',
  ETypeWork.course: 'course',
  ETypeWork.youtube: 'youtube',
  ETypeWork.application: 'application',
};
