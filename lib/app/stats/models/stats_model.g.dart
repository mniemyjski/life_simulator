// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Stats _$$_StatsFromJson(Map<String, dynamic> json) => _$_Stats(
      health: (json['health'] as num).toDouble(),
      satisfaction: (json['satisfaction'] as num).toDouble(),
      tiredness: (json['tiredness'] as num).toDouble(),
    );

Map<String, dynamic> _$$_StatsToJson(_$_Stats instance) => <String, dynamic>{
      'health': instance.health,
      'satisfaction': instance.satisfaction,
      'tiredness': instance.tiredness,
    };
