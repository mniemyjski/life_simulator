// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sum_transactions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SumTransactions _$SumTransactionsFromJson(Map<String, dynamic> json) {
  return _SumTransactions.fromJson(json);
}

/// @nodoc
mixin _$SumTransactions {
  ETypeTransactionSource get eTypeTransactionSource =>
      throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SumTransactionsCopyWith<SumTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SumTransactionsCopyWith<$Res> {
  factory $SumTransactionsCopyWith(
          SumTransactions value, $Res Function(SumTransactions) then) =
      _$SumTransactionsCopyWithImpl<$Res, SumTransactions>;
  @useResult
  $Res call({ETypeTransactionSource eTypeTransactionSource, double value});
}

/// @nodoc
class _$SumTransactionsCopyWithImpl<$Res, $Val extends SumTransactions>
    implements $SumTransactionsCopyWith<$Res> {
  _$SumTransactionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eTypeTransactionSource = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      eTypeTransactionSource: null == eTypeTransactionSource
          ? _value.eTypeTransactionSource
          : eTypeTransactionSource // ignore: cast_nullable_to_non_nullable
              as ETypeTransactionSource,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SumTransactionsCopyWith<$Res>
    implements $SumTransactionsCopyWith<$Res> {
  factory _$$_SumTransactionsCopyWith(
          _$_SumTransactions value, $Res Function(_$_SumTransactions) then) =
      __$$_SumTransactionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ETypeTransactionSource eTypeTransactionSource, double value});
}

/// @nodoc
class __$$_SumTransactionsCopyWithImpl<$Res>
    extends _$SumTransactionsCopyWithImpl<$Res, _$_SumTransactions>
    implements _$$_SumTransactionsCopyWith<$Res> {
  __$$_SumTransactionsCopyWithImpl(
      _$_SumTransactions _value, $Res Function(_$_SumTransactions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eTypeTransactionSource = null,
    Object? value = null,
  }) {
    return _then(_$_SumTransactions(
      eTypeTransactionSource: null == eTypeTransactionSource
          ? _value.eTypeTransactionSource
          : eTypeTransactionSource // ignore: cast_nullable_to_non_nullable
              as ETypeTransactionSource,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SumTransactions implements _SumTransactions {
  const _$_SumTransactions(
      {required this.eTypeTransactionSource, required this.value});

  factory _$_SumTransactions.fromJson(Map<String, dynamic> json) =>
      _$$_SumTransactionsFromJson(json);

  @override
  final ETypeTransactionSource eTypeTransactionSource;
  @override
  final double value;

  @override
  String toString() {
    return 'SumTransactions(eTypeTransactionSource: $eTypeTransactionSource, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SumTransactions &&
            (identical(other.eTypeTransactionSource, eTypeTransactionSource) ||
                other.eTypeTransactionSource == eTypeTransactionSource) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eTypeTransactionSource, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SumTransactionsCopyWith<_$_SumTransactions> get copyWith =>
      __$$_SumTransactionsCopyWithImpl<_$_SumTransactions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SumTransactionsToJson(
      this,
    );
  }
}

abstract class _SumTransactions implements SumTransactions {
  const factory _SumTransactions(
      {required final ETypeTransactionSource eTypeTransactionSource,
      required final double value}) = _$_SumTransactions;

  factory _SumTransactions.fromJson(Map<String, dynamic> json) =
      _$_SumTransactions.fromJson;

  @override
  ETypeTransactionSource get eTypeTransactionSource;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$_SumTransactionsCopyWith<_$_SumTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}
