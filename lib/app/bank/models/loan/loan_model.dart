import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utilities/utilities.dart';

part 'loan_model.freezed.dart';
part 'loan_model.g.dart';

@freezed
class Loan with _$Loan {
  const Loan._();

  const factory Loan({
    required double borrowed,
    required double leftLoan,
    required double monthlyRate,
    required double interest,
    required int months,
    required int leftMonths,
    DateTime? next,
  }) = _Loan;

  factory Loan.fromJson(Map<String, dynamic> json) => _$LoanFromJson(json);

  double getRate() {
    if ((leftLoan % monthlyRate) > 0) {
      return monthlyRate + (leftLoan % monthlyRate);
    } else {
      return monthlyRate;
    }
  }
}
