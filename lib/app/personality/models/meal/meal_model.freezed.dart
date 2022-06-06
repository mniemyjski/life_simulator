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
  double get cost => throw _privateConstructorUsedError;
  int get bonusToRelax => throw _privateConstructorUsedError;
  int get bonusToSleep => throw _privateConstructorUsedError;
  int get bonusToLearn => throw _privateConstructorUsedError;

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
      double cost,
      int bonusToRelax,
      int bonusToSleep,
      int bonusToLearn});
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
    Object? bonusToRelax = freezed,
    Object? bonusToSleep = freezed,
    Object? bonusToLearn = freezed,
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
      bonusToRelax: bonusToRelax == freezed
          ? _value.bonusToRelax
          : bonusToRelax // ignore: cast_nullable_to_non_nullable
              as int,
      bonusToSleep: bonusToSleep == freezed
          ? _value.bonusToSleep
          : bonusToSleep // ignore: cast_nullable_to_non_nullable
              as int,
      bonusToLearn: bonusToLearn == freezed
          ? _value.bonusToLearn
          : bonusToLearn // ignore: cast_nullable_to_non_nullable
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
      double cost,
      int bonusToRelax,
      int bonusToSleep,
      int bonusToLearn});
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
    Object? bonusToRelax = freezed,
    Object? bonusToSleep = freezed,
    Object? bonusToLearn = freezed,
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
              as double,
      bonusToRelax: bonusToRelax == freezed
          ? _value.bonusToRelax
          : bonusToRelax // ignore: cast_nullable_to_non_nullable
              as int,
      bonusToSleep: bonusToSleep == freezed
          ? _value.bonusToSleep
          : bonusToSleep // ignore: cast_nullable_to_non_nullable
              as int,
      bonusToLearn: bonusToLearn == freezed
          ? _value.bonusToLearn
          : bonusToLearn // ignore: cast_nullable_to_non_nullable
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
      this.bonusToRelax = 0,
      this.bonusToSleep = 0,
      this.bonusToLearn = 0});

  factory _$_Meal.fromJson(Map<String, dynamic> json) => _$$_MealFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double cost;
  @override
  @JsonKey()
  final int bonusToRelax;
  @override
  @JsonKey()
  final int bonusToSleep;
  @override
  @JsonKey()
  final int bonusToLearn;

  @override
  String toString() {
    return 'Meal(id: $id, name: $name, cost: $cost, bonusToRelax: $bonusToRelax, bonusToSleep: $bonusToSleep, bonusToLearn: $bonusToLearn)';
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
                .equals(other.bonusToRelax, bonusToRelax) &&
            const DeepCollectionEquality()
                .equals(other.bonusToSleep, bonusToSleep) &&
            const DeepCollectionEquality()
                .equals(other.bonusToLearn, bonusToLearn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(bonusToRelax),
      const DeepCollectionEquality().hash(bonusToSleep),
      const DeepCollectionEquality().hash(bonusToLearn));

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
      required final double cost,
      final int bonusToRelax,
      final int bonusToSleep,
      final int bonusToLearn}) = _$_Meal;

  factory _Meal.fromJson(Map<String, dynamic> json) = _$_Meal.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  double get cost => throw _privateConstructorUsedError;
  @override
  int get bonusToRelax => throw _privateConstructorUsedError;
  @override
  int get bonusToSleep => throw _privateConstructorUsedError;
  @override
  int get bonusToLearn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MealCopyWith<_$_Meal> get copyWith => throw _privateConstructorUsedError;
}
