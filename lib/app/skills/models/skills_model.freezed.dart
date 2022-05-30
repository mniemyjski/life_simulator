// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'skills_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Skill _$SkillFromJson(Map<String, dynamic> json) {
  return _Skills.fromJson(json);
}

/// @nodoc
mixin _$Skill {
  ETypeSkills get name => throw _privateConstructorUsedError;
  int get exp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillCopyWith<Skill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillCopyWith<$Res> {
  factory $SkillCopyWith(Skill value, $Res Function(Skill) then) =
      _$SkillCopyWithImpl<$Res>;
  $Res call({ETypeSkills name, int exp});
}

/// @nodoc
class _$SkillCopyWithImpl<$Res> implements $SkillCopyWith<$Res> {
  _$SkillCopyWithImpl(this._value, this._then);

  final Skill _value;
  // ignore: unused_field
  final $Res Function(Skill) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? exp = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ETypeSkills,
      exp: exp == freezed
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SkillsCopyWith<$Res> implements $SkillCopyWith<$Res> {
  factory _$$_SkillsCopyWith(_$_Skills value, $Res Function(_$_Skills) then) =
      __$$_SkillsCopyWithImpl<$Res>;
  @override
  $Res call({ETypeSkills name, int exp});
}

/// @nodoc
class __$$_SkillsCopyWithImpl<$Res> extends _$SkillCopyWithImpl<$Res>
    implements _$$_SkillsCopyWith<$Res> {
  __$$_SkillsCopyWithImpl(_$_Skills _value, $Res Function(_$_Skills) _then)
      : super(_value, (v) => _then(v as _$_Skills));

  @override
  _$_Skills get _value => super._value as _$_Skills;

  @override
  $Res call({
    Object? name = freezed,
    Object? exp = freezed,
  }) {
    return _then(_$_Skills(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ETypeSkills,
      exp: exp == freezed
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Skills implements _Skills {
  const _$_Skills({required this.name, required this.exp});

  factory _$_Skills.fromJson(Map<String, dynamic> json) =>
      _$$_SkillsFromJson(json);

  @override
  final ETypeSkills name;
  @override
  final int exp;

  @override
  String toString() {
    return 'Skill(name: $name, exp: $exp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Skills &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.exp, exp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(exp));

  @JsonKey(ignore: true)
  @override
  _$$_SkillsCopyWith<_$_Skills> get copyWith =>
      __$$_SkillsCopyWithImpl<_$_Skills>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SkillsToJson(this);
  }
}

abstract class _Skills implements Skill {
  const factory _Skills(
      {required final ETypeSkills name, required final int exp}) = _$_Skills;

  factory _Skills.fromJson(Map<String, dynamic> json) = _$_Skills.fromJson;

  @override
  ETypeSkills get name => throw _privateConstructorUsedError;
  @override
  int get exp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SkillsCopyWith<_$_Skills> get copyWith =>
      throw _privateConstructorUsedError;
}
