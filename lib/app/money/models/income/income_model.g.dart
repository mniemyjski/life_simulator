// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$IncomeCWProxy {
  Income eTypeFrequency(ETypeFrequency eTypeFrequency);

  Income next(DateTime? next);

  Income source(ETypeTransactionSource source);

  Income typeIncome(ETypeIncome typeIncome);

  Income uid(String uid);

  Income value(double value);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Income(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Income(...).copyWith(id: 12, name: "My name")
  /// ````
  Income call({
    ETypeFrequency? eTypeFrequency,
    DateTime? next,
    ETypeTransactionSource? source,
    ETypeIncome? typeIncome,
    String? uid,
    double? value,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfIncome.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfIncome.copyWith.fieldName(...)`
class _$IncomeCWProxyImpl implements _$IncomeCWProxy {
  final Income _value;

  const _$IncomeCWProxyImpl(this._value);

  @override
  Income eTypeFrequency(ETypeFrequency eTypeFrequency) =>
      this(eTypeFrequency: eTypeFrequency);

  @override
  Income next(DateTime? next) => this(next: next);

  @override
  Income source(ETypeTransactionSource source) => this(source: source);

  @override
  Income typeIncome(ETypeIncome typeIncome) => this(typeIncome: typeIncome);

  @override
  Income uid(String uid) => this(uid: uid);

  @override
  Income value(double value) => this(value: value);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Income(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Income(...).copyWith(id: 12, name: "My name")
  /// ````
  Income call({
    Object? eTypeFrequency = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? source = const $CopyWithPlaceholder(),
    Object? typeIncome = const $CopyWithPlaceholder(),
    Object? uid = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return Income(
      eTypeFrequency: eTypeFrequency == const $CopyWithPlaceholder() ||
              eTypeFrequency == null
          ? _value.eTypeFrequency
          // ignore: cast_nullable_to_non_nullable
          : eTypeFrequency as ETypeFrequency,
      next: next == const $CopyWithPlaceholder()
          ? _value.next
          // ignore: cast_nullable_to_non_nullable
          : next as DateTime?,
      source: source == const $CopyWithPlaceholder() || source == null
          ? _value.source
          // ignore: cast_nullable_to_non_nullable
          : source as ETypeTransactionSource,
      typeIncome:
          typeIncome == const $CopyWithPlaceholder() || typeIncome == null
              ? _value.typeIncome
              // ignore: cast_nullable_to_non_nullable
              : typeIncome as ETypeIncome,
      uid: uid == const $CopyWithPlaceholder() || uid == null
          ? _value.uid
          // ignore: cast_nullable_to_non_nullable
          : uid as String,
      value: value == const $CopyWithPlaceholder() || value == null
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as double,
    );
  }
}

extension $IncomeCopyWith on Income {
  /// Returns a callable class that can be used as follows: `instanceOfIncome.copyWith(...)` or like so:`instanceOfIncome.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$IncomeCWProxy get copyWith => _$IncomeCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetIncomeCollection on Isar {
  IsarCollection<Income> get incomes => this.collection();
}

const IncomeSchema = CollectionSchema(
  name: r'Incomes',
  id: 688137965179409618,
  properties: {
    r'eTypeFrequency': PropertySchema(
      id: 0,
      name: r'eTypeFrequency',
      type: IsarType.byte,
      enumMap: _IncomeeTypeFrequencyEnumValueMap,
    ),
    r'hashCode': PropertySchema(
      id: 1,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'next': PropertySchema(
      id: 2,
      name: r'next',
      type: IsarType.dateTime,
    ),
    r'source': PropertySchema(
      id: 3,
      name: r'source',
      type: IsarType.byte,
      enumMap: _IncomesourceEnumValueMap,
    ),
    r'typeIncome': PropertySchema(
      id: 4,
      name: r'typeIncome',
      type: IsarType.byte,
      enumMap: _IncometypeIncomeEnumValueMap,
    ),
    r'uid': PropertySchema(
      id: 5,
      name: r'uid',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 6,
      name: r'value',
      type: IsarType.double,
    )
  },
  estimateSize: _incomeEstimateSize,
  serialize: _incomeSerialize,
  deserialize: _incomeDeserialize,
  deserializeProp: _incomeDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _incomeGetId,
  getLinks: _incomeGetLinks,
  attach: _incomeAttach,
  version: '3.0.5',
);

int _incomeEstimateSize(
  Income object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.uid.length * 3;
  return bytesCount;
}

void _incomeSerialize(
  Income object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.eTypeFrequency.index);
  writer.writeLong(offsets[1], object.hashCode);
  writer.writeDateTime(offsets[2], object.next);
  writer.writeByte(offsets[3], object.source.index);
  writer.writeByte(offsets[4], object.typeIncome.index);
  writer.writeString(offsets[5], object.uid);
  writer.writeDouble(offsets[6], object.value);
}

Income _incomeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Income(
    eTypeFrequency:
        _IncomeeTypeFrequencyValueEnumMap[reader.readByteOrNull(offsets[0])] ??
            ETypeFrequency.annually,
    next: reader.readDateTimeOrNull(offsets[2]),
    source: _IncomesourceValueEnumMap[reader.readByteOrNull(offsets[3])] ??
        ETypeTransactionSource.job,
    typeIncome:
        _IncometypeIncomeValueEnumMap[reader.readByteOrNull(offsets[4])] ??
            ETypeIncome.revenue,
    uid: reader.readString(offsets[5]),
    value: reader.readDouble(offsets[6]),
  );
  return object;
}

P _incomeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_IncomeeTypeFrequencyValueEnumMap[
              reader.readByteOrNull(offset)] ??
          ETypeFrequency.annually) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (_IncomesourceValueEnumMap[reader.readByteOrNull(offset)] ??
          ETypeTransactionSource.job) as P;
    case 4:
      return (_IncometypeIncomeValueEnumMap[reader.readByteOrNull(offset)] ??
          ETypeIncome.revenue) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _IncomeeTypeFrequencyEnumValueMap = {
  'annually': 0,
  'monthly': 1,
  'weekly': 2,
  'daily': 3,
};
const _IncomeeTypeFrequencyValueEnumMap = {
  0: ETypeFrequency.annually,
  1: ETypeFrequency.monthly,
  2: ETypeFrequency.weekly,
  3: ETypeFrequency.daily,
};
const _IncomesourceEnumValueMap = {
  'job': 0,
  'freelance': 1,
  'asset': 2,
  'market': 3,
  'home': 4,
  'food': 5,
  'transport': 6,
  'learning': 7,
  'bankBorrowed': 8,
  'bankDeposit': 9,
  'bankInterest': 10,
  'medicine': 11,
  'unpaidTaxes': 12,
  'addMoney': 13,
  'giftFromParents': 14,
  'lostMoney': 15,
  'advertisement': 16,
  'employeeWages': 17,
  'withdraw': 18,
  'deposit': 19,
};
const _IncomesourceValueEnumMap = {
  0: ETypeTransactionSource.job,
  1: ETypeTransactionSource.freelance,
  2: ETypeTransactionSource.asset,
  3: ETypeTransactionSource.market,
  4: ETypeTransactionSource.home,
  5: ETypeTransactionSource.food,
  6: ETypeTransactionSource.transport,
  7: ETypeTransactionSource.learning,
  8: ETypeTransactionSource.bankBorrowed,
  9: ETypeTransactionSource.bankDeposit,
  10: ETypeTransactionSource.bankInterest,
  11: ETypeTransactionSource.medicine,
  12: ETypeTransactionSource.unpaidTaxes,
  13: ETypeTransactionSource.addMoney,
  14: ETypeTransactionSource.giftFromParents,
  15: ETypeTransactionSource.lostMoney,
  16: ETypeTransactionSource.advertisement,
  17: ETypeTransactionSource.employeeWages,
  18: ETypeTransactionSource.withdraw,
  19: ETypeTransactionSource.deposit,
};
const _IncometypeIncomeEnumValueMap = {
  'revenue': 0,
  'expense': 1,
};
const _IncometypeIncomeValueEnumMap = {
  0: ETypeIncome.revenue,
  1: ETypeIncome.expense,
};

Id _incomeGetId(Income object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _incomeGetLinks(Income object) {
  return [];
}

void _incomeAttach(IsarCollection<dynamic> col, Id id, Income object) {}

extension IncomeQueryWhereSort on QueryBuilder<Income, Income, QWhere> {
  QueryBuilder<Income, Income, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IncomeQueryWhere on QueryBuilder<Income, Income, QWhereClause> {
  QueryBuilder<Income, Income, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Income, Income, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Income, Income, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Income, Income, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IncomeQueryFilter on QueryBuilder<Income, Income, QFilterCondition> {
  QueryBuilder<Income, Income, QAfterFilterCondition> eTypeFrequencyEqualTo(
      ETypeFrequency value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eTypeFrequency',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> eTypeFrequencyGreaterThan(
    ETypeFrequency value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eTypeFrequency',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> eTypeFrequencyLessThan(
    ETypeFrequency value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eTypeFrequency',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> eTypeFrequencyBetween(
    ETypeFrequency lower,
    ETypeFrequency upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eTypeFrequency',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> nextIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'next',
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> nextIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'next',
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> nextEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'next',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> nextGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'next',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> nextLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'next',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> nextBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'next',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> sourceEqualTo(
      ETypeTransactionSource value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'source',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> sourceGreaterThan(
    ETypeTransactionSource value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'source',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> sourceLessThan(
    ETypeTransactionSource value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'source',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> sourceBetween(
    ETypeTransactionSource lower,
    ETypeTransactionSource upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'source',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> typeIncomeEqualTo(
      ETypeIncome value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'typeIncome',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> typeIncomeGreaterThan(
    ETypeIncome value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'typeIncome',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> typeIncomeLessThan(
    ETypeIncome value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'typeIncome',
        value: value,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> typeIncomeBetween(
    ETypeIncome lower,
    ETypeIncome upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'typeIncome',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> uidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> uidGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> uidLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> uidBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> uidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> uidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> uidContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> uidMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> uidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uid',
        value: '',
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> uidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uid',
        value: '',
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> valueEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> valueGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> valueLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Income, Income, QAfterFilterCondition> valueBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension IncomeQueryObject on QueryBuilder<Income, Income, QFilterCondition> {}

extension IncomeQueryLinks on QueryBuilder<Income, Income, QFilterCondition> {}

extension IncomeQuerySortBy on QueryBuilder<Income, Income, QSortBy> {
  QueryBuilder<Income, Income, QAfterSortBy> sortByETypeFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeFrequency', Sort.asc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> sortByETypeFrequencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeFrequency', Sort.desc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> sortByNext() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next', Sort.asc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> sortByNextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next', Sort.desc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> sortBySource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'source', Sort.asc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> sortBySourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'source', Sort.desc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> sortByTypeIncome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeIncome', Sort.asc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> sortByTypeIncomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeIncome', Sort.desc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> sortByUid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.asc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> sortByUidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.desc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> sortByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> sortByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension IncomeQuerySortThenBy on QueryBuilder<Income, Income, QSortThenBy> {
  QueryBuilder<Income, Income, QAfterSortBy> thenByETypeFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeFrequency', Sort.asc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> thenByETypeFrequencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeFrequency', Sort.desc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> thenByNext() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next', Sort.asc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> thenByNextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next', Sort.desc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> thenBySource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'source', Sort.asc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> thenBySourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'source', Sort.desc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> thenByTypeIncome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeIncome', Sort.asc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> thenByTypeIncomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'typeIncome', Sort.desc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> thenByUid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.asc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> thenByUidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.desc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> thenByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<Income, Income, QAfterSortBy> thenByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }
}

extension IncomeQueryWhereDistinct on QueryBuilder<Income, Income, QDistinct> {
  QueryBuilder<Income, Income, QDistinct> distinctByETypeFrequency() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eTypeFrequency');
    });
  }

  QueryBuilder<Income, Income, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<Income, Income, QDistinct> distinctByNext() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'next');
    });
  }

  QueryBuilder<Income, Income, QDistinct> distinctBySource() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'source');
    });
  }

  QueryBuilder<Income, Income, QDistinct> distinctByTypeIncome() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'typeIncome');
    });
  }

  QueryBuilder<Income, Income, QDistinct> distinctByUid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Income, Income, QDistinct> distinctByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'value');
    });
  }
}

extension IncomeQueryProperty on QueryBuilder<Income, Income, QQueryProperty> {
  QueryBuilder<Income, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Income, ETypeFrequency, QQueryOperations>
      eTypeFrequencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eTypeFrequency');
    });
  }

  QueryBuilder<Income, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<Income, DateTime?, QQueryOperations> nextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'next');
    });
  }

  QueryBuilder<Income, ETypeTransactionSource, QQueryOperations>
      sourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'source');
    });
  }

  QueryBuilder<Income, ETypeIncome, QQueryOperations> typeIncomeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'typeIncome');
    });
  }

  QueryBuilder<Income, String, QQueryOperations> uidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uid');
    });
  }

  QueryBuilder<Income, double, QQueryOperations> valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'value');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Income _$IncomeFromJson(Map<String, dynamic> json) => Income(
      uid: json['uid'] as String,
      source: $enumDecode(_$ETypeTransactionSourceEnumMap, json['source']),
      typeIncome: $enumDecode(_$ETypeIncomeEnumMap, json['typeIncome']),
      eTypeFrequency:
          $enumDecode(_$ETypeFrequencyEnumMap, json['eTypeFrequency']),
      value: (json['value'] as num).toDouble(),
      next:
          json['next'] == null ? null : DateTime.parse(json['next'] as String),
    );

Map<String, dynamic> _$IncomeToJson(Income instance) => <String, dynamic>{
      'uid': instance.uid,
      'source': _$ETypeTransactionSourceEnumMap[instance.source]!,
      'typeIncome': _$ETypeIncomeEnumMap[instance.typeIncome]!,
      'eTypeFrequency': _$ETypeFrequencyEnumMap[instance.eTypeFrequency]!,
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
  ETypeTransactionSource.giftFromParents: 'giftFromParents',
  ETypeTransactionSource.lostMoney: 'lostMoney',
  ETypeTransactionSource.advertisement: 'advertisement',
  ETypeTransactionSource.employeeWages: 'employeeWages',
  ETypeTransactionSource.withdraw: 'withdraw',
  ETypeTransactionSource.deposit: 'deposit',
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
