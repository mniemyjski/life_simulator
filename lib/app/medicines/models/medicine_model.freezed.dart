// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'medicine_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Medicine _$MedicineFromJson(Map<String, dynamic> json) {
  return _Medicine.fromJson(json);
}

/// @nodoc
mixin _$Medicine {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;
  double get satisfaction => throw _privateConstructorUsedError;
  double get health => throw _privateConstructorUsedError;
  double get tiredness => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  int get leftDuration => throw _privateConstructorUsedError;
  dynamic get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicineCopyWith<Medicine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineCopyWith<$Res> {
  factory $MedicineCopyWith(Medicine value, $Res Function(Medicine) then) =
      _$MedicineCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      double cost,
      double satisfaction,
      double health,
      double tiredness,
      int duration,
      int leftDuration,
      dynamic active});
}

/// @nodoc
class _$MedicineCopyWithImpl<$Res> implements $MedicineCopyWith<$Res> {
  _$MedicineCopyWithImpl(this._value, this._then);

  final Medicine _value;
  // ignore: unused_field
  final $Res Function(Medicine) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cost = freezed,
    Object? satisfaction = freezed,
    Object? health = freezed,
    Object? tiredness = freezed,
    Object? duration = freezed,
    Object? leftDuration = freezed,
    Object? active = freezed,
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
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      satisfaction: satisfaction == freezed
          ? _value.satisfaction
          : satisfaction // ignore: cast_nullable_to_non_nullable
              as double,
      health: health == freezed
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as double,
      tiredness: tiredness == freezed
          ? _value.tiredness
          : tiredness // ignore: cast_nullable_to_non_nullable
              as double,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      leftDuration: leftDuration == freezed
          ? _value.leftDuration
          : leftDuration // ignore: cast_nullable_to_non_nullable
              as int,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_MedicineCopyWith<$Res> implements $MedicineCopyWith<$Res> {
  factory _$$_MedicineCopyWith(
          _$_Medicine value, $Res Function(_$_Medicine) then) =
      __$$_MedicineCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      double cost,
      double satisfaction,
      double health,
      double tiredness,
      int duration,
      int leftDuration,
      dynamic active});
}

/// @nodoc
class __$$_MedicineCopyWithImpl<$Res> extends _$MedicineCopyWithImpl<$Res>
    implements _$$_MedicineCopyWith<$Res> {
  __$$_MedicineCopyWithImpl(
      _$_Medicine _value, $Res Function(_$_Medicine) _then)
      : super(_value, (v) => _then(v as _$_Medicine));

  @override
  _$_Medicine get _value => super._value as _$_Medicine;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cost = freezed,
    Object? satisfaction = freezed,
    Object? health = freezed,
    Object? tiredness = freezed,
    Object? duration = freezed,
    Object? leftDuration = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_Medicine(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      satisfaction: satisfaction == freezed
          ? _value.satisfaction
          : satisfaction // ignore: cast_nullable_to_non_nullable
              as double,
      health: health == freezed
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as double,
      tiredness: tiredness == freezed
          ? _value.tiredness
          : tiredness // ignore: cast_nullable_to_non_nullable
              as double,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      leftDuration: leftDuration == freezed
          ? _value.leftDuration
          : leftDuration // ignore: cast_nullable_to_non_nullable
              as int,
      active: active == freezed ? _value.active : active,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Medicine implements _Medicine {
  const _$_Medicine(
      {required this.id,
      required this.name,
      required this.cost,
      required this.satisfaction,
      required this.health,
      required this.tiredness,
      required this.duration,
      required this.leftDuration,
      this.active = false});

  factory _$_Medicine.fromJson(Map<String, dynamic> json) =>
      _$$_MedicineFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double cost;
  @override
  final double satisfaction;
  @override
  final double health;
  @override
  final double tiredness;
  @override
  final int duration;
  @override
  final int leftDuration;
  @override
  @JsonKey()
  final dynamic active;

  @override
  String toString() {
    return 'Medicine(id: $id, name: $name, cost: $cost, satisfaction: $satisfaction, health: $health, tiredness: $tiredness, duration: $duration, leftDuration: $leftDuration, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Medicine &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality()
                .equals(other.satisfaction, satisfaction) &&
            const DeepCollectionEquality().equals(other.health, health) &&
            const DeepCollectionEquality().equals(other.tiredness, tiredness) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.leftDuration, leftDuration) &&
            const DeepCollectionEquality().equals(other.active, active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(satisfaction),
      const DeepCollectionEquality().hash(health),
      const DeepCollectionEquality().hash(tiredness),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(leftDuration),
      const DeepCollectionEquality().hash(active));

  @JsonKey(ignore: true)
  @override
  _$$_MedicineCopyWith<_$_Medicine> get copyWith =>
      __$$_MedicineCopyWithImpl<_$_Medicine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicineToJson(
      this,
    );
  }
}

abstract class _Medicine implements Medicine {
  const factory _Medicine(
      {required final String id,
      required final String name,
      required final double cost,
      required final double satisfaction,
      required final double health,
      required final double tiredness,
      required final int duration,
      required final int leftDuration,
      final dynamic active}) = _$_Medicine;

  factory _Medicine.fromJson(Map<String, dynamic> json) = _$_Medicine.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  double get cost;
  @override
  double get satisfaction;
  @override
  double get health;
  @override
  double get tiredness;
  @override
  int get duration;
  @override
  int get leftDuration;
  @override
  dynamic get active;
  @override
  @JsonKey(ignore: true)
  _$$_MedicineCopyWith<_$_Medicine> get copyWith =>
      throw _privateConstructorUsedError;
}
