// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_cubit.dart';

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
      (json['incomes'] as List<dynamic>)
          .map((e) => Income.fromJson(e as Map<String, dynamic>))
          .toList(),
      DateTime.parse(json['currentDate'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadedToJson(_$Loaded instance) => <String, dynamic>{
      'incomes': instance.incomes.map((e) => e.toJson()).toList(),
      'currentDate': instance.currentDate.toIso8601String(),
      'runtimeType': instance.$type,
    };
