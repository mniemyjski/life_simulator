// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Initial _$$InitialFromJson(Map<String, dynamic> json) => _$Initial(
      transport: json['transport'] == null
          ? null
          : Transport.fromJson(json['transport'] as Map<String, dynamic>),
      transports: (json['transports'] as List<dynamic>?)
          ?.map((e) => Transport.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InitialToJson(_$Initial instance) => <String, dynamic>{
      'transport': instance.transport?.toJson(),
      'transports': instance.transports?.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$Loading _$$LoadingFromJson(Map<String, dynamic> json) => _$Loading(
      (json['transports'] as List<dynamic>)
          .map((e) => Transport.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingToJson(_$Loading instance) => <String, dynamic>{
      'transports': instance.transports.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$Loaded _$$LoadedFromJson(Map<String, dynamic> json) => _$Loaded(
      transport: json['transport'] == null
          ? null
          : Transport.fromJson(json['transport'] as Map<String, dynamic>),
      transports: (json['transports'] as List<dynamic>)
          .map((e) => Transport.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadedToJson(_$Loaded instance) => <String, dynamic>{
      'transport': instance.transport?.toJson(),
      'transports': instance.transports.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };