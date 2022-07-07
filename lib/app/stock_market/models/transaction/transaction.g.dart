// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      id: json['id'] as String,
      instrument:
          Instrument.fromJson(json['instrument'] as Map<String, dynamic>),
      count: (json['count'] as num).toDouble(),
      datCre: DateTime.parse(json['datCre'] as String),
      close: json['close'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'instrument': instance.instrument.toJson(),
      'count': instance.count,
      'datCre': instance.datCre.toIso8601String(),
      'close': instance.close,
    };
