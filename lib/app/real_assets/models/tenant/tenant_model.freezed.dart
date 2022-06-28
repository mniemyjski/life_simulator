// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tenant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tenant _$TenantFromJson(Map<String, dynamic> json) {
  return _Tenants.fromJson(json);
}

/// @nodoc
mixin _$Tenant {
  String? get id => throw _privateConstructorUsedError;
  String? get idAsset => throw _privateConstructorUsedError;
  double get minLevel => throw _privateConstructorUsedError;
  double get rent => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  bool get hasAnimal => throw _privateConstructorUsedError;
  int get chance => throw _privateConstructorUsedError;
  int get satisfaction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TenantCopyWith<Tenant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantCopyWith<$Res> {
  factory $TenantCopyWith(Tenant value, $Res Function(Tenant) then) =
      _$TenantCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? idAsset,
      double minLevel,
      double rent,
      int rating,
      bool hasAnimal,
      int chance,
      int satisfaction});
}

/// @nodoc
class _$TenantCopyWithImpl<$Res> implements $TenantCopyWith<$Res> {
  _$TenantCopyWithImpl(this._value, this._then);

  final Tenant _value;
  // ignore: unused_field
  final $Res Function(Tenant) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? idAsset = freezed,
    Object? minLevel = freezed,
    Object? rent = freezed,
    Object? rating = freezed,
    Object? hasAnimal = freezed,
    Object? chance = freezed,
    Object? satisfaction = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idAsset: idAsset == freezed
          ? _value.idAsset
          : idAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      minLevel: minLevel == freezed
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as double,
      rent: rent == freezed
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as double,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      hasAnimal: hasAnimal == freezed
          ? _value.hasAnimal
          : hasAnimal // ignore: cast_nullable_to_non_nullable
              as bool,
      chance: chance == freezed
          ? _value.chance
          : chance // ignore: cast_nullable_to_non_nullable
              as int,
      satisfaction: satisfaction == freezed
          ? _value.satisfaction
          : satisfaction // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TenantsCopyWith<$Res> implements $TenantCopyWith<$Res> {
  factory _$$_TenantsCopyWith(
          _$_Tenants value, $Res Function(_$_Tenants) then) =
      __$$_TenantsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? idAsset,
      double minLevel,
      double rent,
      int rating,
      bool hasAnimal,
      int chance,
      int satisfaction});
}

/// @nodoc
class __$$_TenantsCopyWithImpl<$Res> extends _$TenantCopyWithImpl<$Res>
    implements _$$_TenantsCopyWith<$Res> {
  __$$_TenantsCopyWithImpl(_$_Tenants _value, $Res Function(_$_Tenants) _then)
      : super(_value, (v) => _then(v as _$_Tenants));

  @override
  _$_Tenants get _value => super._value as _$_Tenants;

  @override
  $Res call({
    Object? id = freezed,
    Object? idAsset = freezed,
    Object? minLevel = freezed,
    Object? rent = freezed,
    Object? rating = freezed,
    Object? hasAnimal = freezed,
    Object? chance = freezed,
    Object? satisfaction = freezed,
  }) {
    return _then(_$_Tenants(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      idAsset: idAsset == freezed
          ? _value.idAsset
          : idAsset // ignore: cast_nullable_to_non_nullable
              as String?,
      minLevel: minLevel == freezed
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as double,
      rent: rent == freezed
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as double,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      hasAnimal: hasAnimal == freezed
          ? _value.hasAnimal
          : hasAnimal // ignore: cast_nullable_to_non_nullable
              as bool,
      chance: chance == freezed
          ? _value.chance
          : chance // ignore: cast_nullable_to_non_nullable
              as int,
      satisfaction: satisfaction == freezed
          ? _value.satisfaction
          : satisfaction // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tenants implements _Tenants {
  const _$_Tenants(
      {this.id,
      this.idAsset,
      required this.minLevel,
      required this.rent,
      required this.rating,
      required this.hasAnimal,
      required this.chance,
      this.satisfaction = 100})
      : assert(satisfaction > 0, 'satisfaction <= 100');

  factory _$_Tenants.fromJson(Map<String, dynamic> json) =>
      _$$_TenantsFromJson(json);

  @override
  final String? id;
  @override
  final String? idAsset;
  @override
  final double minLevel;
  @override
  final double rent;
  @override
  final int rating;
  @override
  final bool hasAnimal;
  @override
  final int chance;
  @override
  @JsonKey()
  final int satisfaction;

  @override
  String toString() {
    return 'Tenant(id: $id, idAsset: $idAsset, minLevel: $minLevel, rent: $rent, rating: $rating, hasAnimal: $hasAnimal, chance: $chance, satisfaction: $satisfaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tenants &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.idAsset, idAsset) &&
            const DeepCollectionEquality().equals(other.minLevel, minLevel) &&
            const DeepCollectionEquality().equals(other.rent, rent) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.hasAnimal, hasAnimal) &&
            const DeepCollectionEquality().equals(other.chance, chance) &&
            const DeepCollectionEquality()
                .equals(other.satisfaction, satisfaction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(idAsset),
      const DeepCollectionEquality().hash(minLevel),
      const DeepCollectionEquality().hash(rent),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(hasAnimal),
      const DeepCollectionEquality().hash(chance),
      const DeepCollectionEquality().hash(satisfaction));

  @JsonKey(ignore: true)
  @override
  _$$_TenantsCopyWith<_$_Tenants> get copyWith =>
      __$$_TenantsCopyWithImpl<_$_Tenants>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TenantsToJson(this);
  }
}

abstract class _Tenants implements Tenant {
  const factory _Tenants(
      {final String? id,
      final String? idAsset,
      required final double minLevel,
      required final double rent,
      required final int rating,
      required final bool hasAnimal,
      required final int chance,
      final int satisfaction}) = _$_Tenants;

  factory _Tenants.fromJson(Map<String, dynamic> json) = _$_Tenants.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get idAsset => throw _privateConstructorUsedError;
  @override
  double get minLevel => throw _privateConstructorUsedError;
  @override
  double get rent => throw _privateConstructorUsedError;
  @override
  int get rating => throw _privateConstructorUsedError;
  @override
  bool get hasAnimal => throw _privateConstructorUsedError;
  @override
  int get chance => throw _privateConstructorUsedError;
  @override
  int get satisfaction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TenantsCopyWith<_$_Tenants> get copyWith =>
      throw _privateConstructorUsedError;
}
