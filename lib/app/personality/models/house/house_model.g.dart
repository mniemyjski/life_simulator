// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_House _$$_HouseFromJson(Map<String, dynamic> json) => _$_House(
      id: json['id'] as String,
      name: json['name'] as String,
      eTypeHouse: $enumDecode(_$ETypeHouseEnumMap, json['eTypeHouse']),
      cost: (json['cost'] as num).toDouble(),
      monthlyCost: (json['monthlyCost'] as num).toDouble(),
      dateBuy: json['dateBuy'] == null
          ? null
          : DateTime.parse(json['dateBuy'] as String),
      bonusToRelax: json['bonusToRelax'] as int? ?? 0,
      bonusToSleep: json['bonusToSleep'] as int? ?? 0,
      bonusToLearn: json['bonusToLearn'] as int? ?? 0,
    );

Map<String, dynamic> _$$_HouseToJson(_$_House instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'eTypeHouse': _$ETypeHouseEnumMap[instance.eTypeHouse]!,
      'cost': instance.cost,
      'monthlyCost': instance.monthlyCost,
      'dateBuy': instance.dateBuy?.toIso8601String(),
      'bonusToRelax': instance.bonusToRelax,
      'bonusToSleep': instance.bonusToSleep,
      'bonusToLearn': instance.bonusToLearn,
    };

const _$ETypeHouseEnumMap = {
  ETypeHouse.rent: 'rent',
  ETypeHouse.buy: 'buy',
};
