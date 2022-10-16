// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'research_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Research _$$_ResearchFromJson(Map<String, dynamic> json) => _$_Research(
      uid: json['uid'] as String,
      businessId: json['businessId'] as int,
      dateEnd: DateTime.parse(json['dateEnd'] as String),
      name: json['name'] as String,
      work: (json['work'] as num?)?.toDouble() ?? 0,
      cost: (json['cost'] as num).toDouble(),
      eTypeProduct: $enumDecode(_$ETypeProductEnumMap, json['eTypeProduct']),
      eTypeQuality: $enumDecode(_$ETypeQualityEnumMap, json['eTypeQuality']),
    );

Map<String, dynamic> _$$_ResearchToJson(_$_Research instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'businessId': instance.businessId,
      'dateEnd': instance.dateEnd.toIso8601String(),
      'name': instance.name,
      'work': instance.work,
      'cost': instance.cost,
      'eTypeProduct': _$ETypeProductEnumMap[instance.eTypeProduct]!,
      'eTypeQuality': _$ETypeQualityEnumMap[instance.eTypeQuality]!,
    };

const _$ETypeProductEnumMap = {
  ETypeProduct.food: 'food',
  ETypeProduct.cloth: 'cloth',
  ETypeProduct.furniture: 'furniture',
  ETypeProduct.jewelery: 'jewelery',
};

const _$ETypeQualityEnumMap = {
  ETypeQuality.low: 'low',
  ETypeQuality.mid: 'mid',
  ETypeQuality.high: 'high',
};
