// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Job _$$_JobFromJson(Map<String, dynamic> json) => _$_Job(
      id: json['id'] as String,
      company: json['company'] as String,
      industry: $enumDecode(_$ETypeIndustryEnumMap, json['industry']),
      experiences: (json['experiences'] as List<dynamic>)
          .map((e) => Experience.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_JobToJson(_$_Job instance) => <String, dynamic>{
      'id': instance.id,
      'company': instance.company,
      'industry': _$ETypeIndustryEnumMap[instance.industry],
      'experiences': instance.experiences.map((e) => e.toJson()).toList(),
    };

const _$ETypeIndustryEnumMap = {
  ETypeIndustry.it: 'it',
  ETypeIndustry.shop: 'shop',
  ETypeIndustry.customerService: 'customerService',
};
