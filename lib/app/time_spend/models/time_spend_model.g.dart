// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_spend_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeSpend _$$_TimeSpendFromJson(Map<String, dynamic> json) => _$_TimeSpend(
      free: json['free'] as int,
      work: json['work'] as int,
      learn: json['learn'] as int,
      relax: json['relax'] as int,
      sleep: json['sleep'] as int,
      used: json['used'] as int,
    );

Map<String, dynamic> _$$_TimeSpendToJson(_$_TimeSpend instance) =>
    <String, dynamic>{
      'free': instance.free,
      'work': instance.work,
      'learn': instance.learn,
      'relax': instance.relax,
      'sleep': instance.sleep,
      'used': instance.used,
    };
