// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Database _$$_DatabaseFromJson(Map<String, dynamic> json) => _$_Database(
      jobsDB: (json['jobsDB'] as List<dynamic>)
          .map((e) => Job.fromJson(e as Map<String, dynamic>))
          .toList(),
      learningsDB: (json['learningsDB'] as List<dynamic>)
          .map((e) => Learning.fromJson(e as Map<String, dynamic>))
          .toList(),
      foodsDB: (json['foodsDB'] as List<dynamic>)
          .map((e) => Food.fromJson(e as Map<String, dynamic>))
          .toList(),
      housesDB: (json['housesDB'] as List<dynamic>)
          .map((e) => House.fromJson(e as Map<String, dynamic>))
          .toList(),
      transportsDB: (json['transportsDB'] as List<dynamic>)
          .map((e) => Transport.fromJson(e as Map<String, dynamic>))
          .toList(),
      eventsDB: (json['eventsDB'] as List<dynamic>)
          .map((e) => GameEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      medicinesDB: (json['medicinesDB'] as List<dynamic>)
          .map((e) => Medicine.fromJson(e as Map<String, dynamic>))
          .toList(),
      assetsDB: (json['assetsDB'] as List<dynamic>)
          .map((e) => Asset.fromJson(e as Map<String, dynamic>))
          .toList(),
      tenantsDB: (json['tenantsDB'] as List<dynamic>)
          .map((e) => Tenant.fromJson(e as Map<String, dynamic>))
          .toList(),
      instrumentDB: (json['instrumentDB'] as List<dynamic>)
          .map((e) => Instrument.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DatabaseToJson(_$_Database instance) =>
    <String, dynamic>{
      'jobsDB': instance.jobsDB.map((e) => e.toJson()).toList(),
      'learningsDB': instance.learningsDB.map((e) => e.toJson()).toList(),
      'foodsDB': instance.foodsDB.map((e) => e.toJson()).toList(),
      'housesDB': instance.housesDB.map((e) => e.toJson()).toList(),
      'transportsDB': instance.transportsDB.map((e) => e.toJson()).toList(),
      'eventsDB': instance.eventsDB.map((e) => e.toJson()).toList(),
      'medicinesDB': instance.medicinesDB.map((e) => e.toJson()).toList(),
      'assetsDB': instance.assetsDB.map((e) => e.toJson()).toList(),
      'tenantsDB': instance.tenantsDB.map((e) => e.toJson()).toList(),
      'instrumentDB': instance.instrumentDB.map((e) => e.toJson()).toList(),
    };
