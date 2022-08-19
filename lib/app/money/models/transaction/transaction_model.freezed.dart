// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_model.dart';

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
  double get value => throw _privateConstructorUsedError;
  ETypeTransaction get eTypeTransaction => throw _privateConstructorUsedError;
  ETypeTransactionSource get eTypeTransactionSource =>
      throw _privateConstructorUsedError;
  DateTime get dateCre => throw _privateConstructorUsedError;

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
      double value,
      ETypeTransaction eTypeTransaction,
      ETypeTransactionSource eTypeTransactionSource,
      DateTime dateCre});
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
    Object? value = freezed,
    Object? eTypeTransaction = freezed,
    Object? eTypeTransactionSource = freezed,
    Object? dateCre = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      eTypeTransaction: eTypeTransaction == freezed
          ? _value.eTypeTransaction
          : eTypeTransaction // ignore: cast_nullable_to_non_nullable
              as ETypeTransaction,
      eTypeTransactionSource: eTypeTransactionSource == freezed
          ? _value.eTypeTransactionSource
          : eTypeTransactionSource // ignore: cast_nullable_to_non_nullable
              as ETypeTransactionSource,
      dateCre: dateCre == freezed
          ? _value.dateCre
          : dateCre // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
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
      double value,
      ETypeTransaction eTypeTransaction,
      ETypeTransactionSource eTypeTransactionSource,
      DateTime dateCre});
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
    Object? value = freezed,
    Object? eTypeTransaction = freezed,
    Object? eTypeTransactionSource = freezed,
    Object? dateCre = freezed,
  }) {
    return _then(_$_Transaction(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      eTypeTransaction: eTypeTransaction == freezed
          ? _value.eTypeTransaction
          : eTypeTransaction // ignore: cast_nullable_to_non_nullable
              as ETypeTransaction,
      eTypeTransactionSource: eTypeTransactionSource == freezed
          ? _value.eTypeTransactionSource
          : eTypeTransactionSource // ignore: cast_nullable_to_non_nullable
              as ETypeTransactionSource,
      dateCre: dateCre == freezed
          ? _value.dateCre
          : dateCre // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction implements _Transaction {
  const _$_Transaction(
      {required this.id,
      required this.value,
      required this.eTypeTransaction,
      required this.eTypeTransactionSource,
      required this.dateCre});

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  final String id;
  @override
  final double value;
  @override
  final ETypeTransaction eTypeTransaction;
  @override
  final ETypeTransactionSource eTypeTransactionSource;
  @override
  final DateTime dateCre;

  @override
  String toString() {
    return 'Transaction(id: $id, value: $value, eTypeTransaction: $eTypeTransaction, eTypeTransactionSource: $eTypeTransactionSource, dateCre: $dateCre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.eTypeTransaction, eTypeTransaction) &&
            const DeepCollectionEquality()
                .equals(other.eTypeTransactionSource, eTypeTransactionSource) &&
            const DeepCollectionEquality().equals(other.dateCre, dateCre));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(eTypeTransaction),
      const DeepCollectionEquality().hash(eTypeTransactionSource),
      const DeepCollectionEquality().hash(dateCre));

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
      required final double value,
      required final ETypeTransaction eTypeTransaction,
      required final ETypeTransactionSource eTypeTransactionSource,
      required final DateTime dateCre}) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  double get value => throw _privateConstructorUsedError;
  @override
  ETypeTransaction get eTypeTransaction => throw _privateConstructorUsedError;
  @override
  ETypeTransactionSource get eTypeTransactionSource =>
      throw _privateConstructorUsedError;
  @override
  DateTime get dateCre => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
