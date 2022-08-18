// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freelance_done_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FreelanceDone _$$_FreelanceDoneFromJson(Map<String, dynamic> json) =>
    _$_FreelanceDone(
      id: json['id'] as String,
      name: json['name'] as String,
      eTypeFreelance:
          $enumDecode(_$ETypeFreelanceEnumMap, json['eTypeFreelance']),
      fame: (json['fame'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      level: json['level'] as int,
      dateCre: DateTime.parse(json['dateCre'] as String),
      rating: json['rating'] as int,
    );

Map<String, dynamic> _$$_FreelanceDoneToJson(_$_FreelanceDone instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'eTypeFreelance': _$ETypeFreelanceEnumMap[instance.eTypeFreelance],
      'fame': instance.fame,
      'price': instance.price,
      'level': instance.level,
      'dateCre': instance.dateCre.toIso8601String(),
      'rating': instance.rating,
    };

const _$ETypeFreelanceEnumMap = {
  ETypeFreelance.book: 'book',
  ETypeFreelance.course: 'course',
  ETypeFreelance.youtube: 'youtube',
  ETypeFreelance.application: 'application',
};
