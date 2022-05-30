// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'date_game_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DateGame _$DateGameFromJson(Map<String, dynamic> json) {
  return _DateGame.fromJson(json);
}

/// @nodoc
mixin _$DateGame {
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateGameCopyWith<DateGame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateGameCopyWith<$Res> {
  factory $DateGameCopyWith(DateGame value, $Res Function(DateGame) then) =
      _$DateGameCopyWithImpl<$Res>;
  $Res call({int year, int month, int day});
}

/// @nodoc
class _$DateGameCopyWithImpl<$Res> implements $DateGameCopyWith<$Res> {
  _$DateGameCopyWithImpl(this._value, this._then);

  final DateGame _value;
  // ignore: unused_field
  final $Res Function(DateGame) _then;

  @override
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
    Object? day = freezed,
  }) {
    return _then(_value.copyWith(
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_DateGameCopyWith<$Res> implements $DateGameCopyWith<$Res> {
  factory _$$_DateGameCopyWith(
          _$_DateGame value, $Res Function(_$_DateGame) then) =
      __$$_DateGameCopyWithImpl<$Res>;
  @override
  $Res call({int year, int month, int day});
}

/// @nodoc
class __$$_DateGameCopyWithImpl<$Res> extends _$DateGameCopyWithImpl<$Res>
    implements _$$_DateGameCopyWith<$Res> {
  __$$_DateGameCopyWithImpl(
      _$_DateGame _value, $Res Function(_$_DateGame) _then)
      : super(_value, (v) => _then(v as _$_DateGame));

  @override
  _$_DateGame get _value => super._value as _$_DateGame;

  @override
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
    Object? day = freezed,
  }) {
    return _then(_$_DateGame(
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DateGame implements _DateGame {
  const _$_DateGame(
      {required this.year, required this.month, required this.day});

  factory _$_DateGame.fromJson(Map<String, dynamic> json) =>
      _$$_DateGameFromJson(json);

  @override
  final int year;
  @override
  final int month;
  @override
  final int day;

  @override
  String toString() {
    return 'DateGame(year: $year, month: $month, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateGame &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.day, day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(day));

  @JsonKey(ignore: true)
  @override
  _$$_DateGameCopyWith<_$_DateGame> get copyWith =>
      __$$_DateGameCopyWithImpl<_$_DateGame>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DateGameToJson(this);
  }
}

abstract class _DateGame implements DateGame {
  const factory _DateGame(
      {required final int year,
      required final int month,
      required final int day}) = _$_DateGame;

  factory _DateGame.fromJson(Map<String, dynamic> json) = _$_DateGame.fromJson;

  @override
  int get year => throw _privateConstructorUsedError;
  @override
  int get month => throw _privateConstructorUsedError;
  @override
  int get day => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DateGameCopyWith<_$_DateGame> get copyWith =>
      throw _privateConstructorUsedError;
}
