// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_spend_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Initial _$$InitialFromJson(Map<String, dynamic> json) => _$Initial(
      json['timeSpend'] == null
          ? null
          : TimeSpend.fromJson(json['timeSpend'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InitialToJson(_$Initial instance) => <String, dynamic>{
      'timeSpend': instance.timeSpend?.toJson(),
      'runtimeType': instance.$type,
    };

_$Loading _$$LoadingFromJson(Map<String, dynamic> json) => _$Loading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingToJson(_$Loading instance) => <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$Loaded _$$LoadedFromJson(Map<String, dynamic> json) => _$Loaded(
      TimeSpend.fromJson(json['timeSpend'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadedToJson(_$Loaded instance) => <String, dynamic>{
      'timeSpend': instance.timeSpend.toJson(),
      'runtimeType': instance.$type,
    };