// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sum_transactions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SumTransactions _$$_SumTransactionsFromJson(Map<String, dynamic> json) =>
    _$_SumTransactions(
      eTypeTransactionSource: $enumDecode(
          _$ETypeTransactionSourceEnumMap, json['eTypeTransactionSource']),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_SumTransactionsToJson(_$_SumTransactions instance) =>
    <String, dynamic>{
      'eTypeTransactionSource':
          _$ETypeTransactionSourceEnumMap[instance.eTypeTransactionSource]!,
      'value': instance.value,
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
  ETypeTransactionSource.giftFromParents: 'giftFromParents',
  ETypeTransactionSource.lostMoney: 'lostMoney',
  ETypeTransactionSource.advertisement: 'advertisement',
};
