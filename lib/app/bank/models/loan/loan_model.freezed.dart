// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'loan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Loan _$LoanFromJson(Map<String, dynamic> json) {
  return _Loan.fromJson(json);
}

/// @nodoc
mixin _$Loan {
  double get value => throw _privateConstructorUsedError;
  double get interest => throw _privateConstructorUsedError;
  int get turns => throw _privateConstructorUsedError;
  int get turnsToEnd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanCopyWith<Loan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanCopyWith<$Res> {
  factory $LoanCopyWith(Loan value, $Res Function(Loan) then) =
      _$LoanCopyWithImpl<$Res>;
  $Res call({double value, double interest, int turns, int turnsToEnd});
}

/// @nodoc
class _$LoanCopyWithImpl<$Res> implements $LoanCopyWith<$Res> {
  _$LoanCopyWithImpl(this._value, this._then);

  final Loan _value;
  // ignore: unused_field
  final $Res Function(Loan) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? interest = freezed,
    Object? turns = freezed,
    Object? turnsToEnd = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      interest: interest == freezed
          ? _value.interest
          : interest // ignore: cast_nullable_to_non_nullable
              as double,
      turns: turns == freezed
          ? _value.turns
          : turns // ignore: cast_nullable_to_non_nullable
              as int,
      turnsToEnd: turnsToEnd == freezed
          ? _value.turnsToEnd
          : turnsToEnd // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_LoanCopyWith<$Res> implements $LoanCopyWith<$Res> {
  factory _$$_LoanCopyWith(_$_Loan value, $Res Function(_$_Loan) then) =
      __$$_LoanCopyWithImpl<$Res>;
  @override
  $Res call({double value, double interest, int turns, int turnsToEnd});
}

/// @nodoc
class __$$_LoanCopyWithImpl<$Res> extends _$LoanCopyWithImpl<$Res>
    implements _$$_LoanCopyWith<$Res> {
  __$$_LoanCopyWithImpl(_$_Loan _value, $Res Function(_$_Loan) _then)
      : super(_value, (v) => _then(v as _$_Loan));

  @override
  _$_Loan get _value => super._value as _$_Loan;

  @override
  $Res call({
    Object? value = freezed,
    Object? interest = freezed,
    Object? turns = freezed,
    Object? turnsToEnd = freezed,
  }) {
    return _then(_$_Loan(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      interest: interest == freezed
          ? _value.interest
          : interest // ignore: cast_nullable_to_non_nullable
              as double,
      turns: turns == freezed
          ? _value.turns
          : turns // ignore: cast_nullable_to_non_nullable
              as int,
      turnsToEnd: turnsToEnd == freezed
          ? _value.turnsToEnd
          : turnsToEnd // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Loan implements _Loan {
  const _$_Loan(
      {required this.value,
      required this.interest,
      required this.turns,
      required this.turnsToEnd});

  factory _$_Loan.fromJson(Map<String, dynamic> json) => _$$_LoanFromJson(json);

  @override
  final double value;
  @override
  final double interest;
  @override
  final int turns;
  @override
  final int turnsToEnd;

  @override
  String toString() {
    return 'Loan(value: $value, interest: $interest, turns: $turns, turnsToEnd: $turnsToEnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loan &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.interest, interest) &&
            const DeepCollectionEquality().equals(other.turns, turns) &&
            const DeepCollectionEquality()
                .equals(other.turnsToEnd, turnsToEnd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(interest),
      const DeepCollectionEquality().hash(turns),
      const DeepCollectionEquality().hash(turnsToEnd));

  @JsonKey(ignore: true)
  @override
  _$$_LoanCopyWith<_$_Loan> get copyWith =>
      __$$_LoanCopyWithImpl<_$_Loan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoanToJson(this);
  }
}

abstract class _Loan implements Loan {
  const factory _Loan(
      {required final double value,
      required final double interest,
      required final int turns,
      required final int turnsToEnd}) = _$_Loan;

  factory _Loan.fromJson(Map<String, dynamic> json) = _$_Loan.fromJson;

  @override
  double get value => throw _privateConstructorUsedError;
  @override
  double get interest => throw _privateConstructorUsedError;
  @override
  int get turns => throw _privateConstructorUsedError;
  @override
  int get turnsToEnd => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoanCopyWith<_$_Loan> get copyWith => throw _privateConstructorUsedError;
}
