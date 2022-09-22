import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:richeable/app/settings/models/audio_model.dart';

@lazySingleton
class AudioCubit extends HydratedCubit<Audio> {
  AudioCubit() : super(const Audio());

  changeSoundsVolume(double value) {
    emit(state.copyWith(sounds: value));
  }

  changeMusicVolume(double value) {
    emit(state.copyWith(music: value));
  }

  AudioPlayer getSounds(String sound) {
    final player = AudioPlayer();

    return player
      ..setAsset(sound)
      ..setVolume(state.sounds);
  }

  AudioPlayer getMusic(String music) {
    final player = AudioPlayer();

    return player
      ..setAsset(music)
      ..setVolume(state.music);
  }

  @override
  Audio? fromJson(Map<String, dynamic> json) {
    return Audio.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(Audio state) {
    return state.toJson();
  }
}
