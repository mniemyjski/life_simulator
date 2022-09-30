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
  double get maxHealth => throw _privateConstructorUsedError;
  double get maxSatisfaction => throw _privateConstructorUsedError;
  double get maxTiredness => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsCopyWith<Stats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsCopyWith<$Res> {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) then) =
      _$StatsCopyWithImpl<$Res>;
  $Res call(
      {double health,
      double satisfaction,
      double tiredness,
      double maxHealth,
      double maxSatisfaction,
      double maxTiredness});
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
    Object? maxHealth = freezed,
    Object? maxSatisfaction = freezed,
    Object? maxTiredness = freezed,
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
      maxHealth: maxHealth == freezed
          ? _value.maxHealth
          : maxHealth // ignore: cast_nullable_to_non_nullable
              as double,
      maxSatisfaction: maxSatisfaction == freezed
          ? _value.maxSatisfaction
          : maxSatisfaction // ignore: cast_nullable_to_non_nullable
              as double,
      maxTiredness: maxTiredness == freezed
          ? _value.maxTiredness
          : maxTiredness // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_StatsCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$$_StatsCopyWith(_$_Stats value, $Res Function(_$_Stats) then) =
      __$$_StatsCopyWithImpl<$Res>;
  @override
  $Res call(
      {double health,
      double satisfaction,
      double tiredness,
      double maxHealth,
      double maxSatisfaction,
      double maxTiredness});
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
    Object? maxHealth = freezed,
    Object? maxSatisfaction = freezed,
    Object? maxTiredness = freezed,
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
      maxHealth: maxHealth == freezed
          ? _value.maxHealth
          : maxHealth // ignore: cast_nullable_to_non_nullable
              as double,
      maxSatisfaction: maxSatisfaction == freezed
          ? _value.maxSatisfaction
          : maxSatisfaction // ignore: cast_nullable_to_non_nullable
              as double,
      maxTiredness: maxTiredness == freezed
          ? _value.maxTiredness
          : maxTiredness // ignore: cast_nullable_to_non_nullable
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
      required this.tiredness,
      required this.maxHealth,
      required this.maxSatisfaction,
      required this.maxTiredness});

  factory _$_Stats.fromJson(Map<String, dynamic> json) =>
      _$$_StatsFromJson(json);

  @override
  final double health;
  @override
  final double satisfaction;
  @override
  final double tiredness;
  @override
  final double maxHealth;
  @override
  final double maxSatisfaction;
  @override
  final double maxTiredness;

  @override
  String toString() {
    return 'Stats(health: $health, satisfaction: $satisfaction, tiredness: $tiredness, maxHealth: $maxHealth, maxSatisfaction: $maxSatisfaction, maxTiredness: $maxTiredness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stats &&
            const DeepCollectionEquality().equals(other.health, health) &&
            const DeepCollectionEquality()
                .equals(other.satisfaction, satisfaction) &&
            const DeepCollectionEquality().equals(other.tiredness, tiredness) &&
            const DeepCollectionEquality().equals(other.maxHealth, maxHealth) &&
            const DeepCollectionEquality()
                .equals(other.maxSatisfaction, maxSatisfaction) &&
            const DeepCollectionEquality()
                .equals(other.maxTiredness, maxTiredness));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(health),
      const DeepCollectionEquality().hash(satisfaction),
      const DeepCollectionEquality().hash(tiredness),
      const DeepCollectionEquality().hash(maxHealth),
      const DeepCollectionEquality().hash(maxSatisfaction),
      const DeepCollectionEquality().hash(maxTiredness));

  @JsonKey(ignore: true)
  @override
  _$$_StatsCopyWith<_$_Stats> get copyWith =>
      __$$_StatsCopyWithImpl<_$_Stats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatsToJson(
      this,
    );
  }
}

abstract class _Stats implements Stats {
  const factory _Stats(
      {required final double health,
      required final double satisfaction,
      required final double tiredness,
      required final double maxHealth,
      required final double maxSatisfaction,
      required final double maxTiredness}) = _$_Stats;

  factory _Stats.fromJson(Map<String, dynamic> json) = _$_Stats.fromJson;

  @override
  double get health;
  @override
  double get satisfaction;
  @override
  double get tiredness;
  @override
  double get maxHealth;
  @override
  double get maxSatisfaction;
  @override
  double get maxTiredness;
  @override
  @JsonKey(ignore: true)
  _$$_StatsCopyWith<_$_Stats> get copyWith =>
      throw _privateConstructorUsedError;
}
