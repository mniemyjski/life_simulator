import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_model.freezed.dart';
part 'audio_model.g.dart';

@freezed
class Audio with _$Audio {
  const factory Audio({
    @Default(1) double sounds,
    @Default(1) double music,
  }) = _Audio;

  factory Audio.fromJson(Map<String, dynamic> json) => _$AudioFromJson(json);
}
