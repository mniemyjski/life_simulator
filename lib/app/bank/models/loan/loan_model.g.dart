// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Loan _$$_LoanFromJson(Map<String, dynamic> json) => _$_Loan(
      borrowed: (json['borrowed'] as num).toDouble(),
      leftLoan: (json['leftLoan'] as num).toDouble(),
      monthlyRate: (json['monthlyRate'] as num).toDouble(),
      interest: (json['interest'] as num).toDouble(),
      months: json['months'] as int,
      leftMonths: json['leftMonths'] as int,
      next:
          json['next'] == null ? null : DateTime.parse(json['next'] as String),
    );

Map<String, dynamic> _$$_LoanToJson(_$_Loan instance) => <String, dynamic>{
      'borrowed': instance.borrowed,
      'leftLoan': instance.leftLoan,
      'monthlyRate': instance.monthlyRate,
      'interest': instance.interest,
      'months': instance.months,
      'leftMonths': instance.leftMonths,
      'next': instance.next?.toIso8601String(),
    };
