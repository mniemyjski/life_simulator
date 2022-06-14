// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Medicine _$$_MedicineFromJson(Map<String, dynamic> json) => _$_Medicine(
      id: json['id'] as String,
      name: json['name'] as String,
      cost: (json['cost'] as num).toDouble(),
      satisfaction: (json['satisfaction'] as num).toDouble(),
      health: (json['health'] as num).toDouble(),
      tiredness: (json['tiredness'] as num).toDouble(),
      duration: json['duration'] as int,
      leftDuration: json['leftDuration'] as int,
      active: json['active'] ?? false,
    );

Map<String, dynamic> _$$_MedicineToJson(_$_Medicine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cost': instance.cost,
      'satisfaction': instance.satisfaction,
      'health': instance.health,
      'tiredness': instance.tiredness,
      'duration': instance.duration,
      'leftDuration': instance.leftDuration,
      'active': instance.active,
    };
