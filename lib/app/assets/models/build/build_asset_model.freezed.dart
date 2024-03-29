// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'build_asset_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BuildAsset _$BuildAssetFromJson(Map<String, dynamic> json) {
  return _BuildAsset.fromJson(json);
}

/// @nodoc
mixin _$BuildAsset {
  String get address => throw _privateConstructorUsedError;
  ETypeAsset get eTypeAsset => throw _privateConstructorUsedError;
  DateTime? get datCre => throw _privateConstructorUsedError;
  DateTime? get datEnd => throw _privateConstructorUsedError;
  int get tenantsMax => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildAssetCopyWith<BuildAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildAssetCopyWith<$Res> {
  factory $BuildAssetCopyWith(
          BuildAsset value, $Res Function(BuildAsset) then) =
      _$BuildAssetCopyWithImpl<$Res, BuildAsset>;
  @useResult
  $Res call(
      {String address,
      ETypeAsset eTypeAsset,
      DateTime? datCre,
      DateTime? datEnd,
      int tenantsMax,
      double cost,
      double value});
}

/// @nodoc
class _$BuildAssetCopyWithImpl<$Res, $Val extends BuildAsset>
    implements $BuildAssetCopyWith<$Res> {
  _$BuildAssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? eTypeAsset = null,
    Object? datCre = freezed,
    Object? datEnd = freezed,
    Object? tenantsMax = null,
    Object? cost = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      eTypeAsset: null == eTypeAsset
          ? _value.eTypeAsset
          : eTypeAsset // ignore: cast_nullable_to_non_nullable
              as ETypeAsset,
      datCre: freezed == datCre
          ? _value.datCre
          : datCre // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      datEnd: freezed == datEnd
          ? _value.datEnd
          : datEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tenantsMax: null == tenantsMax
          ? _value.tenantsMax
          : tenantsMax // ignore: cast_nullable_to_non_nullable
              as int,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BuildAssetCopyWith<$Res>
    implements $BuildAssetCopyWith<$Res> {
  factory _$$_BuildAssetCopyWith(
          _$_BuildAsset value, $Res Function(_$_BuildAsset) then) =
      __$$_BuildAssetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address,
      ETypeAsset eTypeAsset,
      DateTime? datCre,
      DateTime? datEnd,
      int tenantsMax,
      double cost,
      double value});
}

/// @nodoc
class __$$_BuildAssetCopyWithImpl<$Res>
    extends _$BuildAssetCopyWithImpl<$Res, _$_BuildAsset>
    implements _$$_BuildAssetCopyWith<$Res> {
  __$$_BuildAssetCopyWithImpl(
      _$_BuildAsset _value, $Res Function(_$_BuildAsset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? eTypeAsset = null,
    Object? datCre = freezed,
    Object? datEnd = freezed,
    Object? tenantsMax = null,
    Object? cost = null,
    Object? value = null,
  }) {
    return _then(_$_BuildAsset(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      eTypeAsset: null == eTypeAsset
          ? _value.eTypeAsset
          : eTypeAsset // ignore: cast_nullable_to_non_nullable
              as ETypeAsset,
      datCre: freezed == datCre
          ? _value.datCre
          : datCre // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      datEnd: freezed == datEnd
          ? _value.datEnd
          : datEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tenantsMax: null == tenantsMax
          ? _value.tenantsMax
          : tenantsMax // ignore: cast_nullable_to_non_nullable
              as int,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BuildAsset implements _BuildAsset {
  const _$_BuildAsset(
      {required this.address,
      required this.eTypeAsset,
      this.datCre,
      this.datEnd,
      required this.tenantsMax,
      required this.cost,
      required this.value});

  factory _$_BuildAsset.fromJson(Map<String, dynamic> json) =>
      _$$_BuildAssetFromJson(json);

  @override
  final String address;
  @override
  final ETypeAsset eTypeAsset;
  @override
  final DateTime? datCre;
  @override
  final DateTime? datEnd;
  @override
  final int tenantsMax;
  @override
  final double cost;
  @override
  final double value;

  @override
  String toString() {
    return 'BuildAsset(address: $address, eTypeAsset: $eTypeAsset, datCre: $datCre, datEnd: $datEnd, tenantsMax: $tenantsMax, cost: $cost, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuildAsset &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.eTypeAsset, eTypeAsset) ||
                other.eTypeAsset == eTypeAsset) &&
            (identical(other.datCre, datCre) || other.datCre == datCre) &&
            (identical(other.datEnd, datEnd) || other.datEnd == datEnd) &&
            (identical(other.tenantsMax, tenantsMax) ||
                other.tenantsMax == tenantsMax) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, eTypeAsset, datCre,
      datEnd, tenantsMax, cost, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuildAssetCopyWith<_$_BuildAsset> get copyWith =>
      __$$_BuildAssetCopyWithImpl<_$_BuildAsset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BuildAssetToJson(
      this,
    );
  }
}

abstract class _BuildAsset implements BuildAsset {
  const factory _BuildAsset(
      {required final String address,
      required final ETypeAsset eTypeAsset,
      final DateTime? datCre,
      final DateTime? datEnd,
      required final int tenantsMax,
      required final double cost,
      required final double value}) = _$_BuildAsset;

  factory _BuildAsset.fromJson(Map<String, dynamic> json) =
      _$_BuildAsset.fromJson;

  @override
  String get address;
  @override
  ETypeAsset get eTypeAsset;
  @override
  DateTime? get datCre;
  @override
  DateTime? get datEnd;
  @override
  int get tenantsMax;
  @override
  double get cost;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$_BuildAssetCopyWith<_$_BuildAsset> get copyWith =>
      throw _privateConstructorUsedError;
}
