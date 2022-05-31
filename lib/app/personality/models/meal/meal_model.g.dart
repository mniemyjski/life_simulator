// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Meal _$$_MealFromJson(Map<String, dynamic> json) => _$_Meal(
      id: json['id'] as String,
      name: json['name'] as String,
      cost: json['cost'] as int,
      bonusToRelax: json['bonusToRelax'] as int? ?? 0,
      bonusToSleep: json['bonusToSleep'] as int? ?? 0,
      bonusToLearn: json['bonusToLearn'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MealToJson(_$_Meal instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cost': instance.cost,
      'bonusToRelax': instance.bonusToRelax,
      'bonusToSleep': instance.bonusToSleep,
      'bonusToLearn': instance.bonusToLearn,
    };
