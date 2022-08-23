// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tenants _$$_TenantsFromJson(Map<String, dynamic> json) => _$_Tenants(
      id: json['id'] as String?,
      idAsset: json['idAsset'] as String?,
      minLevel: (json['minLevel'] as num).toDouble(),
      rent: (json['rent'] as num).toDouble(),
      rating: json['rating'] as int,
      hasAnimal: json['hasAnimal'] as bool,
      chance: json['chance'] as int,
      satisfaction: json['satisfaction'] as int? ?? 100,
    );

Map<String, dynamic> _$$_TenantsToJson(_$_Tenants instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idAsset': instance.idAsset,
      'minLevel': instance.minLevel,
      'rent': instance.rent,
      'rating': instance.rating,
      'hasAnimal': instance.hasAnimal,
      'chance': instance.chance,
      'satisfaction': instance.satisfaction,
    };
