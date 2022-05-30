// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'used_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Busy _$$_BusyFromJson(Map<String, dynamic> json) => _$_Busy(
      id: json['id'] as String,
      datCre: DateGame.fromJson(json['datCre'] as Map<String, dynamic>),
      hours: json['hours'],
      source: json['source'] as String,
      int: json['int'] as String,
    );

Map<String, dynamic> _$$_BusyToJson(_$_Busy instance) => <String, dynamic>{
      'id': instance.id,
      'datCre': instance.datCre.toJson(),
      'hours': instance.hours,
      'source': instance.source,
      'int': instance.int,
    };
