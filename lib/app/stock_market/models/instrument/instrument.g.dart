// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instrument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Instrument _$$_InstrumentFromJson(Map<String, dynamic> json) =>
    _$_Instrument(
      id: json['id'] as String,
      name: json['name'] as String,
      eTypeInstrument:
          $enumDecode(_$ETypeInstrumentEnumMap, json['eTypeInstrument']),
      candles: (json['candles'] as List<dynamic>)
          .map((e) => Candle.fromJson(e as Map<String, dynamic>))
          .toList(),
      eTypeTrend: $enumDecode(_$ETypeTrendEnumMap, json['eTypeTrend']),
      datTrendEnd: DateTime.parse(json['datTrendEnd'] as String),
      potentialIncrease: json['potentialIncrease'] as int,
      potentialDecrease: json['potentialDecrease'] as int,
      potentialStable: json['potentialStable'] as int,
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
      valorization: (json['valorization'] as num).toDouble(),
    );

Map<String, dynamic> _$$_InstrumentToJson(_$_Instrument instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'eTypeInstrument': _$ETypeInstrumentEnumMap[instance.eTypeInstrument],
      'candles': instance.candles.map((e) => e.toJson()).toList(),
      'eTypeTrend': _$ETypeTrendEnumMap[instance.eTypeTrend],
      'datTrendEnd': instance.datTrendEnd.toIso8601String(),
      'potentialIncrease': instance.potentialIncrease,
      'potentialDecrease': instance.potentialDecrease,
      'potentialStable': instance.potentialStable,
      'min': instance.min,
      'max': instance.max,
      'valorization': instance.valorization,
    };

const _$ETypeInstrumentEnumMap = {
  ETypeInstrument.crypto: 'crypto',
  ETypeInstrument.resource: 'resource',
  ETypeInstrument.company: 'company',
};

const _$ETypeTrendEnumMap = {
  ETypeTrend.stable: 'stable',
  ETypeTrend.decrease: 'decrease',
  ETypeTrend.increase: 'increase',
};
