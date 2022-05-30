// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stats_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatsState _$StatsStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return Initial.fromJson(json);
    case 'loading':
      return Loading.fromJson(json);
    case 'loaded':
      return Loaded.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'StatsState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$StatsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stats? stats) initial,
    required TResult Function() loading,
    required TResult Function(Stats stats) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stats? stats)? initial,
    TResult Function()? loading,
    TResult Function(Stats stats)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stats? stats)? initial,
    TResult Function()? loading,
    TResult Function(Stats stats)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsStateCopyWith<$Res> {
  factory $StatsStateCopyWith(
          StatsState value, $Res Function(StatsState) then) =
      _$StatsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StatsStateCopyWithImpl<$Res> implements $StatsStateCopyWith<$Res> {
  _$StatsStateCopyWithImpl(this._value, this._then);

  final StatsState _value;
  // ignore: unused_field
  final $Res Function(StatsState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  $Res call({Stats? stats});

  $StatsCopyWith<$Res>? get stats;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$StatsStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;

  @override
  $Res call({
    Object? stats = freezed,
  }) {
    return _then(_$Initial(
      stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Stats?,
    ));
  }

  @override
  $StatsCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $StatsCopyWith<$Res>(_value.stats!, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Initial implements Initial {
  const _$Initial(this.stats, {final String? $type})
      : $type = $type ?? 'initial';

  factory _$Initial.fromJson(Map<String, dynamic> json) =>
      _$$InitialFromJson(json);

  @override
  final Stats? stats;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StatsState.initial(stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            const DeepCollectionEquality().equals(other.stats, stats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stats));

  @JsonKey(ignore: true)
  @override
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stats? stats) initial,
    required TResult Function() loading,
    required TResult Function(Stats stats) loaded,
  }) {
    return initial(stats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stats? stats)? initial,
    TResult Function()? loading,
    TResult Function(Stats stats)? loaded,
  }) {
    return initial?.call(stats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stats? stats)? initial,
    TResult Function()? loading,
    TResult Function(Stats stats)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(stats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialToJson(this);
  }
}

abstract class Initial implements StatsState {
  const factory Initial(final Stats? stats) = _$Initial;

  factory Initial.fromJson(Map<String, dynamic> json) = _$Initial.fromJson;

  Stats? get stats => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$StatsStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc
@JsonSerializable()
class _$Loading implements Loading {
  const _$Loading({final String? $type}) : $type = $type ?? 'loading';

  factory _$Loading.fromJson(Map<String, dynamic> json) =>
      _$$LoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StatsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stats? stats) initial,
    required TResult Function() loading,
    required TResult Function(Stats stats) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stats? stats)? initial,
    TResult Function()? loading,
    TResult Function(Stats stats)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stats? stats)? initial,
    TResult Function()? loading,
    TResult Function(Stats stats)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingToJson(this);
  }
}

abstract class Loading implements StatsState {
  const factory Loading() = _$Loading;

  factory Loading.fromJson(Map<String, dynamic> json) = _$Loading.fromJson;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  $Res call({Stats stats});

  $StatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res> extends _$StatsStateCopyWithImpl<$Res>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, (v) => _then(v as _$Loaded));

  @override
  _$Loaded get _value => super._value as _$Loaded;

  @override
  $Res call({
    Object? stats = freezed,
  }) {
    return _then(_$Loaded(
      stats == freezed
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Stats,
    ));
  }

  @override
  $StatsCopyWith<$Res> get stats {
    return $StatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Loaded implements Loaded {
  const _$Loaded(this.stats, {final String? $type}) : $type = $type ?? 'loaded';

  factory _$Loaded.fromJson(Map<String, dynamic> json) =>
      _$$LoadedFromJson(json);

  @override
  final Stats stats;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'StatsState.loaded(stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            const DeepCollectionEquality().equals(other.stats, stats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stats));

  @JsonKey(ignore: true)
  @override
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stats? stats) initial,
    required TResult Function() loading,
    required TResult Function(Stats stats) loaded,
  }) {
    return loaded(stats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Stats? stats)? initial,
    TResult Function()? loading,
    TResult Function(Stats stats)? loaded,
  }) {
    return loaded?.call(stats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stats? stats)? initial,
    TResult Function()? loading,
    TResult Function(Stats stats)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(stats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadedToJson(this);
  }
}

abstract class Loaded implements StatsState {
  const factory Loaded(final Stats stats) = _$Loaded;

  factory Loaded.fromJson(Map<String, dynamic> json) = _$Loaded.fromJson;

  Stats get stats => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
