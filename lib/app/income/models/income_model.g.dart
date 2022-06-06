// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Income _$$_IncomeFromJson(Map<String, dynamic> json) => _$_Income(
      id: json['id'] as String,
      source: $enumDecode(_$ETypeSourceEnumMap, json['source']),
      typeIncome: $enumDecode(_$ETypeIncomeEnumMap, json['typeIncome']),
      value: (json['value'] as num).toDouble(),
      interval: json['interval'] as int,
      timeLeft: json['timeLeft'] as int,
    );

Map<String, dynamic> _$$_IncomeToJson(_$_Income instance) => <String, dynamic>{
      'id': instance.id,
      'source': _$ETypeSourceEnumMap[instance.source],
      'typeIncome': _$ETypeIncomeEnumMap[instance.typeIncome],
      'value': instance.value,
      'interval': instance.interval,
      'timeLeft': instance.timeLeft,
    };

const _$ETypeSourceEnumMap = {
  ETypeSource.job: 'job',
  ETypeSource.meal: 'meal',
  ETypeSource.house: 'house',
  ETypeSource.car: 'car',
};

const _$ETypeIncomeEnumMap = {
  ETypeIncome.revenue: 'revenue',
  ETypeIncome.expense: 'expense',
};
