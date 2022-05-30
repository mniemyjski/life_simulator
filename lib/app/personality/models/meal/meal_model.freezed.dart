// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Meal _$MealFromJson(Map<String, dynamic> json) {
  return _Meal.fromJson(json);
}

/// @nodoc
mixin _$Meal {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  int get bonusToSatisfaction => throw _privateConstructorUsedError;
  int get bonusToTiredness => throw _privateConstructorUsedError;
  int get bonusToHealth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealCopyWith<Meal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealCopyWith<$Res> {
  factory $MealCopyWith(Meal value, $Res Function(Meal) then) =
      _$MealCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      int cost,
      int bonusToSatisfaction,
      int bonusToTiredness,
      int bonusToHealth});
}

/// @nodoc
class _$MealCopyWithImpl<$Res> implements $MealCopyWith<$Res> {
  _$MealCopyWithImpl(this._value, this._then);

  final Meal _value;
  // ignore: unused_field
  final $Res Function(Meal) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cost = freezed,
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
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_MealCopyWith<$Res> implements $MealCopyWith<$Res> {
  factory _$$_MealCopyWith(_$_Meal value, $Res Function(_$_Meal) then) =
      __$$_MealCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      int cost,
      int bonusToSatisfaction,
      int bonusToTiredness,
      int bonusToHealth});
}

/// @nodoc
class __$$_MealCopyWithImpl<$Res> extends _$MealCopyWithImpl<$Res>
    implements _$$_MealCopyWith<$Res> {
  __$$_MealCopyWithImpl(_$_Meal _value, $Res Function(_$_Meal) _then)
      : super(_value, (v) => _then(v as _$_Meal));

  @override
  _$_Meal get _value => super._value as _$_Meal;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cost = freezed,
    Object? bonusToSatisfaction = freezed,
    Object? bonusToTiredness = freezed,
    Object? bonusToHealth = freezed,
  }) {
    return _then(_$_Meal(
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
              as int,
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
class _$_Meal implements _Meal {
  const _$_Meal(
      {required this.id,
      required this.name,
      required this.cost,
      this.bonusToSatisfaction = 0,
      this.bonusToTiredness = 0,
      this.bonusToHealth = 0});

  factory _$_Meal.fromJson(Map<String, dynamic> json) => _$$_MealFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int cost;
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
    return 'Meal(id: $id, name: $name, cost: $cost, bonusToSatisfaction: $bonusToSatisfaction, bonusToTiredness: $bonusToTiredness, bonusToHealth: $bonusToHealth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meal &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
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
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(bonusToSatisfaction),
      const DeepCollectionEquality().hash(bonusToTiredness),
      const DeepCollectionEquality().hash(bonusToHealth));

  @JsonKey(ignore: true)
  @override
  _$$_MealCopyWith<_$_Meal> get copyWith =>
      __$$_MealCopyWithImpl<_$_Meal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealToJson(this);
  }
}

abstract class _Meal implements Meal {
  const factory _Meal(
      {required final String id,
      required final String name,
      required final int cost,
      final int bonusToSatisfaction,
      final int bonusToTiredness,
      final int bonusToHealth}) = _$_Meal;

  factory _Meal.fromJson(Map<String, dynamic> json) = _$_Meal.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get cost => throw _privateConstructorUsedError;
  @override
  int get bonusToSatisfaction => throw _privateConstructorUsedError;
  @override
  int get bonusToTiredness => throw _privateConstructorUsedError;
  @override
  int get bonusToHealth => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MealCopyWith<_$_Meal> get copyWith => throw _privateConstructorUsedError;
}
