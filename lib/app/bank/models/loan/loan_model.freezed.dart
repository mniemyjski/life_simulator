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
  double get borrowed => throw _privateConstructorUsedError;
  double get leftLoan => throw _privateConstructorUsedError;
  double get monthlyRate => throw _privateConstructorUsedError;
  double get interest => throw _privateConstructorUsedError;
  int get months => throw _privateConstructorUsedError;
  int get leftMonths => throw _privateConstructorUsedError;
  DateTime? get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanCopyWith<Loan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanCopyWith<$Res> {
  factory $LoanCopyWith(Loan value, $Res Function(Loan) then) =
      _$LoanCopyWithImpl<$Res>;
  $Res call(
      {double borrowed,
      double leftLoan,
      double monthlyRate,
      double interest,
      int months,
      int leftMonths,
      DateTime? next});
}

/// @nodoc
class _$LoanCopyWithImpl<$Res> implements $LoanCopyWith<$Res> {
  _$LoanCopyWithImpl(this._value, this._then);

  final Loan _value;
  // ignore: unused_field
  final $Res Function(Loan) _then;

  @override
  $Res call({
    Object? borrowed = freezed,
    Object? leftLoan = freezed,
    Object? monthlyRate = freezed,
    Object? interest = freezed,
    Object? months = freezed,
    Object? leftMonths = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      borrowed: borrowed == freezed
          ? _value.borrowed
          : borrowed // ignore: cast_nullable_to_non_nullable
              as double,
      leftLoan: leftLoan == freezed
          ? _value.leftLoan
          : leftLoan // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyRate: monthlyRate == freezed
          ? _value.monthlyRate
          : monthlyRate // ignore: cast_nullable_to_non_nullable
              as double,
      interest: interest == freezed
          ? _value.interest
          : interest // ignore: cast_nullable_to_non_nullable
              as double,
      months: months == freezed
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as int,
      leftMonths: leftMonths == freezed
          ? _value.leftMonths
          : leftMonths // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_LoanCopyWith<$Res> implements $LoanCopyWith<$Res> {
  factory _$$_LoanCopyWith(_$_Loan value, $Res Function(_$_Loan) then) =
      __$$_LoanCopyWithImpl<$Res>;
  @override
  $Res call(
      {double borrowed,
      double leftLoan,
      double monthlyRate,
      double interest,
      int months,
      int leftMonths,
      DateTime? next});
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
    Object? borrowed = freezed,
    Object? leftLoan = freezed,
    Object? monthlyRate = freezed,
    Object? interest = freezed,
    Object? months = freezed,
    Object? leftMonths = freezed,
    Object? next = freezed,
  }) {
    return _then(_$_Loan(
      borrowed: borrowed == freezed
          ? _value.borrowed
          : borrowed // ignore: cast_nullable_to_non_nullable
              as double,
      leftLoan: leftLoan == freezed
          ? _value.leftLoan
          : leftLoan // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyRate: monthlyRate == freezed
          ? _value.monthlyRate
          : monthlyRate // ignore: cast_nullable_to_non_nullable
              as double,
      interest: interest == freezed
          ? _value.interest
          : interest // ignore: cast_nullable_to_non_nullable
              as double,
      months: months == freezed
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as int,
      leftMonths: leftMonths == freezed
          ? _value.leftMonths
          : leftMonths // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Loan extends _Loan {
  const _$_Loan(
      {required this.borrowed,
      required this.leftLoan,
      required this.monthlyRate,
      required this.interest,
      required this.months,
      required this.leftMonths,
      this.next})
      : super._();

  factory _$_Loan.fromJson(Map<String, dynamic> json) => _$$_LoanFromJson(json);

  @override
  final double borrowed;
  @override
  final double leftLoan;
  @override
  final double monthlyRate;
  @override
  final double interest;
  @override
  final int months;
  @override
  final int leftMonths;
  @override
  final DateTime? next;

  @override
  String toString() {
    return 'Loan(borrowed: $borrowed, leftLoan: $leftLoan, monthlyRate: $monthlyRate, interest: $interest, months: $months, leftMonths: $leftMonths, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loan &&
            const DeepCollectionEquality().equals(other.borrowed, borrowed) &&
            const DeepCollectionEquality().equals(other.leftLoan, leftLoan) &&
            const DeepCollectionEquality()
                .equals(other.monthlyRate, monthlyRate) &&
            const DeepCollectionEquality().equals(other.interest, interest) &&
            const DeepCollectionEquality().equals(other.months, months) &&
            const DeepCollectionEquality()
                .equals(other.leftMonths, leftMonths) &&
            const DeepCollectionEquality().equals(other.next, next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(borrowed),
      const DeepCollectionEquality().hash(leftLoan),
      const DeepCollectionEquality().hash(monthlyRate),
      const DeepCollectionEquality().hash(interest),
      const DeepCollectionEquality().hash(months),
      const DeepCollectionEquality().hash(leftMonths),
      const DeepCollectionEquality().hash(next));

  @JsonKey(ignore: true)
  @override
  _$$_LoanCopyWith<_$_Loan> get copyWith =>
      __$$_LoanCopyWithImpl<_$_Loan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoanToJson(
      this,
    );
  }
}

abstract class _Loan extends Loan {
  const factory _Loan(
      {required final double borrowed,
      required final double leftLoan,
      required final double monthlyRate,
      required final double interest,
      required final int months,
      required final int leftMonths,
      final DateTime? next}) = _$_Loan;
  const _Loan._() : super._();

  factory _Loan.fromJson(Map<String, dynamic> json) = _$_Loan.fromJson;

  @override
  double get borrowed;
  @override
  double get leftLoan;
  @override
  double get monthlyRate;
  @override
  double get interest;
  @override
  int get months;
  @override
  int get leftMonths;
  @override
  DateTime? get next;
  @override
  @JsonKey(ignore: true)
  _$$_LoanCopyWith<_$_Loan> get copyWith => throw _privateConstructorUsedError;
}
