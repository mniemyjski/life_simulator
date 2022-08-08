// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freelance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Freelance _$$_FreelanceFromJson(Map<String, dynamic> json) => _$_Freelance(
      fame: json['fame'] as int,
      works: (json['works'] as List<dynamic>)
          .map((e) => FreelanceWork.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FreelanceToJson(_$_Freelance instance) =>
    <String, dynamic>{
      'fame': instance.fame,
      'works': instance.works.map((e) => e.toJson()).toList(),
    };
