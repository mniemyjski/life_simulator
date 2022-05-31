// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_House _$$_HouseFromJson(Map<String, dynamic> json) => _$_House(
      id: json['id'] as String,
      name: json['name'] as String,
      eTypeHouse: $enumDecode(_$ETypeHouseEnumMap, json['eTypeHouse']),
      cost: json['cost'] as int,
      monthlyCost: json['monthlyCost'] as int,
      dateBuy: json['dateBuy'] == null
          ? null
          : DateGame.fromJson(json['dateBuy'] as Map<String, dynamic>),
      bonusToRelax: json['bonusToRelax'] as int? ?? 0,
      bonusToSleep: json['bonusToSleep'] as int? ?? 0,
      bonusToLearn: json['bonusToLearn'] as int? ?? 0,
    );

Map<String, dynamic> _$$_HouseToJson(_$_House instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'eTypeHouse': _$ETypeHouseEnumMap[instance.eTypeHouse],
      'cost': instance.cost,
      'monthlyCost': instance.monthlyCost,
      'dateBuy': instance.dateBuy?.toJson(),
      'bonusToRelax': instance.bonusToRelax,
      'bonusToSleep': instance.bonusToSleep,
      'bonusToLearn': instance.bonusToLearn,
    };

const _$ETypeHouseEnumMap = {
  ETypeHouse.rent: 'rent',
  ETypeHouse.buy: 'buy',
};
