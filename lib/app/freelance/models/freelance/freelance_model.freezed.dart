// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'freelance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Freelance _$FreelanceFromJson(Map<String, dynamic> json) {
  return _Freelance.fromJson(json);
}

/// @nodoc
mixin _$Freelance {
  int get fame => throw _privateConstructorUsedError;
  List<FreelanceWork> get works => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreelanceCopyWith<Freelance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreelanceCopyWith<$Res> {
  factory $FreelanceCopyWith(Freelance value, $Res Function(Freelance) then) =
      _$FreelanceCopyWithImpl<$Res>;
  $Res call({int fame, List<FreelanceWork> works});
}

/// @nodoc
class _$FreelanceCopyWithImpl<$Res> implements $FreelanceCopyWith<$Res> {
  _$FreelanceCopyWithImpl(this._value, this._then);

  final Freelance _value;
  // ignore: unused_field
  final $Res Function(Freelance) _then;

  @override
  $Res call({
    Object? fame = freezed,
    Object? works = freezed,
  }) {
    return _then(_value.copyWith(
      fame: fame == freezed
          ? _value.fame
          : fame // ignore: cast_nullable_to_non_nullable
              as int,
      works: works == freezed
          ? _value.works
          : works // ignore: cast_nullable_to_non_nullable
              as List<FreelanceWork>,
    ));
  }
}

/// @nodoc
abstract class _$$_FreelanceCopyWith<$Res> implements $FreelanceCopyWith<$Res> {
  factory _$$_FreelanceCopyWith(
          _$_Freelance value, $Res Function(_$_Freelance) then) =
      __$$_FreelanceCopyWithImpl<$Res>;
  @override
  $Res call({int fame, List<FreelanceWork> works});
}

/// @nodoc
class __$$_FreelanceCopyWithImpl<$Res> extends _$FreelanceCopyWithImpl<$Res>
    implements _$$_FreelanceCopyWith<$Res> {
  __$$_FreelanceCopyWithImpl(
      _$_Freelance _value, $Res Function(_$_Freelance) _then)
      : super(_value, (v) => _then(v as _$_Freelance));

  @override
  _$_Freelance get _value => super._value as _$_Freelance;

  @override
  $Res call({
    Object? fame = freezed,
    Object? works = freezed,
  }) {
    return _then(_$_Freelance(
      fame: fame == freezed
          ? _value.fame
          : fame // ignore: cast_nullable_to_non_nullable
              as int,
      works: works == freezed
          ? _value._works
          : works // ignore: cast_nullable_to_non_nullable
              as List<FreelanceWork>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Freelance implements _Freelance {
  const _$_Freelance(
      {required this.fame, required final List<FreelanceWork> works})
      : _works = works;

  factory _$_Freelance.fromJson(Map<String, dynamic> json) =>
      _$$_FreelanceFromJson(json);

  @override
  final int fame;
  final List<FreelanceWork> _works;
  @override
  List<FreelanceWork> get works {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_works);
  }

  @override
  String toString() {
    return 'Freelance(fame: $fame, works: $works)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Freelance &&
            const DeepCollectionEquality().equals(other.fame, fame) &&
            const DeepCollectionEquality().equals(other._works, _works));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fame),
      const DeepCollectionEquality().hash(_works));

  @JsonKey(ignore: true)
  @override
  _$$_FreelanceCopyWith<_$_Freelance> get copyWith =>
      __$$_FreelanceCopyWithImpl<_$_Freelance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FreelanceToJson(this);
  }
}

abstract class _Freelance implements Freelance {
  const factory _Freelance(
      {required final int fame,
      required final List<FreelanceWork> works}) = _$_Freelance;

  factory _Freelance.fromJson(Map<String, dynamic> json) =
      _$_Freelance.fromJson;

  @override
  int get fame => throw _privateConstructorUsedError;
  @override
  List<FreelanceWork> get works => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FreelanceCopyWith<_$_Freelance> get copyWith =>
      throw _privateConstructorUsedError;
}
