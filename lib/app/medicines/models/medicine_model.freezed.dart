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
      _$MedicineCopyWithImpl<$Res, Medicine>;
  @useResult
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
class _$MedicineCopyWithImpl<$Res, $Val extends Medicine>
    implements $MedicineCopyWith<$Res> {
  _$MedicineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cost = null,
    Object? satisfaction = null,
    Object? health = null,
    Object? tiredness = null,
    Object? duration = null,
    Object? leftDuration = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      satisfaction: null == satisfaction
          ? _value.satisfaction
          : satisfaction // ignore: cast_nullable_to_non_nullable
              as double,
      health: null == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as double,
      tiredness: null == tiredness
          ? _value.tiredness
          : tiredness // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      leftDuration: null == leftDuration
          ? _value.leftDuration
          : leftDuration // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MedicineCopyWith<$Res> implements $MedicineCopyWith<$Res> {
  factory _$$_MedicineCopyWith(
          _$_Medicine value, $Res Function(_$_Medicine) then) =
      __$$_MedicineCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_MedicineCopyWithImpl<$Res>
    extends _$MedicineCopyWithImpl<$Res, _$_Medicine>
    implements _$$_MedicineCopyWith<$Res> {
  __$$_MedicineCopyWithImpl(
      _$_Medicine _value, $Res Function(_$_Medicine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cost = null,
    Object? satisfaction = null,
    Object? health = null,
    Object? tiredness = null,
    Object? duration = null,
    Object? leftDuration = null,
    Object? active = null,
  }) {
    return _then(_$_Medicine(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      satisfaction: null == satisfaction
          ? _value.satisfaction
          : satisfaction // ignore: cast_nullable_to_non_nullable
              as double,
      health: null == health
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as double,
      tiredness: null == tiredness
          ? _value.tiredness
          : tiredness // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      leftDuration: null == leftDuration
          ? _value.leftDuration
          : leftDuration // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active ? _value.active : active,
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.satisfaction, satisfaction) ||
                other.satisfaction == satisfaction) &&
            (identical(other.health, health) || other.health == health) &&
            (identical(other.tiredness, tiredness) ||
                other.tiredness == tiredness) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.leftDuration, leftDuration) ||
                other.leftDuration == leftDuration) &&
            const DeepCollectionEquality().equals(other.active, active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      cost,
      satisfaction,
      health,
      tiredness,
      duration,
      leftDuration,
      const DeepCollectionEquality().hash(active));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
