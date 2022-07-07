// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Candle _$$_CandleFromJson(Map<String, dynamic> json) => _$_Candle(
      dateTime: DateTime.parse(json['dateTime'] as String),
      open: (json['open'] as num).toDouble(),
      high: (json['high'] as num).toDouble(),
      low: (json['low'] as num).toDouble(),
      close: (json['close'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CandleToJson(_$_Candle instance) => <String, dynamic>{
      'dateTime': instance.dateTime.toIso8601String(),
      'open': instance.open,
      'high': instance.high,
      'low': instance.low,
      'close': instance.close,
    };
