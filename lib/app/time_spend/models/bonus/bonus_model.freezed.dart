// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bonus_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bonus _$BonusFromJson(Map<String, dynamic> json) {
  return _Bonus.fromJson(json);
}

/// @nodoc
mixin _$Bonus {
  ETypeBonus get eTypeBonus => throw _privateConstructorUsedError;
  ETypeBonusSource get eTypeBonusSource => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BonusCopyWith<Bonus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BonusCopyWith<$Res> {
  factory $BonusCopyWith(Bonus value, $Res Function(Bonus) then) =
      _$BonusCopyWithImpl<$Res>;
  $Res call(
      {ETypeBonus eTypeBonus, ETypeBonusSource eTypeBonusSource, int value});
}

/// @nodoc
class _$BonusCopyWithImpl<$Res> implements $BonusCopyWith<$Res> {
  _$BonusCopyWithImpl(this._value, this._then);

  final Bonus _value;
  // ignore: unused_field
  final $Res Function(Bonus) _then;

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
abstract class _$$_BonusCopyWith<$Res> implements $BonusCopyWith<$Res> {
  factory _$$_BonusCopyWith(_$_Bonus value, $Res Function(_$_Bonus) then) =
      __$$_BonusCopyWithImpl<$Res>;
  @override
  $Res call(
      {ETypeBonus eTypeBonus, ETypeBonusSource eTypeBonusSource, int value});
}

/// @nodoc
class __$$_BonusCopyWithImpl<$Res> extends _$BonusCopyWithImpl<$Res>
    implements _$$_BonusCopyWith<$Res> {
  __$$_BonusCopyWithImpl(_$_Bonus _value, $Res Function(_$_Bonus) _then)
      : super(_value, (v) => _then(v as _$_Bonus));

  @override
  _$_Bonus get _value => super._value as _$_Bonus;

  @override
  $Res call({
    Object? eTypeBonus = freezed,
    Object? eTypeBonusSource = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_Bonus(
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
class _$_Bonus implements _Bonus {
  const _$_Bonus(
      {required this.eTypeBonus,
      required this.eTypeBonusSource,
      required this.value});

  factory _$_Bonus.fromJson(Map<String, dynamic> json) =>
      _$$_BonusFromJson(json);

  @override
  final ETypeBonus eTypeBonus;
  @override
  final ETypeBonusSource eTypeBonusSource;
  @override
  final int value;

  @override
  String toString() {
    return 'Bonus(eTypeBonus: $eTypeBonus, eTypeBonusSource: $eTypeBonusSource, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bonus &&
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
  _$$_BonusCopyWith<_$_Bonus> get copyWith =>
      __$$_BonusCopyWithImpl<_$_Bonus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BonusToJson(this);
  }
}

abstract class _Bonus implements Bonus {
  const factory _Bonus(
      {required final ETypeBonus eTypeBonus,
      required final ETypeBonusSource eTypeBonusSource,
      required final int value}) = _$_Bonus;

  factory _Bonus.fromJson(Map<String, dynamic> json) = _$_Bonus.fromJson;

  @override
  ETypeBonus get eTypeBonus => throw _privateConstructorUsedError;
  @override
  ETypeBonusSource get eTypeBonusSource => throw _privateConstructorUsedError;
  @override
  int get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BonusCopyWith<_$_Bonus> get copyWith =>
      throw _privateConstructorUsedError;
}
