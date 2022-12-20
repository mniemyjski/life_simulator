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
      _$LoanCopyWithImpl<$Res, Loan>;
  @useResult
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
class _$LoanCopyWithImpl<$Res, $Val extends Loan>
    implements $LoanCopyWith<$Res> {
  _$LoanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? borrowed = null,
    Object? leftLoan = null,
    Object? monthlyRate = null,
    Object? interest = null,
    Object? months = null,
    Object? leftMonths = null,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      borrowed: null == borrowed
          ? _value.borrowed
          : borrowed // ignore: cast_nullable_to_non_nullable
              as double,
      leftLoan: null == leftLoan
          ? _value.leftLoan
          : leftLoan // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyRate: null == monthlyRate
          ? _value.monthlyRate
          : monthlyRate // ignore: cast_nullable_to_non_nullable
              as double,
      interest: null == interest
          ? _value.interest
          : interest // ignore: cast_nullable_to_non_nullable
              as double,
      months: null == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as int,
      leftMonths: null == leftMonths
          ? _value.leftMonths
          : leftMonths // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoanCopyWith<$Res> implements $LoanCopyWith<$Res> {
  factory _$$_LoanCopyWith(_$_Loan value, $Res Function(_$_Loan) then) =
      __$$_LoanCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_LoanCopyWithImpl<$Res> extends _$LoanCopyWithImpl<$Res, _$_Loan>
    implements _$$_LoanCopyWith<$Res> {
  __$$_LoanCopyWithImpl(_$_Loan _value, $Res Function(_$_Loan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? borrowed = null,
    Object? leftLoan = null,
    Object? monthlyRate = null,
    Object? interest = null,
    Object? months = null,
    Object? leftMonths = null,
    Object? next = freezed,
  }) {
    return _then(_$_Loan(
      borrowed: null == borrowed
          ? _value.borrowed
          : borrowed // ignore: cast_nullable_to_non_nullable
              as double,
      leftLoan: null == leftLoan
          ? _value.leftLoan
          : leftLoan // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyRate: null == monthlyRate
          ? _value.monthlyRate
          : monthlyRate // ignore: cast_nullable_to_non_nullable
              as double,
      interest: null == interest
          ? _value.interest
          : interest // ignore: cast_nullable_to_non_nullable
              as double,
      months: null == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as int,
      leftMonths: null == leftMonths
          ? _value.leftMonths
          : leftMonths // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
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
            (identical(other.borrowed, borrowed) ||
                other.borrowed == borrowed) &&
            (identical(other.leftLoan, leftLoan) ||
                other.leftLoan == leftLoan) &&
            (identical(other.monthlyRate, monthlyRate) ||
                other.monthlyRate == monthlyRate) &&
            (identical(other.interest, interest) ||
                other.interest == interest) &&
            (identical(other.months, months) || other.months == months) &&
            (identical(other.leftMonths, leftMonths) ||
                other.leftMonths == leftMonths) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, borrowed, leftLoan, monthlyRate,
      interest, months, leftMonths, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
