// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'candle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Candle _$CandleFromJson(Map<String, dynamic> json) {
  return _Candle.fromJson(json);
}

/// @nodoc
mixin _$Candle {
  DateTime get dateTime => throw _privateConstructorUsedError;
  double get open => throw _privateConstructorUsedError;
  double get high => throw _privateConstructorUsedError;
  double get low => throw _privateConstructorUsedError;
  double get close => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CandleCopyWith<Candle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandleCopyWith<$Res> {
  factory $CandleCopyWith(Candle value, $Res Function(Candle) then) =
      _$CandleCopyWithImpl<$Res>;
  $Res call(
      {DateTime dateTime, double open, double high, double low, double close});
}

/// @nodoc
class _$CandleCopyWithImpl<$Res> implements $CandleCopyWith<$Res> {
  _$CandleCopyWithImpl(this._value, this._then);

  final Candle _value;
  // ignore: unused_field
  final $Res Function(Candle) _then;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? open = freezed,
    Object? high = freezed,
    Object? low = freezed,
    Object? close = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as double,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      low: low == freezed
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      close: close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_CandleCopyWith<$Res> implements $CandleCopyWith<$Res> {
  factory _$$_CandleCopyWith(_$_Candle value, $Res Function(_$_Candle) then) =
      __$$_CandleCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime dateTime, double open, double high, double low, double close});
}

/// @nodoc
class __$$_CandleCopyWithImpl<$Res> extends _$CandleCopyWithImpl<$Res>
    implements _$$_CandleCopyWith<$Res> {
  __$$_CandleCopyWithImpl(_$_Candle _value, $Res Function(_$_Candle) _then)
      : super(_value, (v) => _then(v as _$_Candle));

  @override
  _$_Candle get _value => super._value as _$_Candle;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? open = freezed,
    Object? high = freezed,
    Object? low = freezed,
    Object? close = freezed,
  }) {
    return _then(_$_Candle(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as double,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double,
      low: low == freezed
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double,
      close: close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Candle implements _Candle {
  const _$_Candle(
      {required this.dateTime,
      required this.open,
      required this.high,
      required this.low,
      required this.close});

  factory _$_Candle.fromJson(Map<String, dynamic> json) =>
      _$$_CandleFromJson(json);

  @override
  final DateTime dateTime;
  @override
  final double open;
  @override
  final double high;
  @override
  final double low;
  @override
  final double close;

  @override
  String toString() {
    return 'Candle(dateTime: $dateTime, open: $open, high: $high, low: $low, close: $close)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Candle &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.open, open) &&
            const DeepCollectionEquality().equals(other.high, high) &&
            const DeepCollectionEquality().equals(other.low, low) &&
            const DeepCollectionEquality().equals(other.close, close));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(open),
      const DeepCollectionEquality().hash(high),
      const DeepCollectionEquality().hash(low),
      const DeepCollectionEquality().hash(close));

  @JsonKey(ignore: true)
  @override
  _$$_CandleCopyWith<_$_Candle> get copyWith =>
      __$$_CandleCopyWithImpl<_$_Candle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CandleToJson(
      this,
    );
  }
}

abstract class _Candle implements Candle {
  const factory _Candle(
      {required final DateTime dateTime,
      required final double open,
      required final double high,
      required final double low,
      required final double close}) = _$_Candle;

  factory _Candle.fromJson(Map<String, dynamic> json) = _$_Candle.fromJson;

  @override
  DateTime get dateTime;
  @override
  double get open;
  @override
  double get high;
  @override
  double get low;
  @override
  double get close;
  @override
  @JsonKey(ignore: true)
  _$$_CandleCopyWith<_$_Candle> get copyWith =>
      throw _privateConstructorUsedError;
}
