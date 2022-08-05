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
  ETypeStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningCopyWith<Learning> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningCopyWith<$Res> {
  factory $LearningCopyWith(Learning value, $Res Function(Learning) then) =
      _$LearningCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      ETypeSkills skillType,
      int baseTime,
      int exp,
      int time,
      double cost,
      ETypeStatus status});
}

/// @nodoc
class _$LearningCopyWithImpl<$Res> implements $LearningCopyWith<$Res> {
  _$LearningCopyWithImpl(this._value, this._then);

  final Learning _value;
  // ignore: unused_field
  final $Res Function(Learning) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? skillType = freezed,
    Object? baseTime = freezed,
    Object? exp = freezed,
    Object? time = freezed,
    Object? cost = freezed,
    Object? status = freezed,
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
      skillType: skillType == freezed
          ? _value.skillType
          : skillType // ignore: cast_nullable_to_non_nullable
              as ETypeSkills,
      baseTime: baseTime == freezed
          ? _value.baseTime
          : baseTime // ignore: cast_nullable_to_non_nullable
              as int,
      exp: exp == freezed
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ETypeStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_LearningCopyWith<$Res> implements $LearningCopyWith<$Res> {
  factory _$$_LearningCopyWith(
          _$_Learning value, $Res Function(_$_Learning) then) =
      __$$_LearningCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      ETypeSkills skillType,
      int baseTime,
      int exp,
      int time,
      double cost,
      ETypeStatus status});
}

/// @nodoc
class __$$_LearningCopyWithImpl<$Res> extends _$LearningCopyWithImpl<$Res>
    implements _$$_LearningCopyWith<$Res> {
  __$$_LearningCopyWithImpl(
      _$_Learning _value, $Res Function(_$_Learning) _then)
      : super(_value, (v) => _then(v as _$_Learning));

  @override
  _$_Learning get _value => super._value as _$_Learning;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? skillType = freezed,
    Object? baseTime = freezed,
    Object? exp = freezed,
    Object? time = freezed,
    Object? cost = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_Learning(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      skillType: skillType == freezed
          ? _value.skillType
          : skillType // ignore: cast_nullable_to_non_nullable
              as ETypeSkills,
      baseTime: baseTime == freezed
          ? _value.baseTime
          : baseTime // ignore: cast_nullable_to_non_nullable
              as int,
      exp: exp == freezed
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ETypeStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Learning implements _Learning {
  const _$_Learning(
      {required this.id,
      required this.name,
      required this.skillType,
      required this.baseTime,
      required this.exp,
      required this.time,
      required this.cost,
      this.status = ETypeStatus.base});

  factory _$_Learning.fromJson(Map<String, dynamic> json) =>
      _$$_LearningFromJson(json);

  @override
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
  @JsonKey()
  final ETypeStatus status;

  @override
  String toString() {
    return 'Learning(id: $id, name: $name, skillType: $skillType, baseTime: $baseTime, exp: $exp, time: $time, cost: $cost, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Learning &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.skillType, skillType) &&
            const DeepCollectionEquality().equals(other.baseTime, baseTime) &&
            const DeepCollectionEquality().equals(other.exp, exp) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(skillType),
      const DeepCollectionEquality().hash(baseTime),
      const DeepCollectionEquality().hash(exp),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_LearningCopyWith<_$_Learning> get copyWith =>
      __$$_LearningCopyWithImpl<_$_Learning>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningToJson(this);
  }
}

abstract class _Learning implements Learning {
  const factory _Learning(
      {required final String id,
      required final String name,
      required final ETypeSkills skillType,
      required final int baseTime,
      required final int exp,
      required final int time,
      required final double cost,
      final ETypeStatus status}) = _$_Learning;

  factory _Learning.fromJson(Map<String, dynamic> json) = _$_Learning.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  ETypeSkills get skillType => throw _privateConstructorUsedError;
  @override
  int get baseTime => throw _privateConstructorUsedError;
  @override
  int get exp => throw _privateConstructorUsedError;
  @override
  int get time => throw _privateConstructorUsedError;
  @override
  double get cost => throw _privateConstructorUsedError;
  @override
  ETypeStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LearningCopyWith<_$_Learning> get copyWith =>
      throw _privateConstructorUsedError;
}
