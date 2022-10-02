// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candle.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetCandleCollection on Isar {
  IsarCollection<Candle> get candles => this.collection();
}

const CandleSchema = CollectionSchema(
  name: r'Stock Market Courses',
  id: 6427917390003222243,
  properties: {
    r'close': PropertySchema(
      id: 0,
      name: r'close',
      type: IsarType.double,
    ),
    r'dateTime': PropertySchema(
      id: 1,
      name: r'dateTime',
      type: IsarType.dateTime,
    ),
    r'hashCode': PropertySchema(
      id: 2,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'high': PropertySchema(
      id: 3,
      name: r'high',
      type: IsarType.double,
    ),
    r'instrument': PropertySchema(
      id: 4,
      name: r'instrument',
      type: IsarType.byte,
      enumMap: _CandleinstrumentEnumValueMap,
    ),
    r'low': PropertySchema(
      id: 5,
      name: r'low',
      type: IsarType.double,
    ),
    r'open': PropertySchema(
      id: 6,
      name: r'open',
      type: IsarType.double,
    )
  },
  estimateSize: _candleEstimateSize,
  serialize: _candleSerialize,
  deserialize: _candleDeserialize,
  deserializeProp: _candleDeserializeProp,
  idName: r'id',
  indexes: {
    r'instrument': IndexSchema(
      id: 3092707332867366884,
      name: r'instrument',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'instrument',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _candleGetId,
  getLinks: _candleGetLinks,
  attach: _candleAttach,
  version: '3.0.1',
);

int _candleEstimateSize(
  Candle object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _candleSerialize(
  Candle object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.close);
  writer.writeDateTime(offsets[1], object.dateTime);
  writer.writeLong(offsets[2], object.hashCode);
  writer.writeDouble(offsets[3], object.high);
  writer.writeByte(offsets[4], object.instrument.index);
  writer.writeDouble(offsets[5], object.low);
  writer.writeDouble(offsets[6], object.open);
}

Candle _candleDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Candle(
    close: reader.readDouble(offsets[0]),
    dateTime: reader.readDateTime(offsets[1]),
    high: reader.readDouble(offsets[3]),
    id: id,
    instrument:
        _CandleinstrumentValueEnumMap[reader.readByteOrNull(offsets[4])] ??
            ENameInstrument.btc,
    low: reader.readDouble(offsets[5]),
    open: reader.readDouble(offsets[6]),
  );
  return object;
}

P _candleDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (_CandleinstrumentValueEnumMap[reader.readByteOrNull(offset)] ??
          ENameInstrument.btc) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _CandleinstrumentEnumValueMap = {
  'btc': 0,
  'eth': 1,
  'bnb': 2,
  'hero': 3,
  'dome': 4,
  'oil': 5,
  'gold': 6,
  'silver': 7,
  'tesla': 8,
  'apple': 9,
};
const _CandleinstrumentValueEnumMap = {
  0: ENameInstrument.btc,
  1: ENameInstrument.eth,
  2: ENameInstrument.bnb,
  3: ENameInstrument.hero,
  4: ENameInstrument.dome,
  5: ENameInstrument.oil,
  6: ENameInstrument.gold,
  7: ENameInstrument.silver,
  8: ENameInstrument.tesla,
  9: ENameInstrument.apple,
};

Id _candleGetId(Candle object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _candleGetLinks(Candle object) {
  return [];
}

void _candleAttach(IsarCollection<dynamic> col, Id id, Candle object) {}

extension CandleQueryWhereSort on QueryBuilder<Candle, Candle, QWhere> {
  QueryBuilder<Candle, Candle, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhere> anyInstrument() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'instrument'),
      );
    });
  }
}

extension CandleQueryWhere on QueryBuilder<Candle, Candle, QWhereClause> {
  QueryBuilder<Candle, Candle, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Candle, Candle, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause> idBetween(
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

  QueryBuilder<Candle, Candle, QAfterWhereClause> instrumentEqualTo(
      ENameInstrument instrument) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'instrument',
        value: [instrument],
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause> instrumentNotEqualTo(
      ENameInstrument instrument) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrument',
              lower: [],
              upper: [instrument],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrument',
              lower: [instrument],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrument',
              lower: [instrument],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrument',
              lower: [],
              upper: [instrument],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause> instrumentGreaterThan(
    ENameInstrument instrument, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'instrument',
        lower: [instrument],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause> instrumentLessThan(
    ENameInstrument instrument, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'instrument',
        lower: [],
        upper: [instrument],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause> instrumentBetween(
    ENameInstrument lowerInstrument,
    ENameInstrument upperInstrument, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'instrument',
        lower: [lowerInstrument],
        includeLower: includeLower,
        upper: [upperInstrument],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CandleQueryFilter on QueryBuilder<Candle, Candle, QFilterCondition> {
  QueryBuilder<Candle, Candle, QAfterFilterCondition> closeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'close',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> closeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'close',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> closeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'close',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> closeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'close',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> dateTimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> dateTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> dateTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> dateTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<Candle, Candle, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<Candle, Candle, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<Candle, Candle, QAfterFilterCondition> highEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'high',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> highGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'high',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> highLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'high',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> highBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'high',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> idGreaterThan(
    Id? value, {
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

  QueryBuilder<Candle, Candle, QAfterFilterCondition> idLessThan(
    Id? value, {
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

  QueryBuilder<Candle, Candle, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
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

  QueryBuilder<Candle, Candle, QAfterFilterCondition> instrumentEqualTo(
      ENameInstrument value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'instrument',
        value: value,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> instrumentGreaterThan(
    ENameInstrument value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'instrument',
        value: value,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> instrumentLessThan(
    ENameInstrument value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'instrument',
        value: value,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> instrumentBetween(
    ENameInstrument lower,
    ENameInstrument upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'instrument',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> lowEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'low',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> lowGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'low',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> lowLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'low',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> lowBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'low',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> openEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'open',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> openGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'open',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> openLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'open',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> openBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'open',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension CandleQueryObject on QueryBuilder<Candle, Candle, QFilterCondition> {}

extension CandleQueryLinks on QueryBuilder<Candle, Candle, QFilterCondition> {}

extension CandleQuerySortBy on QueryBuilder<Candle, Candle, QSortBy> {
  QueryBuilder<Candle, Candle, QAfterSortBy> sortByClose() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'close', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> sortByCloseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'close', Sort.desc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> sortByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> sortByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> sortByHigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'high', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> sortByHighDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'high', Sort.desc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> sortByInstrument() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instrument', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> sortByInstrumentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instrument', Sort.desc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> sortByLow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'low', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> sortByLowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'low', Sort.desc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> sortByOpen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'open', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> sortByOpenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'open', Sort.desc);
    });
  }
}

extension CandleQuerySortThenBy on QueryBuilder<Candle, Candle, QSortThenBy> {
  QueryBuilder<Candle, Candle, QAfterSortBy> thenByClose() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'close', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByCloseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'close', Sort.desc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateTime', Sort.desc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByHigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'high', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByHighDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'high', Sort.desc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByInstrument() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instrument', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByInstrumentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instrument', Sort.desc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByLow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'low', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByLowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'low', Sort.desc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByOpen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'open', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByOpenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'open', Sort.desc);
    });
  }
}

extension CandleQueryWhereDistinct on QueryBuilder<Candle, Candle, QDistinct> {
  QueryBuilder<Candle, Candle, QDistinct> distinctByClose() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'close');
    });
  }

  QueryBuilder<Candle, Candle, QDistinct> distinctByDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateTime');
    });
  }

  QueryBuilder<Candle, Candle, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<Candle, Candle, QDistinct> distinctByHigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'high');
    });
  }

  QueryBuilder<Candle, Candle, QDistinct> distinctByInstrument() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'instrument');
    });
  }

  QueryBuilder<Candle, Candle, QDistinct> distinctByLow() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'low');
    });
  }

  QueryBuilder<Candle, Candle, QDistinct> distinctByOpen() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'open');
    });
  }
}

extension CandleQueryProperty on QueryBuilder<Candle, Candle, QQueryProperty> {
  QueryBuilder<Candle, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Candle, double, QQueryOperations> closeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'close');
    });
  }

  QueryBuilder<Candle, DateTime, QQueryOperations> dateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateTime');
    });
  }

  QueryBuilder<Candle, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<Candle, double, QQueryOperations> highProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'high');
    });
  }

  QueryBuilder<Candle, ENameInstrument, QQueryOperations> instrumentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'instrument');
    });
  }

  QueryBuilder<Candle, double, QQueryOperations> lowProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'low');
    });
  }

  QueryBuilder<Candle, double, QQueryOperations> openProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'open');
    });
  }
}
