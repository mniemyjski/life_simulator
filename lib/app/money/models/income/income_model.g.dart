// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Income _$$_IncomeFromJson(Map<String, dynamic> json) => _$_Income(
      id: json['id'] as String,
      source: $enumDecode(_$ETypeTransactionSourceEnumMap, json['source']),
      typeIncome: $enumDecode(_$ETypeIncomeEnumMap, json['typeIncome']),
      eTypeFrequency:
          $enumDecode(_$ETypeFrequencyEnumMap, json['eTypeFrequency']),
      value: (json['value'] as num).toDouble(),
      next:
          json['next'] == null ? null : DateTime.parse(json['next'] as String),
    );

Map<String, dynamic> _$$_IncomeToJson(_$_Income instance) => <String, dynamic>{
      'id': instance.id,
      'source': _$ETypeTransactionSourceEnumMap[instance.source],
      'typeIncome': _$ETypeIncomeEnumMap[instance.typeIncome],
      'eTypeFrequency': _$ETypeFrequencyEnumMap[instance.eTypeFrequency],
      'value': instance.value,
      'next': instance.next?.toIso8601String(),
    };

const _$ETypeTransactionSourceEnumMap = {
  ETypeTransactionSource.job: 'job',
  ETypeTransactionSource.freelance: 'freelance',
  ETypeTransactionSource.asset: 'asset',
  ETypeTransactionSource.market: 'market',
  ETypeTransactionSource.home: 'home',
  ETypeTransactionSource.food: 'food',
  ETypeTransactionSource.transport: 'transport',
  ETypeTransactionSource.learning: 'learning',
  ETypeTransactionSource.bankBorrowed: 'bankBorrowed',
  ETypeTransactionSource.bankDeposit: 'bankDeposit',
  ETypeTransactionSource.bankInterest: 'bankInterest',
  ETypeTransactionSource.medicine: 'medicine',
  ETypeTransactionSource.unpaidTaxes: 'unpaidTaxes',
  ETypeTransactionSource.addMoney: 'addMoney',
  ETypeTransactionSource.lostMoney: 'lostMoney',
  ETypeTransactionSource.advertisement: 'advertisement',
};

const _$ETypeIncomeEnumMap = {
  ETypeIncome.revenue: 'revenue',
  ETypeIncome.expense: 'expense',
};

const _$ETypeFrequencyEnumMap = {
  ETypeFrequency.annually: 'annually',
  ETypeFrequency.monthly: 'monthly',
  ETypeFrequency.weekly: 'weekly',
  ETypeFrequency.daily: 'daily',
};
