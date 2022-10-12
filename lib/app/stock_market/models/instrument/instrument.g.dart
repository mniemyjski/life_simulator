// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instrument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Instrument _$$_InstrumentFromJson(Map<String, dynamic> json) =>
    _$_Instrument(
      id: json['id'] as String,
      name: $enumDecode(_$ENameInstrumentEnumMap, json['name']),
      eTypeInstrument:
          $enumDecode(_$ETypeInstrumentEnumMap, json['eTypeInstrument']),
      eTypeTrend: $enumDecode(_$ETypeTrendEnumMap, json['eTypeTrend']),
      datTrendEnd: DateTime.parse(json['datTrendEnd'] as String),
      potentialIncrease: json['potentialIncrease'] as int,
      potentialDecrease: json['potentialDecrease'] as int,
      potentialStable: json['potentialStable'] as int,
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
      valorization: (json['valorization'] as num).toDouble(),
      lastValorization: DateTime.parse(json['lastValorization'] as String),
      lastCandle: Candle.fromJson(json['lastCandle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InstrumentToJson(_$_Instrument instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': _$ENameInstrumentEnumMap[instance.name]!,
      'eTypeInstrument': _$ETypeInstrumentEnumMap[instance.eTypeInstrument]!,
      'eTypeTrend': _$ETypeTrendEnumMap[instance.eTypeTrend]!,
      'datTrendEnd': instance.datTrendEnd.toIso8601String(),
      'potentialIncrease': instance.potentialIncrease,
      'potentialDecrease': instance.potentialDecrease,
      'potentialStable': instance.potentialStable,
      'min': instance.min,
      'max': instance.max,
      'valorization': instance.valorization,
      'lastValorization': instance.lastValorization.toIso8601String(),
      'lastCandle': instance.lastCandle.toJson(),
    };

const _$ENameInstrumentEnumMap = {
  ENameInstrument.btc: 'btc',
  ENameInstrument.eth: 'eth',
  ENameInstrument.bnb: 'bnb',
  ENameInstrument.hero: 'hero',
  ENameInstrument.dome: 'dome',
  ENameInstrument.oil: 'oil',
  ENameInstrument.gold: 'gold',
  ENameInstrument.silver: 'silver',
  ENameInstrument.tesla: 'tesla',
  ENameInstrument.apple: 'apple',
};

const _$ETypeInstrumentEnumMap = {
  ETypeInstrument.crypto: 'crypto',
  ETypeInstrument.resources: 'resources',
  ETypeInstrument.company: 'company',
};

const _$ETypeTrendEnumMap = {
  ETypeTrend.stable: 'stable',
  ETypeTrend.decrease: 'decrease',
  ETypeTrend.increase: 'increase',
};
