// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time_modifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeModifier _$TimeModifierFromJson(Map<String, dynamic> json) {
  return _TimeModifier.fromJson(json);
}

/// @nodoc
mixin _$TimeModifier {
  String get id => throw _privateConstructorUsedError;
  ETypeModifier get eTypeModifier => throw _privateConstructorUsedError;
  ETypeModifierSource get eTypeModifierSource =>
      throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeModifierCopyWith<TimeModifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeModifierCopyWith<$Res> {
  factory $TimeModifierCopyWith(
          TimeModifier value, $Res Function(TimeModifier) then) =
      _$TimeModifierCopyWithImpl<$Res>;
  $Res call(
      {String id,
      ETypeModifier eTypeModifier,
      ETypeModifierSource eTypeModifierSource,
      int value});
}

/// @nodoc
class _$TimeModifierCopyWithImpl<$Res> implements $TimeModifierCopyWith<$Res> {
  _$TimeModifierCopyWithImpl(this._value, this._then);

  final TimeModifier _value;
  // ignore: unused_field
  final $Res Function(TimeModifier) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? eTypeModifier = freezed,
    Object? eTypeModifierSource = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eTypeModifier: eTypeModifier == freezed
          ? _value.eTypeModifier
          : eTypeModifier // ignore: cast_nullable_to_non_nullable
              as ETypeModifier,
      eTypeModifierSource: eTypeModifierSource == freezed
          ? _value.eTypeModifierSource
          : eTypeModifierSource // ignore: cast_nullable_to_non_nullable
              as ETypeModifierSource,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TimeModifierCopyWith<$Res>
    implements $TimeModifierCopyWith<$Res> {
  factory _$$_TimeModifierCopyWith(
          _$_TimeModifier value, $Res Function(_$_TimeModifier) then) =
      __$$_TimeModifierCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      ETypeModifier eTypeModifier,
      ETypeModifierSource eTypeModifierSource,
      int value});
}

/// @nodoc
class __$$_TimeModifierCopyWithImpl<$Res>
    extends _$TimeModifierCopyWithImpl<$Res>
    implements _$$_TimeModifierCopyWith<$Res> {
  __$$_TimeModifierCopyWithImpl(
      _$_TimeModifier _value, $Res Function(_$_TimeModifier) _then)
      : super(_value, (v) => _then(v as _$_TimeModifier));

  @override
  _$_TimeModifier get _value => super._value as _$_TimeModifier;

  @override
  $Res call({
    Object? id = freezed,
    Object? eTypeModifier = freezed,
    Object? eTypeModifierSource = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_TimeModifier(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eTypeModifier: eTypeModifier == freezed
          ? _value.eTypeModifier
          : eTypeModifier // ignore: cast_nullable_to_non_nullable
              as ETypeModifier,
      eTypeModifierSource: eTypeModifierSource == freezed
          ? _value.eTypeModifierSource
          : eTypeModifierSource // ignore: cast_nullable_to_non_nullable
              as ETypeModifierSource,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeModifier implements _TimeModifier {
  const _$_TimeModifier(
      {required this.id,
      required this.eTypeModifier,
      required this.eTypeModifierSource,
      required this.value});

  factory _$_TimeModifier.fromJson(Map<String, dynamic> json) =>
      _$$_TimeModifierFromJson(json);

  @override
  final String id;
  @override
  final ETypeModifier eTypeModifier;
  @override
  final ETypeModifierSource eTypeModifierSource;
  @override
  final int value;

  @override
  String toString() {
    return 'TimeModifier(id: $id, eTypeModifier: $eTypeModifier, eTypeModifierSource: $eTypeModifierSource, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeModifier &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.eTypeModifier, eTypeModifier) &&
            const DeepCollectionEquality()
                .equals(other.eTypeModifierSource, eTypeModifierSource) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(eTypeModifier),
      const DeepCollectionEquality().hash(eTypeModifierSource),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_TimeModifierCopyWith<_$_TimeModifier> get copyWith =>
      __$$_TimeModifierCopyWithImpl<_$_TimeModifier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeModifierToJson(this);
  }
}

abstract class _TimeModifier implements TimeModifier {
  const factory _TimeModifier(
      {required final String id,
      required final ETypeModifier eTypeModifier,
      required final ETypeModifierSource eTypeModifierSource,
      required final int value}) = _$_TimeModifier;

  factory _TimeModifier.fromJson(Map<String, dynamic> json) =
      _$_TimeModifier.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  ETypeModifier get eTypeModifier => throw _privateConstructorUsedError;
  @override
  ETypeModifierSource get eTypeModifierSource =>
      throw _privateConstructorUsedError;
  @override
  int get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TimeModifierCopyWith<_$_TimeModifier> get copyWith =>
      throw _privateConstructorUsedError;
}
