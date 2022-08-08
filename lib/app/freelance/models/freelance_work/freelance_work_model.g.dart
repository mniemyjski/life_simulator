// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freelance_work_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FreelanceWork _$$_FreelanceWorkFromJson(Map<String, dynamic> json) =>
    _$_FreelanceWork(
      id: json['id'] as String,
      name: json['name'] as String,
      eTypeFreelance:
          $enumDecode(_$ETypeFreelanceEnumMap, json['eTypeFreelance']),
      fame: (json['fame'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      workTime: json['workTime'] as int,
      leftWorkTime: json['leftWorkTime'] as int,
      reqSkills: (json['reqSkills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      userSkills: (json['userSkills'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FreelanceWorkToJson(_$_FreelanceWork instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'eTypeFreelance': _$ETypeFreelanceEnumMap[instance.eTypeFreelance],
      'fame': instance.fame,
      'price': instance.price,
      'workTime': instance.workTime,
      'leftWorkTime': instance.leftWorkTime,
      'reqSkills': instance.reqSkills.map((e) => e.toJson()).toList(),
      'userSkills': instance.userSkills.map((e) => e.toJson()).toList(),
    };

const _$ETypeFreelanceEnumMap = {
  ETypeFreelance.book: 'book',
  ETypeFreelance.course: 'course',
  ETypeFreelance.youtube: 'youtube',
  ETypeFreelance.application: 'application',
};
