// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'house_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

House _$HouseFromJson(Map<String, dynamic> json) {
  return _House.fromJson(json);
}

/// @nodoc
mixin _$House {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ETypeHouse get eTypeHouse => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  int get monthlyCost => throw _privateConstructorUsedError;
  DateGame? get dateBuy => throw _privateConstructorUsedError;
  int get bonusToSatisfaction => throw _privateConstructorUsedError;
  int get bonusToTiredness => throw _privateConstructorUsedError;
  int get bonusToHealth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HouseCopyWith<House> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseCopyWith<$Res> {
  factory $HouseCopyWith(House value, $Res Function(House) then) =
      _$HouseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      ETypeHouse eTypeHouse,
      int cost,
      int monthlyCost,
      DateGame? dateBuy,
      int bonusToSatisfaction,
      int bonusToTiredness,
      int bonusToHealth});

  $DateGameCopyWith<$Res>? get dateBuy;
}

/// @nodoc
class _$HouseCopyWithImpl<$Res> implements $HouseCopyWith<$Res> {
  _$HouseCopyWithImpl(this._value, this._then);

  final House _value;
  // ignore: unused_field
  final $Res Function(House) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? eTypeHouse = freezed,
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
      eTypeHouse: eTypeHouse == freezed
          ? _value.eTypeHouse
          : eTypeHouse // ignore: cast_nullable_to_non_nullable
              as ETypeHouse,
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
abstract class _$$_HouseCopyWith<$Res> implements $HouseCopyWith<$Res> {
  factory _$$_HouseCopyWith(_$_House value, $Res Function(_$_House) then) =
      __$$_HouseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      ETypeHouse eTypeHouse,
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
class __$$_HouseCopyWithImpl<$Res> extends _$HouseCopyWithImpl<$Res>
    implements _$$_HouseCopyWith<$Res> {
  __$$_HouseCopyWithImpl(_$_House _value, $Res Function(_$_House) _then)
      : super(_value, (v) => _then(v as _$_House));

  @override
  _$_House get _value => super._value as _$_House;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? eTypeHouse = freezed,
    Object? cost = freezed,
    Object? monthlyCost = freezed,
    Object? dateBuy = freezed,
    Object? bonusToSatisfaction = freezed,
    Object? bonusToTiredness = freezed,
    Object? bonusToHealth = freezed,
  }) {
    return _then(_$_House(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      eTypeHouse: eTypeHouse == freezed
          ? _value.eTypeHouse
          : eTypeHouse // ignore: cast_nullable_to_non_nullable
              as ETypeHouse,
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
class _$_House implements _House {
  const _$_House(
      {required this.id,
      required this.name,
      required this.eTypeHouse,
      required this.cost,
      required this.monthlyCost,
      this.dateBuy,
      this.bonusToSatisfaction = 0,
      this.bonusToTiredness = 0,
      this.bonusToHealth = 0});

  factory _$_House.fromJson(Map<String, dynamic> json) =>
      _$$_HouseFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final ETypeHouse eTypeHouse;
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
    return 'House(id: $id, name: $name, eTypeHouse: $eTypeHouse, cost: $cost, monthlyCost: $monthlyCost, dateBuy: $dateBuy, bonusToSatisfaction: $bonusToSatisfaction, bonusToTiredness: $bonusToTiredness, bonusToHealth: $bonusToHealth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_House &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.eTypeHouse, eTypeHouse) &&
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
      const DeepCollectionEquality().hash(eTypeHouse),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(monthlyCost),
      const DeepCollectionEquality().hash(dateBuy),
      const DeepCollectionEquality().hash(bonusToSatisfaction),
      const DeepCollectionEquality().hash(bonusToTiredness),
      const DeepCollectionEquality().hash(bonusToHealth));

  @JsonKey(ignore: true)
  @override
  _$$_HouseCopyWith<_$_House> get copyWith =>
      __$$_HouseCopyWithImpl<_$_House>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HouseToJson(this);
  }
}

abstract class _House implements House {
  const factory _House(
      {required final String id,
      required final String name,
      required final ETypeHouse eTypeHouse,
      required final int cost,
      required final int monthlyCost,
      final DateGame? dateBuy,
      final int bonusToSatisfaction,
      final int bonusToTiredness,
      final int bonusToHealth}) = _$_House;

  factory _House.fromJson(Map<String, dynamic> json) = _$_House.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  ETypeHouse get eTypeHouse => throw _privateConstructorUsedError;
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
  _$$_HouseCopyWith<_$_House> get copyWith =>
      throw _privateConstructorUsedError;
}
