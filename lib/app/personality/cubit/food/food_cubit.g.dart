// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Initial _$$InitialFromJson(Map<String, dynamic> json) => _$Initial(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InitialToJson(_$Initial instance) => <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$Loading _$$LoadingFromJson(Map<String, dynamic> json) => _$Loading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingToJson(_$Loading instance) => <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$Loaded _$$LoadedFromJson(Map<String, dynamic> json) => _$Loaded(
      food: Food.fromJson(json['food'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadedToJson(_$Loaded instance) => <String, dynamic>{
      'food': instance.food.toJson(),
      'runtimeType': instance.$type,
    };
