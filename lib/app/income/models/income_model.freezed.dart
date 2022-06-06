// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'income_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Income _$IncomeFromJson(Map<String, dynamic> json) {
  return _Income.fromJson(json);
}

/// @nodoc
mixin _$Income {
  String get id => throw _privateConstructorUsedError;
  ETypeSource get source => throw _privateConstructorUsedError;
  ETypeIncome get typeIncome => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  int get interval => throw _privateConstructorUsedError;
  int get timeLeft => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncomeCopyWith<Income> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeCopyWith<$Res> {
  factory $IncomeCopyWith(Income value, $Res Function(Income) then) =
      _$IncomeCopyWithImpl<$Res>;
  $Res call(
      {String id,
      ETypeSource source,
      ETypeIncome typeIncome,
      double value,
      int interval,
      int timeLeft});
}

/// @nodoc
class _$IncomeCopyWithImpl<$Res> implements $IncomeCopyWith<$Res> {
  _$IncomeCopyWithImpl(this._value, this._then);

  final Income _value;
  // ignore: unused_field
  final $Res Function(Income) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? source = freezed,
    Object? typeIncome = freezed,
    Object? value = freezed,
    Object? interval = freezed,
    Object? timeLeft = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ETypeSource,
      typeIncome: typeIncome == freezed
          ? _value.typeIncome
          : typeIncome // ignore: cast_nullable_to_non_nullable
              as ETypeIncome,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      interval: interval == freezed
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int,
      timeLeft: timeLeft == freezed
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_IncomeCopyWith<$Res> implements $IncomeCopyWith<$Res> {
  factory _$$_IncomeCopyWith(_$_Income value, $Res Function(_$_Income) then) =
      __$$_IncomeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      ETypeSource source,
      ETypeIncome typeIncome,
      double value,
      int interval,
      int timeLeft});
}

/// @nodoc
class __$$_IncomeCopyWithImpl<$Res> extends _$IncomeCopyWithImpl<$Res>
    implements _$$_IncomeCopyWith<$Res> {
  __$$_IncomeCopyWithImpl(_$_Income _value, $Res Function(_$_Income) _then)
      : super(_value, (v) => _then(v as _$_Income));

  @override
  _$_Income get _value => super._value as _$_Income;

  @override
  $Res call({
    Object? id = freezed,
    Object? source = freezed,
    Object? typeIncome = freezed,
    Object? value = freezed,
    Object? interval = freezed,
    Object? timeLeft = freezed,
  }) {
    return _then(_$_Income(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ETypeSource,
      typeIncome: typeIncome == freezed
          ? _value.typeIncome
          : typeIncome // ignore: cast_nullable_to_non_nullable
              as ETypeIncome,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      interval: interval == freezed
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int,
      timeLeft: timeLeft == freezed
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Income implements _Income {
  const _$_Income(
      {required this.id,
      required this.source,
      required this.typeIncome,
      required this.value,
      required this.interval,
      required this.timeLeft});

  factory _$_Income.fromJson(Map<String, dynamic> json) =>
      _$$_IncomeFromJson(json);

  @override
  final String id;
  @override
  final ETypeSource source;
  @override
  final ETypeIncome typeIncome;
  @override
  final double value;
  @override
  final int interval;
  @override
  final int timeLeft;

  @override
  String toString() {
    return 'Income(id: $id, source: $source, typeIncome: $typeIncome, value: $value, interval: $interval, timeLeft: $timeLeft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Income &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality()
                .equals(other.typeIncome, typeIncome) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.interval, interval) &&
            const DeepCollectionEquality().equals(other.timeLeft, timeLeft));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(source),
      const DeepCollectionEquality().hash(typeIncome),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(interval),
      const DeepCollectionEquality().hash(timeLeft));

  @JsonKey(ignore: true)
  @override
  _$$_IncomeCopyWith<_$_Income> get copyWith =>
      __$$_IncomeCopyWithImpl<_$_Income>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IncomeToJson(this);
  }
}

abstract class _Income implements Income {
  const factory _Income(
      {required final String id,
      required final ETypeSource source,
      required final ETypeIncome typeIncome,
      required final double value,
      required final int interval,
      required final int timeLeft}) = _$_Income;

  factory _Income.fromJson(Map<String, dynamic> json) = _$_Income.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  ETypeSource get source => throw _privateConstructorUsedError;
  @override
  ETypeIncome get typeIncome => throw _privateConstructorUsedError;
  @override
  double get value => throw _privateConstructorUsedError;
  @override
  int get interval => throw _privateConstructorUsedError;
  @override
  int get timeLeft => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IncomeCopyWith<_$_Income> get copyWith =>
      throw _privateConstructorUsedError;
}
