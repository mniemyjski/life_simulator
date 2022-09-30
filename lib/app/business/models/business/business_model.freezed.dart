// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'business_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Business _$BusinessFromJson(Map<String, dynamic> json) {
  return _Business.fromJson(json);
}

/// @nodoc
mixin _$Business {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Upgrade get upgrade => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessCopyWith<Business> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessCopyWith<$Res> {
  factory $BusinessCopyWith(Business value, $Res Function(Business) then) =
      _$BusinessCopyWithImpl<$Res>;
  $Res call({String id, String name, Upgrade upgrade});

  $UpgradeCopyWith<$Res> get upgrade;
}

/// @nodoc
class _$BusinessCopyWithImpl<$Res> implements $BusinessCopyWith<$Res> {
  _$BusinessCopyWithImpl(this._value, this._then);

  final Business _value;
  // ignore: unused_field
  final $Res Function(Business) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? upgrade = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      upgrade: upgrade == freezed
          ? _value.upgrade
          : upgrade // ignore: cast_nullable_to_non_nullable
              as Upgrade,
    ));
  }

  @override
  $UpgradeCopyWith<$Res> get upgrade {
    return $UpgradeCopyWith<$Res>(_value.upgrade, (value) {
      return _then(_value.copyWith(upgrade: value));
    });
  }
}

/// @nodoc
abstract class _$$_BusinessCopyWith<$Res> implements $BusinessCopyWith<$Res> {
  factory _$$_BusinessCopyWith(
          _$_Business value, $Res Function(_$_Business) then) =
      __$$_BusinessCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, Upgrade upgrade});

  @override
  $UpgradeCopyWith<$Res> get upgrade;
}

/// @nodoc
class __$$_BusinessCopyWithImpl<$Res> extends _$BusinessCopyWithImpl<$Res>
    implements _$$_BusinessCopyWith<$Res> {
  __$$_BusinessCopyWithImpl(
      _$_Business _value, $Res Function(_$_Business) _then)
      : super(_value, (v) => _then(v as _$_Business));

  @override
  _$_Business get _value => super._value as _$_Business;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? upgrade = freezed,
  }) {
    return _then(_$_Business(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      upgrade: upgrade == freezed
          ? _value.upgrade
          : upgrade // ignore: cast_nullable_to_non_nullable
              as Upgrade,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Business extends _Business {
  const _$_Business(
      {required this.id, required this.name, required this.upgrade})
      : super._();

  factory _$_Business.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Upgrade upgrade;

  @override
  String toString() {
    return 'Business(id: $id, name: $name, upgrade: $upgrade)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Business &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.upgrade, upgrade));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(upgrade));

  @JsonKey(ignore: true)
  @override
  _$$_BusinessCopyWith<_$_Business> get copyWith =>
      __$$_BusinessCopyWithImpl<_$_Business>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessToJson(
      this,
    );
  }
}

abstract class _Business extends Business {
  const factory _Business(
      {required final String id,
      required final String name,
      required final Upgrade upgrade}) = _$_Business;
  const _Business._() : super._();

  factory _Business.fromJson(Map<String, dynamic> json) = _$_Business.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Upgrade get upgrade;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessCopyWith<_$_Business> get copyWith =>
      throw _privateConstructorUsedError;
}
