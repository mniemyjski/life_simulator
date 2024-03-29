// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'learning_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Learning _$LearningFromJson(Map<String, dynamic> json) {
  return _Learning.fromJson(json);
}

/// @nodoc
mixin _$Learning {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ETypeSkills get skillType => throw _privateConstructorUsedError;
  int get baseTime => throw _privateConstructorUsedError;
  int get exp => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningCopyWith<Learning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningCopyWith<$Res> {
  factory $LearningCopyWith(Learning value, $Res Function(Learning) then) =
      _$LearningCopyWithImpl<$Res, Learning>;
  @useResult
  $Res call(
      {String id,
      String name,
      ETypeSkills skillType,
      int baseTime,
      int exp,
      int time,
      double cost});
}

/// @nodoc
class _$LearningCopyWithImpl<$Res, $Val extends Learning>
    implements $LearningCopyWith<$Res> {
  _$LearningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? skillType = null,
    Object? baseTime = null,
    Object? exp = null,
    Object? time = null,
    Object? cost = null,
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
      skillType: null == skillType
          ? _value.skillType
          : skillType // ignore: cast_nullable_to_non_nullable
              as ETypeSkills,
      baseTime: null == baseTime
          ? _value.baseTime
          : baseTime // ignore: cast_nullable_to_non_nullable
              as int,
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LearningCopyWith<$Res> implements $LearningCopyWith<$Res> {
  factory _$$_LearningCopyWith(
          _$_Learning value, $Res Function(_$_Learning) then) =
      __$$_LearningCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      ETypeSkills skillType,
      int baseTime,
      int exp,
      int time,
      double cost});
}

/// @nodoc
class __$$_LearningCopyWithImpl<$Res>
    extends _$LearningCopyWithImpl<$Res, _$_Learning>
    implements _$$_LearningCopyWith<$Res> {
  __$$_LearningCopyWithImpl(
      _$_Learning _value, $Res Function(_$_Learning) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? skillType = null,
    Object? baseTime = null,
    Object? exp = null,
    Object? time = null,
    Object? cost = null,
  }) {
    return _then(_$_Learning(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      skillType: null == skillType
          ? _value.skillType
          : skillType // ignore: cast_nullable_to_non_nullable
              as ETypeSkills,
      baseTime: null == baseTime
          ? _value.baseTime
          : baseTime // ignore: cast_nullable_to_non_nullable
              as int,
      exp: null == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Learning implements _Learning {
  const _$_Learning(
      {this.id = '0',
      required this.name,
      required this.skillType,
      required this.baseTime,
      required this.exp,
      required this.time,
      required this.cost});

  factory _$_Learning.fromJson(Map<String, dynamic> json) =>
      _$$_LearningFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  final String name;
  @override
  final ETypeSkills skillType;
  @override
  final int baseTime;
  @override
  final int exp;
  @override
  final int time;
  @override
  final double cost;

  @override
  String toString() {
    return 'Learning(id: $id, name: $name, skillType: $skillType, baseTime: $baseTime, exp: $exp, time: $time, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Learning &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.skillType, skillType) ||
                other.skillType == skillType) &&
            (identical(other.baseTime, baseTime) ||
                other.baseTime == baseTime) &&
            (identical(other.exp, exp) || other.exp == exp) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, skillType, baseTime, exp, time, cost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningCopyWith<_$_Learning> get copyWith =>
      __$$_LearningCopyWithImpl<_$_Learning>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningToJson(
      this,
    );
  }
}

abstract class _Learning implements Learning {
  const factory _Learning(
      {final String id,
      required final String name,
      required final ETypeSkills skillType,
      required final int baseTime,
      required final int exp,
      required final int time,
      required final double cost}) = _$_Learning;

  factory _Learning.fromJson(Map<String, dynamic> json) = _$_Learning.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  ETypeSkills get skillType;
  @override
  int get baseTime;
  @override
  int get exp;
  @override
  int get time;
  @override
  double get cost;
  @override
  @JsonKey(ignore: true)
  _$$_LearningCopyWith<_$_Learning> get copyWith =>
      throw _privateConstructorUsedError;
}
