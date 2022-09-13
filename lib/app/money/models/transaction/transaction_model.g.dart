// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      id: json['id'] as String,
      value: (json['value'] as num).toDouble(),
      eTypeTransaction:
          $enumDecode(_$ETypeTransactionEnumMap, json['eTypeTransaction']),
      eTypeTransactionSource: $enumDecode(
          _$ETypeTransactionSourceEnumMap, json['eTypeTransactionSource']),
      dateCre: DateTime.parse(json['dateCre'] as String),
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'eTypeTransaction': _$ETypeTransactionEnumMap[instance.eTypeTransaction],
      'eTypeTransactionSource':
          _$ETypeTransactionSourceEnumMap[instance.eTypeTransactionSource],
      'dateCre': instance.dateCre.toIso8601String(),
    };

const _$ETypeTransactionEnumMap = {
  ETypeTransaction.revenue: 'revenue',
  ETypeTransaction.expense: 'expense',
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
};
