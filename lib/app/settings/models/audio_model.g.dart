// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Audio _$$_AudioFromJson(Map<String, dynamic> json) => _$_Audio(
      sounds: (json['sounds'] as num?)?.toDouble() ?? 1,
      music: (json['music'] as num?)?.toDouble() ?? 1,
    );

Map<String, dynamic> _$$_AudioToJson(_$_Audio instance) => <String, dynamic>{
      'sounds': instance.sounds,
      'music': instance.music,
    };
