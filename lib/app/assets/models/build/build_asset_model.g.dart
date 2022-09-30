// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_asset_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BuildAsset _$$_BuildAssetFromJson(Map<String, dynamic> json) =>
    _$_BuildAsset(
      address: json['address'] as String,
      eTypeAsset: $enumDecode(_$ETypeAssetEnumMap, json['eTypeAsset']),
      datCre: json['datCre'] == null
          ? null
          : DateTime.parse(json['datCre'] as String),
      datEnd: json['datEnd'] == null
          ? null
          : DateTime.parse(json['datEnd'] as String),
      tenantsMax: json['tenantsMax'] as int,
      cost: (json['cost'] as num).toDouble(),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_BuildAssetToJson(_$_BuildAsset instance) =>
    <String, dynamic>{
      'address': instance.address,
      'eTypeAsset': _$ETypeAssetEnumMap[instance.eTypeAsset]!,
      'datCre': instance.datCre?.toIso8601String(),
      'datEnd': instance.datEnd?.toIso8601String(),
      'tenantsMax': instance.tenantsMax,
      'cost': instance.cost,
      'value': instance.value,
    };

const _$ETypeAssetEnumMap = {
  ETypeAsset.apartment: 'apartment',
  ETypeAsset.house: 'house',
  ETypeAsset.tenement: 'tenement',
  ETypeAsset.estate: 'estate',
};
