import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:richeable/app/settings/models/audio_model.dart';

@lazySingleton
class AudioCubit extends HydratedCubit<Audio> {
  final AudioPlayer _soundPlayer = AudioPlayer();
  final AudioPlayer _musicPlayer = AudioPlayer();
  final double _decreaseVolume = 0.1;
  AudioCubit() : super(const Audio());

  changeSoundsVolume(double value) {
    _soundPlayer.setVolume(value);
    emit(state.copyWith(sounds: value));
  }

  changeMusicVolume(double value) {
    _musicPlayer.setVolume(value * _decreaseVolume);
    emit(state.copyWith(music: value));
  }

  AudioPlayer getSounds(String sound) {
    return _soundPlayer
      ..setAsset(sound)
      ..setVolume(state.sounds);
  }

  AudioPlayer stopSounds() {
    return _soundPlayer..stop();
  }

  AudioPlayer getMusic(String music) {
    return _musicPlayer
      ..setAsset(music)
      ..setLoopMode(LoopMode.one)
      ..setVolume(state.music * _decreaseVolume);
  }

  pauseMusic() {
    _musicPlayer.pause();
  }

  resumeMusic() {
    _musicPlayer.play();
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
