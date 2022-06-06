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
      cost: (json['cost'] as num).toDouble(),
      monthlyCost: (json['monthlyCost'] as num).toDouble(),
      dateBuy: json['dateBuy'] == null
          ? null
          : DateGame.fromJson(json['dateBuy'] as Map<String, dynamic>),
      bonusToRelax: json['bonusToRelax'] as int? ?? 0,
      bonusToSleep: json['bonusToSleep'] as int? ?? 0,
      bonusToLearn: json['bonusToLearn'] as int? ?? 0,
      commuting: json['commuting'] as int? ?? 0,
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
      'bonusToRelax': instance.bonusToRelax,
      'bonusToSleep': instance.bonusToSleep,
      'bonusToLearn': instance.bonusToLearn,
      'commuting': instance.commuting,
    };

const _$ETypeTransportEnumMap = {
  ETypeTransport.publicTransport: 'publicTransport',
  ETypeTransport.car: 'car',
};
