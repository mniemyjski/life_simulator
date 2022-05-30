// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Meal _$$_MealFromJson(Map<String, dynamic> json) => _$_Meal(
      id: json['id'] as String,
      name: json['name'] as String,
      cost: json['cost'] as int,
      bonusToSatisfaction: json['bonusToSatisfaction'] as int? ?? 0,
      bonusToTiredness: json['bonusToTiredness'] as int? ?? 0,
      bonusToHealth: json['bonusToHealth'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MealToJson(_$_Meal instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cost': instance.cost,
      'bonusToSatisfaction': instance.bonusToSatisfaction,
      'bonusToTiredness': instance.bonusToTiredness,
      'bonusToHealth': instance.bonusToHealth,
    };
