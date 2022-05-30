// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transport_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transport _$TransportFromJson(Map<String, dynamic> json) {
  return _Transport.fromJson(json);
}

/// @nodoc
mixin _$Transport {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  ETypeTransport get eTypeTransport => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  int get monthlyCost => throw _privateConstructorUsedError;
  DateGame? get dateBuy => throw _privateConstructorUsedError;
  int get bonusToSatisfaction => throw _privateConstructorUsedError;
  int get bonusToTiredness => throw _privateConstructorUsedError;
  int get bonusToHealth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportCopyWith<Transport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportCopyWith<$Res> {
  factory $TransportCopyWith(Transport value, $Res Function(Transport) then) =
      _$TransportCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String brand,
      ETypeTransport eTypeTransport,
      int cost,
      int monthlyCost,
      DateGame? dateBuy,
      int bonusToSatisfaction,
      int bonusToTiredness,
      int bonusToHealth});

  $DateGameCopyWith<$Res>? get dateBuy;
}

/// @nodoc
class _$TransportCopyWithImpl<$Res> implements $TransportCopyWith<$Res> {
  _$TransportCopyWithImpl(this._value, this._then);

  final Transport _value;
  // ignore: unused_field
  final $Res Function(Transport) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? brand = freezed,
    Object? eTypeTransport = freezed,
    Object? cost = freezed,
    Object? monthlyCost = freezed,
    Object? dateBuy = freezed,
    Object? bonusToSatisfaction = freezed,
    Object? bonusToTiredness = freezed,
    Object? bonusToHealth = freezed,
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
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      eTypeTransport: eTypeTransport == freezed
          ? _value.eTypeTransport
          : eTypeTransport // ignore: cast_nullable_to_non_nullable
              as ETypeTransport,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyCost: monthlyCost == freezed
          ? _value.monthlyCost
          : monthlyCost // ignore: cast_nullable_to_non_nullable
              as int,
      dateBuy: dateBuy == freezed
          ? _value.dateBuy
          : dateBuy // ignore: cast_nullable_to_non_nullable
              as DateGame?,
      bonusToSatisfaction: bonusToSatisfaction == freezed
          ? _value.bonusToSatisfaction
          : bonusToSatisfaction // ignore: cast_nullable_to_non_nullable
              as int,
      bonusToTiredness: bonusToTiredness == freezed
          ? _value.bonusToTiredness
          : bonusToTiredness // ignore: cast_nullable_to_non_nullable
              as int,
      bonusToHealth: bonusToHealth == freezed
          ? _value.bonusToHealth
          : bonusToHealth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $DateGameCopyWith<$Res>? get dateBuy {
    if (_value.dateBuy == null) {
      return null;
    }

    return $DateGameCopyWith<$Res>(_value.dateBuy!, (value) {
      return _then(_value.copyWith(dateBuy: value));
    });
  }
}

/// @nodoc
abstract class _$$_TransportCopyWith<$Res> implements $TransportCopyWith<$Res> {
  factory _$$_TransportCopyWith(
          _$_Transport value, $Res Function(_$_Transport) then) =
      __$$_TransportCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String brand,
      ETypeTransport eTypeTransport,
      int cost,
      int monthlyCost,
      DateGame? dateBuy,
      int bonusToSatisfaction,
      int bonusToTiredness,
      int bonusToHealth});

  @override
  $DateGameCopyWith<$Res>? get dateBuy;
}

/// @nodoc
class __$$_TransportCopyWithImpl<$Res> extends _$TransportCopyWithImpl<$Res>
    implements _$$_TransportCopyWith<$Res> {
  __$$_TransportCopyWithImpl(
      _$_Transport _value, $Res Function(_$_Transport) _then)
      : super(_value, (v) => _then(v as _$_Transport));

  @override
  _$_Transport get _value => super._value as _$_Transport;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? brand = freezed,
    Object? eTypeTransport = freezed,
    Object? cost = freezed,
    Object? monthlyCost = freezed,
    Object? dateBuy = freezed,
    Object? bonusToSatisfaction = freezed,
    Object? bonusToTiredness = freezed,
    Object? bonusToHealth = freezed,
  }) {
    return _then(_$_Transport(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      eTypeTransport: eTypeTransport == freezed
          ? _value.eTypeTransport
          : eTypeTransport // ignore: cast_nullable_to_non_nullable
              as ETypeTransport,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      monthlyCost: monthlyCost == freezed
          ? _value.monthlyCost
          : monthlyCost // ignore: cast_nullable_to_non_nullable
              as int,
      dateBuy: dateBuy == freezed
          ? _value.dateBuy
          : dateBuy // ignore: cast_nullable_to_non_nullable
              as DateGame?,
      bonusToSatisfaction: bonusToSatisfaction == freezed
          ? _value.bonusToSatisfaction
          : bonusToSatisfaction // ignore: cast_nullable_to_non_nullable
              as int,
      bonusToTiredness: bonusToTiredness == freezed
          ? _value.bonusToTiredness
          : bonusToTiredness // ignore: cast_nullable_to_non_nullable
              as int,
      bonusToHealth: bonusToHealth == freezed
          ? _value.bonusToHealth
          : bonusToHealth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transport implements _Transport {
  const _$_Transport(
      {required this.id,
      required this.name,
      required this.brand,
      required this.eTypeTransport,
      required this.cost,
      required this.monthlyCost,
      this.dateBuy,
      this.bonusToSatisfaction = 0,
      this.bonusToTiredness = 0,
      this.bonusToHealth = 0});

  factory _$_Transport.fromJson(Map<String, dynamic> json) =>
      _$$_TransportFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String brand;
  @override
  final ETypeTransport eTypeTransport;
  @override
  final int cost;
  @override
  final int monthlyCost;
  @override
  final DateGame? dateBuy;
  @override
  @JsonKey()
  final int bonusToSatisfaction;
  @override
  @JsonKey()
  final int bonusToTiredness;
  @override
  @JsonKey()
  final int bonusToHealth;

  @override
  String toString() {
    return 'Transport(id: $id, name: $name, brand: $brand, eTypeTransport: $eTypeTransport, cost: $cost, monthlyCost: $monthlyCost, dateBuy: $dateBuy, bonusToSatisfaction: $bonusToSatisfaction, bonusToTiredness: $bonusToTiredness, bonusToHealth: $bonusToHealth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transport &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality()
                .equals(other.eTypeTransport, eTypeTransport) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality()
                .equals(other.monthlyCost, monthlyCost) &&
            const DeepCollectionEquality().equals(other.dateBuy, dateBuy) &&
            const DeepCollectionEquality()
                .equals(other.bonusToSatisfaction, bonusToSatisfaction) &&
            const DeepCollectionEquality()
                .equals(other.bonusToTiredness, bonusToTiredness) &&
            const DeepCollectionEquality()
                .equals(other.bonusToHealth, bonusToHealth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(eTypeTransport),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(monthlyCost),
      const DeepCollectionEquality().hash(dateBuy),
      const DeepCollectionEquality().hash(bonusToSatisfaction),
      const DeepCollectionEquality().hash(bonusToTiredness),
      const DeepCollectionEquality().hash(bonusToHealth));

  @JsonKey(ignore: true)
  @override
  _$$_TransportCopyWith<_$_Transport> get copyWith =>
      __$$_TransportCopyWithImpl<_$_Transport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransportToJson(this);
  }
}

abstract class _Transport implements Transport {
  const factory _Transport(
      {required final String id,
      required final String name,
      required final String brand,
      required final ETypeTransport eTypeTransport,
      required final int cost,
      required final int monthlyCost,
      final DateGame? dateBuy,
      final int bonusToSatisfaction,
      final int bonusToTiredness,
      final int bonusToHealth}) = _$_Transport;

  factory _Transport.fromJson(Map<String, dynamic> json) =
      _$_Transport.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get brand => throw _privateConstructorUsedError;
  @override
  ETypeTransport get eTypeTransport => throw _privateConstructorUsedError;
  @override
  int get cost => throw _privateConstructorUsedError;
  @override
  int get monthlyCost => throw _privateConstructorUsedError;
  @override
  DateGame? get dateBuy => throw _privateConstructorUsedError;
  @override
  int get bonusToSatisfaction => throw _privateConstructorUsedError;
  @override
  int get bonusToTiredness => throw _privateConstructorUsedError;
  @override
  int get bonusToHealth => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TransportCopyWith<_$_Transport> get copyWith =>
      throw _privateConstructorUsedError;
}
