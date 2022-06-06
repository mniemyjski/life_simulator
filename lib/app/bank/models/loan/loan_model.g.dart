// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Loan _$$_LoanFromJson(Map<String, dynamic> json) => _$_Loan(
      value: (json['value'] as num).toDouble(),
      interest: (json['interest'] as num).toDouble(),
      turns: json['turns'] as int,
      turnsToEnd: json['turnsToEnd'] as int,
    );

Map<String, dynamic> _$$_LoanToJson(_$_Loan instance) => <String, dynamic>{
      'value': instance.value,
      'interest': instance.interest,
      'turns': instance.turns,
      'turnsToEnd': instance.turnsToEnd,
    };
