// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transport _$$_TransportFromJson(Map<String, dynamic> json) => _$_Transport(
      id: json['id'] as String,
      name: json['name'] as String,
      brand: json['brand'] as String,
      eTypeTransport:
          $enumDecode(_$ETypeTransportEnumMap, json['eTypeTransport']),
      cost: json['cost'] as int,
      monthlyCost: json['monthlyCost'] as int,
      dateBuy: json['dateBuy'] == null
          ? null
          : DateGame.fromJson(json['dateBuy'] as Map<String, dynamic>),
      bonusToSatisfaction: json['bonusToSatisfaction'] as int? ?? 0,
      bonusToTiredness: json['bonusToTiredness'] as int? ?? 0,
      bonusToHealth: json['bonusToHealth'] as int? ?? 0,
    );

Map<String, dynamic> _$$_TransportToJson(_$_Transport instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'brand': instance.brand,
      'eTypeTransport': _$ETypeTransportEnumMap[instance.eTypeTransport],
      'cost': instance.cost,
      'monthlyCost': instance.monthlyCost,
      'dateBuy': instance.dateBuy?.toJson(),
      'bonusToSatisfaction': instance.bonusToSatisfaction,
      'bonusToTiredness': instance.bonusToTiredness,
      'bonusToHealth': instance.bonusToHealth,
    };

const _$ETypeTransportEnumMap = {
  ETypeTransport.publicTransport: 'publicTransport',
  ETypeTransport.car: 'car',
};
