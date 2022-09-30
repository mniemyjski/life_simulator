// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Business _$$_BusinessFromJson(Map<String, dynamic> json) => _$_Business(
      id: json['id'] as String,
      name: json['name'] as String,
      upgrade: Upgrade.fromJson(json['upgrade'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BusinessToJson(_$_Business instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'upgrade': instance.upgrade.toJson(),
    };
