// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  String get id => throw _privateConstructorUsedError;
  Instrument get instrument => throw _privateConstructorUsedError;
  double get count => throw _privateConstructorUsedError;
  DateTime get datCre => throw _privateConstructorUsedError;
  bool get close => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call(
      {String id,
      Instrument instrument,
      double count,
      DateTime datCre,
      bool close});

  $InstrumentCopyWith<$Res> get instrument;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? instrument = freezed,
    Object? count = freezed,
    Object? datCre = freezed,
    Object? close = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      instrument: instrument == freezed
          ? _value.instrument
          : instrument // ignore: cast_nullable_to_non_nullable
              as Instrument,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as double,
      datCre: datCre == freezed
          ? _value.datCre
          : datCre // ignore: cast_nullable_to_non_nullable
              as DateTime,
      close: close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $InstrumentCopyWith<$Res> get instrument {
    return $InstrumentCopyWith<$Res>(_value.instrument, (value) {
      return _then(_value.copyWith(instrument: value));
    });
  }
}

/// @nodoc
abstract class _$$_TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      Instrument instrument,
      double count,
      DateTime datCre,
      bool close});

  @override
  $InstrumentCopyWith<$Res> get instrument;
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, (v) => _then(v as _$_Transaction));

  @override
  _$_Transaction get _value => super._value as _$_Transaction;

  @override
  $Res call({
    Object? id = freezed,
    Object? instrument = freezed,
    Object? count = freezed,
    Object? datCre = freezed,
    Object? close = freezed,
  }) {
    return _then(_$_Transaction(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      instrument: instrument == freezed
          ? _value.instrument
          : instrument // ignore: cast_nullable_to_non_nullable
              as Instrument,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as double,
      datCre: datCre == freezed
          ? _value.datCre
          : datCre // ignore: cast_nullable_to_non_nullable
              as DateTime,
      close: close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction implements _Transaction {
  const _$_Transaction(
      {required this.id,
      required this.instrument,
      required this.count,
      required this.datCre,
      this.close = false});

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  final String id;
  @override
  final Instrument instrument;
  @override
  final double count;
  @override
  final DateTime datCre;
  @override
  @JsonKey()
  final bool close;

  @override
  String toString() {
    return 'Transaction(id: $id, instrument: $instrument, count: $count, datCre: $datCre, close: $close)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.instrument, instrument) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.datCre, datCre) &&
            const DeepCollectionEquality().equals(other.close, close));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(instrument),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(datCre),
      const DeepCollectionEquality().hash(close));

  @JsonKey(ignore: true)
  @override
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(this);
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {required final String id,
      required final Instrument instrument,
      required final double count,
      required final DateTime datCre,
      final bool close}) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  Instrument get instrument => throw _privateConstructorUsedError;
  @override
  double get count => throw _privateConstructorUsedError;
  @override
  DateTime get datCre => throw _privateConstructorUsedError;
  @override
  bool get close => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
