// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Asset _$$_AssetFromJson(Map<String, dynamic> json) => _$_Asset(
      id: json['id'] as String,
      address: json['address'] as String,
      eTypeAsset: $enumDecode(_$ETypeAssetEnumMap, json['eTypeAsset']),
      tenantsMax: json['tenantsMax'] as int,
      baseValue: (json['baseValue'] as num).toDouble(),
      value: (json['value'] as num).toDouble(),
      level: json['level'] as int,
      renovation: (json['renovation'] as num).toDouble(),
      minRent: (json['minRent'] as num?)?.toDouble() ?? 800,
      friendlyAnimal: json['friendlyAnimal'] as bool? ?? true,
      minRating: json['minRating'] as int? ?? 1,
    );

Map<String, dynamic> _$$_AssetToJson(_$_Asset instance) => <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'eTypeAsset': _$ETypeAssetEnumMap[instance.eTypeAsset],
      'tenantsMax': instance.tenantsMax,
      'baseValue': instance.baseValue,
      'value': instance.value,
      'level': instance.level,
      'renovation': instance.renovation,
      'minRent': instance.minRent,
      'friendlyAnimal': instance.friendlyAnimal,
      'minRating': instance.minRating,
    };

const _$ETypeAssetEnumMap = {
  ETypeAsset.apartment: 'apartment',
  ETypeAsset.house: 'house',
  ETypeAsset.tenement: 'tenement',
  ETypeAsset.estate: 'estate',
};
