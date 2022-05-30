// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return _Stats.fromJson(json);
}

/// @nodoc
mixin _$Stats {
  double get health => throw _privateConstructorUsedError;
  double get satisfaction => throw _privateConstructorUsedError;
  double get tiredness => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsCopyWith<Stats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsCopyWith<$Res> {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) then) =
      _$StatsCopyWithImpl<$Res>;
  $Res call({double health, double satisfaction, double tiredness});
}

/// @nodoc
class _$StatsCopyWithImpl<$Res> implements $StatsCopyWith<$Res> {
  _$StatsCopyWithImpl(this._value, this._then);

  final Stats _value;
  // ignore: unused_field
  final $Res Function(Stats) _then;

  @override
  $Res call({
    Object? health = freezed,
    Object? satisfaction = freezed,
    Object? tiredness = freezed,
  }) {
    return _then(_value.copyWith(
      health: health == freezed
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as double,
      satisfaction: satisfaction == freezed
          ? _value.satisfaction
          : satisfaction // ignore: cast_nullable_to_non_nullable
              as double,
      tiredness: tiredness == freezed
          ? _value.tiredness
          : tiredness // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_StatsCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$$_StatsCopyWith(_$_Stats value, $Res Function(_$_Stats) then) =
      __$$_StatsCopyWithImpl<$Res>;
  @override
  $Res call({double health, double satisfaction, double tiredness});
}

/// @nodoc
class __$$_StatsCopyWithImpl<$Res> extends _$StatsCopyWithImpl<$Res>
    implements _$$_StatsCopyWith<$Res> {
  __$$_StatsCopyWithImpl(_$_Stats _value, $Res Function(_$_Stats) _then)
      : super(_value, (v) => _then(v as _$_Stats));

  @override
  _$_Stats get _value => super._value as _$_Stats;

  @override
  $Res call({
    Object? health = freezed,
    Object? satisfaction = freezed,
    Object? tiredness = freezed,
  }) {
    return _then(_$_Stats(
      health: health == freezed
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as double,
      satisfaction: satisfaction == freezed
          ? _value.satisfaction
          : satisfaction // ignore: cast_nullable_to_non_nullable
              as double,
      tiredness: tiredness == freezed
          ? _value.tiredness
          : tiredness // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Stats implements _Stats {
  const _$_Stats(
      {required this.health,
      required this.satisfaction,
      required this.tiredness});

  factory _$_Stats.fromJson(Map<String, dynamic> json) =>
      _$$_StatsFromJson(json);

  @override
  final double health;
  @override
  final double satisfaction;
  @override
  final double tiredness;

  @override
  String toString() {
    return 'Stats(health: $health, satisfaction: $satisfaction, tiredness: $tiredness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stats &&
            const DeepCollectionEquality().equals(other.health, health) &&
            const DeepCollectionEquality()
                .equals(other.satisfaction, satisfaction) &&
            const DeepCollectionEquality().equals(other.tiredness, tiredness));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(health),
      const DeepCollectionEquality().hash(satisfaction),
      const DeepCollectionEquality().hash(tiredness));

  @JsonKey(ignore: true)
  @override
  _$$_StatsCopyWith<_$_Stats> get copyWith =>
      __$$_StatsCopyWithImpl<_$_Stats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatsToJson(this);
  }
}

abstract class _Stats implements Stats {
  const factory _Stats(
      {required final double health,
      required final double satisfaction,
      required final double tiredness}) = _$_Stats;

  factory _Stats.fromJson(Map<String, dynamic> json) = _$_Stats.fromJson;

  @override
  double get health => throw _privateConstructorUsedError;
  @override
  double get satisfaction => throw _privateConstructorUsedError;
  @override
  double get tiredness => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StatsCopyWith<_$_Stats> get copyWith =>
      throw _privateConstructorUsedError;
}
