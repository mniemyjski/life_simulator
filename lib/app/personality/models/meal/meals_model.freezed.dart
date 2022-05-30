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

Meals _$MealsFromJson(Map<String, dynamic> json) {
  return _Meals.fromJson(json);
}

/// @nodoc
mixin _$Meals {
  String get name => throw _privateConstructorUsedError;
  String get cost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealsCopyWith<Meals> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsCopyWith<$Res> {
  factory $MealsCopyWith(Meals value, $Res Function(Meals) then) = _$MealsCopyWithImpl<$Res>;
  $Res call({String name, String cost});
}

/// @nodoc
class _$MealsCopyWithImpl<$Res> implements $MealsCopyWith<$Res> {
  _$MealsCopyWithImpl(this._value, this._then);

  final Meals _value;
  // ignore: unused_field
  final $Res Function(Meals) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? cost = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MealsCopyWith<$Res> implements $MealsCopyWith<$Res> {
  factory _$$_MealsCopyWith(_$_Meals value, $Res Function(_$_Meals) then) =
      __$$_MealsCopyWithImpl<$Res>;
  @override
  $Res call({String name, String cost});
}

/// @nodoc
class __$$_MealsCopyWithImpl<$Res> extends _$MealsCopyWithImpl<$Res>
    implements _$$_MealsCopyWith<$Res> {
  __$$_MealsCopyWithImpl(_$_Meals _value, $Res Function(_$_Meals) _then)
      : super(_value, (v) => _then(v as _$_Meals));

  @override
  _$_Meals get _value => super._value as _$_Meals;

  @override
  $Res call({
    Object? name = freezed,
    Object? cost = freezed,
  }) {
    return _then(_$_Meals(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meals implements _Meals {
  const _$_Meals({required this.name, required this.cost});

  factory _$_Meals.fromJson(Map<String, dynamic> json) => _$$_MealsFromJson(json);

  @override
  final String name;
  @override
  final String cost;

  @override
  String toString() {
    return 'Meals(name: $name, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meals &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.cost, cost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(cost));

  @JsonKey(ignore: true)
  @override
  _$$_MealsCopyWith<_$_Meals> get copyWith => __$$_MealsCopyWithImpl<_$_Meals>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealsToJson(this);
  }
}

abstract class _Meals implements Meals {
  const factory _Meals({required final String name, required final String cost}) = _$_Meals;

  factory _Meals.fromJson(Map<String, dynamic> json) = _$_Meals.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get cost => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MealsCopyWith<_$_Meals> get copyWith => throw _privateConstructorUsedError;
}
