// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time_bonus_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeBonus _$TimeBonusFromJson(Map<String, dynamic> json) {
  return _TimeBonus.fromJson(json);
}

/// @nodoc
mixin _$TimeBonus {
  ETypeBonus get eTypeBonus => throw _privateConstructorUsedError;
  ETypeBonusSource get eTypeBonusSource => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeBonusCopyWith<TimeBonus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeBonusCopyWith<$Res> {
  factory $TimeBonusCopyWith(TimeBonus value, $Res Function(TimeBonus) then) =
      _$TimeBonusCopyWithImpl<$Res>;
  $Res call(
      {ETypeBonus eTypeBonus, ETypeBonusSource eTypeBonusSource, int value});
}

/// @nodoc
class _$TimeBonusCopyWithImpl<$Res> implements $TimeBonusCopyWith<$Res> {
  _$TimeBonusCopyWithImpl(this._value, this._then);

  final TimeBonus _value;
  // ignore: unused_field
  final $Res Function(TimeBonus) _then;

  @override
  $Res call({
    Object? eTypeBonus = freezed,
    Object? eTypeBonusSource = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      eTypeBonus: eTypeBonus == freezed
          ? _value.eTypeBonus
          : eTypeBonus // ignore: cast_nullable_to_non_nullable
              as ETypeBonus,
      eTypeBonusSource: eTypeBonusSource == freezed
          ? _value.eTypeBonusSource
          : eTypeBonusSource // ignore: cast_nullable_to_non_nullable
              as ETypeBonusSource,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TimeBonusCopyWith<$Res> implements $TimeBonusCopyWith<$Res> {
  factory _$$_TimeBonusCopyWith(
          _$_TimeBonus value, $Res Function(_$_TimeBonus) then) =
      __$$_TimeBonusCopyWithImpl<$Res>;
  @override
  $Res call(
      {ETypeBonus eTypeBonus, ETypeBonusSource eTypeBonusSource, int value});
}

/// @nodoc
class __$$_TimeBonusCopyWithImpl<$Res> extends _$TimeBonusCopyWithImpl<$Res>
    implements _$$_TimeBonusCopyWith<$Res> {
  __$$_TimeBonusCopyWithImpl(
      _$_TimeBonus _value, $Res Function(_$_TimeBonus) _then)
      : super(_value, (v) => _then(v as _$_TimeBonus));

  @override
  _$_TimeBonus get _value => super._value as _$_TimeBonus;

  @override
  $Res call({
    Object? eTypeBonus = freezed,
    Object? eTypeBonusSource = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_TimeBonus(
      eTypeBonus: eTypeBonus == freezed
          ? _value.eTypeBonus
          : eTypeBonus // ignore: cast_nullable_to_non_nullable
              as ETypeBonus,
      eTypeBonusSource: eTypeBonusSource == freezed
          ? _value.eTypeBonusSource
          : eTypeBonusSource // ignore: cast_nullable_to_non_nullable
              as ETypeBonusSource,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeBonus implements _TimeBonus {
  const _$_TimeBonus(
      {required this.eTypeBonus,
      required this.eTypeBonusSource,
      required this.value});

  factory _$_TimeBonus.fromJson(Map<String, dynamic> json) =>
      _$$_TimeBonusFromJson(json);

  @override
  final ETypeBonus eTypeBonus;
  @override
  final ETypeBonusSource eTypeBonusSource;
  @override
  final int value;

  @override
  String toString() {
    return 'TimeBonus(eTypeBonus: $eTypeBonus, eTypeBonusSource: $eTypeBonusSource, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeBonus &&
            const DeepCollectionEquality()
                .equals(other.eTypeBonus, eTypeBonus) &&
            const DeepCollectionEquality()
                .equals(other.eTypeBonusSource, eTypeBonusSource) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(eTypeBonus),
      const DeepCollectionEquality().hash(eTypeBonusSource),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_TimeBonusCopyWith<_$_TimeBonus> get copyWith =>
      __$$_TimeBonusCopyWithImpl<_$_TimeBonus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeBonusToJson(
      this,
    );
  }
}

abstract class _TimeBonus implements TimeBonus {
  const factory _TimeBonus(
      {required final ETypeBonus eTypeBonus,
      required final ETypeBonusSource eTypeBonusSource,
      required final int value}) = _$_TimeBonus;

  factory _TimeBonus.fromJson(Map<String, dynamic> json) =
      _$_TimeBonus.fromJson;

  @override
  ETypeBonus get eTypeBonus;
  @override
  ETypeBonusSource get eTypeBonusSource;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$_TimeBonusCopyWith<_$_TimeBonus> get copyWith =>
      throw _privateConstructorUsedError;
}
