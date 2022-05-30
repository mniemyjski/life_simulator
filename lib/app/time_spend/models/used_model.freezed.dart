// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'used_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Used _$UsedFromJson(Map<String, dynamic> json) {
  return _Busy.fromJson(json);
}

/// @nodoc
mixin _$Used {
  String get id => throw _privateConstructorUsedError;
  DateGame get datCre => throw _privateConstructorUsedError;
  int get hours => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String get int => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsedCopyWith<Used> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsedCopyWith<$Res> {
  factory $UsedCopyWith(Used value, $Res Function(Used) then) =
      _$UsedCopyWithImpl<$Res>;
  $Res call({String id, DateGame datCre, int hours, String source, String int});

  $DateGameCopyWith<$Res> get datCre;
}

/// @nodoc
class _$UsedCopyWithImpl<$Res> implements $UsedCopyWith<$Res> {
  _$UsedCopyWithImpl(this._value, this._then);

  final Used _value;
  // ignore: unused_field
  final $Res Function(Used) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? datCre = freezed,
    Object? hours = freezed,
    Object? source = freezed,
    Object? int = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      datCre: datCre == freezed
          ? _value.datCre
          : datCre // ignore: cast_nullable_to_non_nullable
              as DateGame,
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      int: int == freezed
          ? _value.int
          : int // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $DateGameCopyWith<$Res> get datCre {
    return $DateGameCopyWith<$Res>(_value.datCre, (value) {
      return _then(_value.copyWith(datCre: value));
    });
  }
}

/// @nodoc
abstract class _$$_BusyCopyWith<$Res> implements $UsedCopyWith<$Res> {
  factory _$$_BusyCopyWith(_$_Busy value, $Res Function(_$_Busy) then) =
      __$$_BusyCopyWithImpl<$Res>;
  @override
  $Res call({String id, DateGame datCre, int hours, String source, String int});

  @override
  $DateGameCopyWith<$Res> get datCre;
}

/// @nodoc
class __$$_BusyCopyWithImpl<$Res> extends _$UsedCopyWithImpl<$Res>
    implements _$$_BusyCopyWith<$Res> {
  __$$_BusyCopyWithImpl(_$_Busy _value, $Res Function(_$_Busy) _then)
      : super(_value, (v) => _then(v as _$_Busy));

  @override
  _$_Busy get _value => super._value as _$_Busy;

  @override
  $Res call({
    Object? id = freezed,
    Object? datCre = freezed,
    Object? hours = freezed,
    Object? source = freezed,
    Object? int = freezed,
  }) {
    return _then(_$_Busy(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      datCre: datCre == freezed
          ? _value.datCre
          : datCre // ignore: cast_nullable_to_non_nullable
              as DateGame,
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      int: int == freezed
          ? _value.int
          : int // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Busy implements _Busy {
  const _$_Busy(
      {required this.id,
      required this.datCre,
      required this.hours,
      required this.source,
      required this.int});

  factory _$_Busy.fromJson(Map<String, dynamic> json) => _$$_BusyFromJson(json);

  @override
  final String id;
  @override
  final DateGame datCre;
  @override
  final int hours;
  @override
  final String source;
  @override
  final String int;

  @override
  String toString() {
    return 'Used(id: $id, datCre: $datCre, hours: $hours, source: $source, int: $int)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Busy &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.datCre, datCre) &&
            const DeepCollectionEquality().equals(other.hours, hours) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality().equals(other.int, int));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(datCre),
      const DeepCollectionEquality().hash(hours),
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(int));

  @JsonKey(ignore: true)
  @override
  _$$_BusyCopyWith<_$_Busy> get copyWith =>
      __$$_BusyCopyWithImpl<_$_Busy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusyToJson(this);
  }
}

abstract class _Busy implements Used {
  const factory _Busy(
      {required final String id,
      required final DateGame datCre,
      required final int hours,
      required final String source,
      required final String int}) = _$_Busy;

  factory _Busy.fromJson(Map<String, dynamic> json) = _$_Busy.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  DateGame get datCre => throw _privateConstructorUsedError;
  @override
  int get hours => throw _privateConstructorUsedError;
  @override
  String get source => throw _privateConstructorUsedError;
  @override
  String get int => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BusyCopyWith<_$_Busy> get copyWith => throw _privateConstructorUsedError;
}
