// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tutorial_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tutorial _$TutorialFromJson(Map<String, dynamic> json) {
  return _Tutorial.fromJson(json);
}

/// @nodoc
mixin _$Tutorial {
  bool get main => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorialCopyWith<Tutorial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialCopyWith<$Res> {
  factory $TutorialCopyWith(Tutorial value, $Res Function(Tutorial) then) =
      _$TutorialCopyWithImpl<$Res, Tutorial>;
  @useResult
  $Res call({bool main});
}

/// @nodoc
class _$TutorialCopyWithImpl<$Res, $Val extends Tutorial>
    implements $TutorialCopyWith<$Res> {
  _$TutorialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
  }) {
    return _then(_value.copyWith(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TutorialCopyWith<$Res> implements $TutorialCopyWith<$Res> {
  factory _$$_TutorialCopyWith(
          _$_Tutorial value, $Res Function(_$_Tutorial) then) =
      __$$_TutorialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool main});
}

/// @nodoc
class __$$_TutorialCopyWithImpl<$Res>
    extends _$TutorialCopyWithImpl<$Res, _$_Tutorial>
    implements _$$_TutorialCopyWith<$Res> {
  __$$_TutorialCopyWithImpl(
      _$_Tutorial _value, $Res Function(_$_Tutorial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
  }) {
    return _then(_$_Tutorial(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tutorial implements _Tutorial {
  const _$_Tutorial({this.main = false});

  factory _$_Tutorial.fromJson(Map<String, dynamic> json) =>
      _$$_TutorialFromJson(json);

  @override
  @JsonKey()
  final bool main;

  @override
  String toString() {
    return 'Tutorial(main: $main)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tutorial &&
            (identical(other.main, main) || other.main == main));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, main);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TutorialCopyWith<_$_Tutorial> get copyWith =>
      __$$_TutorialCopyWithImpl<_$_Tutorial>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorialToJson(
      this,
    );
  }
}

abstract class _Tutorial implements Tutorial {
  const factory _Tutorial({final bool main}) = _$_Tutorial;

  factory _Tutorial.fromJson(Map<String, dynamic> json) = _$_Tutorial.fromJson;

  @override
  bool get main;
  @override
  @JsonKey(ignore: true)
  _$$_TutorialCopyWith<_$_Tutorial> get copyWith =>
      throw _privateConstructorUsedError;
}
