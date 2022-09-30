// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'audio_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Audio _$AudioFromJson(Map<String, dynamic> json) {
  return _Audio.fromJson(json);
}

/// @nodoc
mixin _$Audio {
  double get sounds => throw _privateConstructorUsedError;
  double get music => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioCopyWith<Audio> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioCopyWith<$Res> {
  factory $AudioCopyWith(Audio value, $Res Function(Audio) then) =
      _$AudioCopyWithImpl<$Res>;
  $Res call({double sounds, double music});
}

/// @nodoc
class _$AudioCopyWithImpl<$Res> implements $AudioCopyWith<$Res> {
  _$AudioCopyWithImpl(this._value, this._then);

  final Audio _value;
  // ignore: unused_field
  final $Res Function(Audio) _then;

  @override
  $Res call({
    Object? sounds = freezed,
    Object? music = freezed,
  }) {
    return _then(_value.copyWith(
      sounds: sounds == freezed
          ? _value.sounds
          : sounds // ignore: cast_nullable_to_non_nullable
              as double,
      music: music == freezed
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_AudioCopyWith<$Res> implements $AudioCopyWith<$Res> {
  factory _$$_AudioCopyWith(_$_Audio value, $Res Function(_$_Audio) then) =
      __$$_AudioCopyWithImpl<$Res>;
  @override
  $Res call({double sounds, double music});
}

/// @nodoc
class __$$_AudioCopyWithImpl<$Res> extends _$AudioCopyWithImpl<$Res>
    implements _$$_AudioCopyWith<$Res> {
  __$$_AudioCopyWithImpl(_$_Audio _value, $Res Function(_$_Audio) _then)
      : super(_value, (v) => _then(v as _$_Audio));

  @override
  _$_Audio get _value => super._value as _$_Audio;

  @override
  $Res call({
    Object? sounds = freezed,
    Object? music = freezed,
  }) {
    return _then(_$_Audio(
      sounds: sounds == freezed
          ? _value.sounds
          : sounds // ignore: cast_nullable_to_non_nullable
              as double,
      music: music == freezed
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Audio implements _Audio {
  const _$_Audio({this.sounds = 1, this.music = 1});

  factory _$_Audio.fromJson(Map<String, dynamic> json) =>
      _$$_AudioFromJson(json);

  @override
  @JsonKey()
  final double sounds;
  @override
  @JsonKey()
  final double music;

  @override
  String toString() {
    return 'Audio(sounds: $sounds, music: $music)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Audio &&
            const DeepCollectionEquality().equals(other.sounds, sounds) &&
            const DeepCollectionEquality().equals(other.music, music));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sounds),
      const DeepCollectionEquality().hash(music));

  @JsonKey(ignore: true)
  @override
  _$$_AudioCopyWith<_$_Audio> get copyWith =>
      __$$_AudioCopyWithImpl<_$_Audio>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AudioToJson(
      this,
    );
  }
}

abstract class _Audio implements Audio {
  const factory _Audio({final double sounds, final double music}) = _$_Audio;

  factory _Audio.fromJson(Map<String, dynamic> json) = _$_Audio.fromJson;

  @override
  double get sounds;
  @override
  double get music;
  @override
  @JsonKey(ignore: true)
  _$$_AudioCopyWith<_$_Audio> get copyWith =>
      throw _privateConstructorUsedError;
}
