// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetTransactionCollection on Isar {
  IsarCollection<Transaction> get transactions => this.collection();
}

const TransactionSchema = CollectionSchema(
  name: r'Transactions',
  id: -3666024191998772642,
  properties: {
    r'dateCre': PropertySchema(
      id: 0,
      name: r'dateCre',
      type: IsarType.dateTime,
    ),
    r'eTypeTransaction': PropertySchema(
      id: 1,
      name: r'eTypeTransaction',
      type: IsarType.byte,
      enumMap: _TransactioneTypeTransactionEnumValueMap,
    ),
    r'eTypeTransactionSource': PropertySchema(
      id: 2,
      name: r'eTypeTransactionSource',
      type: IsarType.byte,
      enumMap: _TransactioneTypeTransactionSourceEnumValueMap,
    ),
    r'hashCode': PropertySchema(
      id: 3,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'idSource': PropertySchema(
      id: 4,
      name: r'idSource',
      type: IsarType.long,
    ),
    r'monthCre': PropertySchema(
      id: 5,
      name: r'monthCre',
      type: IsarType.dateTime,
    ),
    r'value': PropertySchema(
      id: 6,
      name: r'value',
      type: IsarType.double,
    ),
    r'yearCre': PropertySchema(
      id: 7,
      name: r'yearCre',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _transactionEstimateSize,
  serialize: _transactionSerialize,
  deserialize: _transactionDeserialize,
  deserializeProp: _transactionDeserializeProp,
  idName: r'id',
  indexes: {
    r'monthCre': IndexSchema(
      id: 602605910549312852,
      name: r'monthCre',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'monthCre',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'yearCre': IndexSchema(
      id: 6643729595905270564,
      name: r'yearCre',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'yearCre',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _transactionGetId,
  getLinks: _transactionGetLinks,
  attach: _transactionAttach,
  version: '3.0.5',
);

int _transactionEstimateSize(
  Transaction object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _transactionSerialize(
  Transaction object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.dateCre);
  writer.writeByte(offsets[1], object.eTypeTransaction.index);
  writer.writeByte(offsets[2], object.eTypeTransactionSource.index);
  writer.writeLong(offsets[3], object.hashCode);
  writer.writeLong(offsets[4], object.idSource);
  writer.writeDateTime(offsets[5], object.monthCre);
  writer.writeDouble(offsets[6], object.value);
  writer.writeDateTime(offsets[7], object.yearCre);
}

Transaction _transactionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Transaction(
    dateCre: reader.readDateTime(offsets[0]),
    eTypeTransactionSource: _TransactioneTypeTransactionSourceValueEnumMap[
            reader.readByteOrNull(offsets[2])] ??
        ETypeTransactionSource.job,
    id: id,
    idSource: reader.readLongOrNull(offsets[4]),
    value: reader.readDouble(offsets[6]),
  );
  return object;
}

P _transactionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (_TransactioneTypeTransactionValueEnumMap[
              reader.readByteOrNull(offset)] ??
          ETypeTransaction.revenue) as P;
    case 2:
      return (_TransactioneTypeTransactionSourceValueEnumMap[
              reader.readByteOrNull(offset)] ??
          ETypeTransactionSource.job) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _TransactioneTypeTransactionEnumValueMap = {
  'revenue': 0,
  'expense': 1,
};
const _TransactioneTypeTransactionValueEnumMap = {
  0: ETypeTransaction.revenue,
  1: ETypeTransaction.expense,
};
const _TransactioneTypeTransactionSourceEnumValueMap = {
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
  'costProduce': 18,
  'withdraw': 19,
  'deposit': 20,
};
const _TransactioneTypeTransactionSourceValueEnumMap = {
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
  18: ETypeTransactionSource.costProduce,
  19: ETypeTransactionSource.withdraw,
  20: ETypeTransactionSource.deposit,
};

Id _transactionGetId(Transaction object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _transactionGetLinks(Transaction object) {
  return [];
}

void _transactionAttach(
    IsarCollection<dynamic> col, Id id, Transaction object) {}

extension TransactionQueryWhereSort
    on QueryBuilder<Transaction, Transaction, QWhere> {
  QueryBuilder<Transaction, Transaction, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterWhere> anyMonthCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'monthCre'),
      );
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterWhere> anyYearCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'yearCre'),
      );
    });
  }
}

extension TransactionQueryWhere
    on QueryBuilder<Transaction, Transaction, QWhereClause> {
  QueryBuilder<Transaction, Transaction, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<Transaction, Transaction, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterWhereClause> idBetween(
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

  QueryBuilder<Transaction, Transaction, QAfterWhereClause> monthCreEqualTo(
      DateTime monthCre) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'monthCre',
        value: [monthCre],
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterWhereClause> monthCreNotEqualTo(
      DateTime monthCre) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'monthCre',
              lower: [],
              upper: [monthCre],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'monthCre',
              lower: [monthCre],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'monthCre',
              lower: [monthCre],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'monthCre',
              lower: [],
              upper: [monthCre],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterWhereClause> monthCreGreaterThan(
    DateTime monthCre, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'monthCre',
        lower: [monthCre],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterWhereClause> monthCreLessThan(
    DateTime monthCre, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'monthCre',
        lower: [],
        upper: [monthCre],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterWhereClause> monthCreBetween(
    DateTime lowerMonthCre,
    DateTime upperMonthCre, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'monthCre',
        lower: [lowerMonthCre],
        includeLower: includeLower,
        upper: [upperMonthCre],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterWhereClause> yearCreEqualTo(
      DateTime yearCre) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'yearCre',
        value: [yearCre],
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterWhereClause> yearCreNotEqualTo(
      DateTime yearCre) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'yearCre',
              lower: [],
              upper: [yearCre],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'yearCre',
              lower: [yearCre],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'yearCre',
              lower: [yearCre],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'yearCre',
              lower: [],
              upper: [yearCre],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterWhereClause> yearCreGreaterThan(
    DateTime yearCre, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'yearCre',
        lower: [yearCre],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterWhereClause> yearCreLessThan(
    DateTime yearCre, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'yearCre',
        lower: [],
        upper: [yearCre],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterWhereClause> yearCreBetween(
    DateTime lowerYearCre,
    DateTime upperYearCre, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'yearCre',
        lower: [lowerYearCre],
        includeLower: includeLower,
        upper: [upperYearCre],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TransactionQueryFilter
    on QueryBuilder<Transaction, Transaction, QFilterCondition> {
  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> dateCreEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCre',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      dateCreGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateCre',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> dateCreLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateCre',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> dateCreBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateCre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      eTypeTransactionEqualTo(ETypeTransaction value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eTypeTransaction',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      eTypeTransactionGreaterThan(
    ETypeTransaction value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eTypeTransaction',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      eTypeTransactionLessThan(
    ETypeTransaction value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eTypeTransaction',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      eTypeTransactionBetween(
    ETypeTransaction lower,
    ETypeTransaction upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eTypeTransaction',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      eTypeTransactionSourceEqualTo(ETypeTransactionSource value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eTypeTransactionSource',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      eTypeTransactionSourceGreaterThan(
    ETypeTransactionSource value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eTypeTransactionSource',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      eTypeTransactionSourceLessThan(
    ETypeTransactionSource value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eTypeTransactionSource',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      eTypeTransactionSourceBetween(
    ETypeTransactionSource lower,
    ETypeTransactionSource upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eTypeTransactionSource',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      hashCodeGreaterThan(
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

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      hashCodeLessThan(
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

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      idSourceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idSource',
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      idSourceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idSource',
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> idSourceEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idSource',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      idSourceGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idSource',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      idSourceLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idSource',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> idSourceBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idSource',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> monthCreEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'monthCre',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      monthCreGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'monthCre',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      monthCreLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'monthCre',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> monthCreBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'monthCre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> valueEqualTo(
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

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      valueGreaterThan(
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

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> valueLessThan(
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

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> valueBetween(
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

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> yearCreEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'yearCre',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition>
      yearCreGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'yearCre',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> yearCreLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'yearCre',
        value: value,
      ));
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterFilterCondition> yearCreBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'yearCre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TransactionQueryObject
    on QueryBuilder<Transaction, Transaction, QFilterCondition> {}

extension TransactionQueryLinks
    on QueryBuilder<Transaction, Transaction, QFilterCondition> {}

extension TransactionQuerySortBy
    on QueryBuilder<Transaction, Transaction, QSortBy> {
  QueryBuilder<Transaction, Transaction, QAfterSortBy> sortByDateCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCre', Sort.asc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> sortByDateCreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCre', Sort.desc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy>
      sortByETypeTransaction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeTransaction', Sort.asc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy>
      sortByETypeTransactionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeTransaction', Sort.desc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy>
      sortByETypeTransactionSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeTransactionSource', Sort.asc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy>
      sortByETypeTransactionSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeTransactionSource', Sort.desc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> sortByIdSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idSource', Sort.asc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> sortByIdSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idSource', Sort.desc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> sortByMonthCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monthCre', Sort.asc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> sortByMonthCreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monthCre', Sort.desc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> sortByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> sortByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> sortByYearCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearCre', Sort.asc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> sortByYearCreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearCre', Sort.desc);
    });
  }
}

extension TransactionQuerySortThenBy
    on QueryBuilder<Transaction, Transaction, QSortThenBy> {
  QueryBuilder<Transaction, Transaction, QAfterSortBy> thenByDateCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCre', Sort.asc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> thenByDateCreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCre', Sort.desc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy>
      thenByETypeTransaction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeTransaction', Sort.asc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy>
      thenByETypeTransactionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeTransaction', Sort.desc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy>
      thenByETypeTransactionSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeTransactionSource', Sort.asc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy>
      thenByETypeTransactionSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeTransactionSource', Sort.desc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> thenByIdSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idSource', Sort.asc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> thenByIdSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idSource', Sort.desc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> thenByMonthCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monthCre', Sort.asc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> thenByMonthCreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monthCre', Sort.desc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> thenByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> thenByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> thenByYearCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearCre', Sort.asc);
    });
  }

  QueryBuilder<Transaction, Transaction, QAfterSortBy> thenByYearCreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'yearCre', Sort.desc);
    });
  }
}

extension TransactionQueryWhereDistinct
    on QueryBuilder<Transaction, Transaction, QDistinct> {
  QueryBuilder<Transaction, Transaction, QDistinct> distinctByDateCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCre');
    });
  }

  QueryBuilder<Transaction, Transaction, QDistinct>
      distinctByETypeTransaction() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eTypeTransaction');
    });
  }

  QueryBuilder<Transaction, Transaction, QDistinct>
      distinctByETypeTransactionSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eTypeTransactionSource');
    });
  }

  QueryBuilder<Transaction, Transaction, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<Transaction, Transaction, QDistinct> distinctByIdSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idSource');
    });
  }

  QueryBuilder<Transaction, Transaction, QDistinct> distinctByMonthCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'monthCre');
    });
  }

  QueryBuilder<Transaction, Transaction, QDistinct> distinctByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'value');
    });
  }

  QueryBuilder<Transaction, Transaction, QDistinct> distinctByYearCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'yearCre');
    });
  }
}

extension TransactionQueryProperty
    on QueryBuilder<Transaction, Transaction, QQueryProperty> {
  QueryBuilder<Transaction, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Transaction, DateTime, QQueryOperations> dateCreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCre');
    });
  }

  QueryBuilder<Transaction, ETypeTransaction, QQueryOperations>
      eTypeTransactionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eTypeTransaction');
    });
  }

  QueryBuilder<Transaction, ETypeTransactionSource, QQueryOperations>
      eTypeTransactionSourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eTypeTransactionSource');
    });
  }

  QueryBuilder<Transaction, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<Transaction, int?, QQueryOperations> idSourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idSource');
    });
  }

  QueryBuilder<Transaction, DateTime, QQueryOperations> monthCreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'monthCre');
    });
  }

  QueryBuilder<Transaction, double, QQueryOperations> valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'value');
    });
  }

  QueryBuilder<Transaction, DateTime, QQueryOperations> yearCreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'yearCre');
    });
  }
}
