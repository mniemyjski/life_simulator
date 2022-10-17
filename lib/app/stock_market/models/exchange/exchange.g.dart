// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ExchangeCWProxy {
  Exchange close(bool close);

  Exchange count(double count);

  Exchange dateCre(DateTime dateCre);

  Exchange eNameInstrument(ENameInstrument eNameInstrument);

  Exchange id(int id);

  Exchange instrumentId(int instrumentId);

  Exchange price(double price);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Exchange(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Exchange(...).copyWith(id: 12, name: "My name")
  /// ````
  Exchange call({
    bool? close,
    double? count,
    DateTime? dateCre,
    ENameInstrument? eNameInstrument,
    int? id,
    int? instrumentId,
    double? price,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfExchange.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfExchange.copyWith.fieldName(...)`
class _$ExchangeCWProxyImpl implements _$ExchangeCWProxy {
  final Exchange _value;

  const _$ExchangeCWProxyImpl(this._value);

  @override
  Exchange close(bool close) => this(close: close);

  @override
  Exchange count(double count) => this(count: count);

  @override
  Exchange dateCre(DateTime dateCre) => this(dateCre: dateCre);

  @override
  Exchange eNameInstrument(ENameInstrument eNameInstrument) =>
      this(eNameInstrument: eNameInstrument);

  @override
  Exchange id(int id) => this(id: id);

  @override
  Exchange instrumentId(int instrumentId) => this(instrumentId: instrumentId);

  @override
  Exchange price(double price) => this(price: price);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Exchange(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Exchange(...).copyWith(id: 12, name: "My name")
  /// ````
  Exchange call({
    Object? close = const $CopyWithPlaceholder(),
    Object? count = const $CopyWithPlaceholder(),
    Object? dateCre = const $CopyWithPlaceholder(),
    Object? eNameInstrument = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? instrumentId = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
  }) {
    return Exchange(
      close: close == const $CopyWithPlaceholder() || close == null
          ? _value.close
          // ignore: cast_nullable_to_non_nullable
          : close as bool,
      count: count == const $CopyWithPlaceholder() || count == null
          ? _value.count
          // ignore: cast_nullable_to_non_nullable
          : count as double,
      dateCre: dateCre == const $CopyWithPlaceholder() || dateCre == null
          ? _value.dateCre
          // ignore: cast_nullable_to_non_nullable
          : dateCre as DateTime,
      eNameInstrument: eNameInstrument == const $CopyWithPlaceholder() ||
              eNameInstrument == null
          ? _value.eNameInstrument
          // ignore: cast_nullable_to_non_nullable
          : eNameInstrument as ENameInstrument,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      instrumentId:
          instrumentId == const $CopyWithPlaceholder() || instrumentId == null
              ? _value.instrumentId
              // ignore: cast_nullable_to_non_nullable
              : instrumentId as int,
      price: price == const $CopyWithPlaceholder() || price == null
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as double,
    );
  }
}

extension $ExchangeCopyWith on Exchange {
  /// Returns a callable class that can be used as follows: `instanceOfExchange.copyWith(...)` or like so:`instanceOfExchange.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ExchangeCWProxy get copyWith => _$ExchangeCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetExchangeCollection on Isar {
  IsarCollection<Exchange> get exchanges => this.collection();
}

const ExchangeSchema = CollectionSchema(
  name: r'Exchanges',
  id: 5603377170803459019,
  properties: {
    r'close': PropertySchema(
      id: 0,
      name: r'close',
      type: IsarType.bool,
    ),
    r'count': PropertySchema(
      id: 1,
      name: r'count',
      type: IsarType.double,
    ),
    r'dateCre': PropertySchema(
      id: 2,
      name: r'dateCre',
      type: IsarType.dateTime,
    ),
    r'eNameInstrument': PropertySchema(
      id: 3,
      name: r'eNameInstrument',
      type: IsarType.byte,
      enumMap: _ExchangeeNameInstrumentEnumValueMap,
    ),
    r'hashCode': PropertySchema(
      id: 4,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'instrumentId': PropertySchema(
      id: 5,
      name: r'instrumentId',
      type: IsarType.long,
    ),
    r'price': PropertySchema(
      id: 6,
      name: r'price',
      type: IsarType.double,
    )
  },
  estimateSize: _exchangeEstimateSize,
  serialize: _exchangeSerialize,
  deserialize: _exchangeDeserialize,
  deserializeProp: _exchangeDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _exchangeGetId,
  getLinks: _exchangeGetLinks,
  attach: _exchangeAttach,
  version: '3.0.2',
);

int _exchangeEstimateSize(
  Exchange object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _exchangeSerialize(
  Exchange object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.close);
  writer.writeDouble(offsets[1], object.count);
  writer.writeDateTime(offsets[2], object.dateCre);
  writer.writeByte(offsets[3], object.eNameInstrument.index);
  writer.writeLong(offsets[4], object.hashCode);
  writer.writeLong(offsets[5], object.instrumentId);
  writer.writeDouble(offsets[6], object.price);
}

Exchange _exchangeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Exchange(
    close: reader.readBoolOrNull(offsets[0]) ?? false,
    count: reader.readDouble(offsets[1]),
    dateCre: reader.readDateTime(offsets[2]),
    eNameInstrument: _ExchangeeNameInstrumentValueEnumMap[
            reader.readByteOrNull(offsets[3])] ??
        ENameInstrument.btc,
    id: id,
    instrumentId: reader.readLong(offsets[5]),
    price: reader.readDouble(offsets[6]),
  );
  return object;
}

P _exchangeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (_ExchangeeNameInstrumentValueEnumMap[
              reader.readByteOrNull(offset)] ??
          ENameInstrument.btc) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ExchangeeNameInstrumentEnumValueMap = {
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
const _ExchangeeNameInstrumentValueEnumMap = {
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

Id _exchangeGetId(Exchange object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _exchangeGetLinks(Exchange object) {
  return [];
}

void _exchangeAttach(IsarCollection<dynamic> col, Id id, Exchange object) {}

extension ExchangeQueryWhereSort on QueryBuilder<Exchange, Exchange, QWhere> {
  QueryBuilder<Exchange, Exchange, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ExchangeQueryWhere on QueryBuilder<Exchange, Exchange, QWhereClause> {
  QueryBuilder<Exchange, Exchange, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Exchange, Exchange, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterWhereClause> idBetween(
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

extension ExchangeQueryFilter
    on QueryBuilder<Exchange, Exchange, QFilterCondition> {
  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> closeEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'close',
        value: value,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> countEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'count',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> countGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'count',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> countLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'count',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> countBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'count',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> dateCreEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCre',
        value: value,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> dateCreGreaterThan(
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

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> dateCreLessThan(
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

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> dateCreBetween(
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

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition>
      eNameInstrumentEqualTo(ENameInstrument value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eNameInstrument',
        value: value,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition>
      eNameInstrumentGreaterThan(
    ENameInstrument value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eNameInstrument',
        value: value,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition>
      eNameInstrumentLessThan(
    ENameInstrument value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eNameInstrument',
        value: value,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition>
      eNameInstrumentBetween(
    ENameInstrument lower,
    ENameInstrument upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eNameInstrument',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> instrumentIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'instrumentId',
        value: value,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition>
      instrumentIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'instrumentId',
        value: value,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> instrumentIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'instrumentId',
        value: value,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> instrumentIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'instrumentId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> priceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> priceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> priceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterFilterCondition> priceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension ExchangeQueryObject
    on QueryBuilder<Exchange, Exchange, QFilterCondition> {}

extension ExchangeQueryLinks
    on QueryBuilder<Exchange, Exchange, QFilterCondition> {}

extension ExchangeQuerySortBy on QueryBuilder<Exchange, Exchange, QSortBy> {
  QueryBuilder<Exchange, Exchange, QAfterSortBy> sortByClose() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'close', Sort.asc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> sortByCloseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'close', Sort.desc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> sortByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> sortByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> sortByDateCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCre', Sort.asc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> sortByDateCreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCre', Sort.desc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> sortByENameInstrument() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eNameInstrument', Sort.asc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> sortByENameInstrumentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eNameInstrument', Sort.desc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> sortByInstrumentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instrumentId', Sort.asc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> sortByInstrumentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instrumentId', Sort.desc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }
}

extension ExchangeQuerySortThenBy
    on QueryBuilder<Exchange, Exchange, QSortThenBy> {
  QueryBuilder<Exchange, Exchange, QAfterSortBy> thenByClose() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'close', Sort.asc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> thenByCloseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'close', Sort.desc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> thenByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> thenByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> thenByDateCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCre', Sort.asc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> thenByDateCreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCre', Sort.desc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> thenByENameInstrument() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eNameInstrument', Sort.asc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> thenByENameInstrumentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eNameInstrument', Sort.desc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> thenByInstrumentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instrumentId', Sort.asc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> thenByInstrumentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instrumentId', Sort.desc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<Exchange, Exchange, QAfterSortBy> thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }
}

extension ExchangeQueryWhereDistinct
    on QueryBuilder<Exchange, Exchange, QDistinct> {
  QueryBuilder<Exchange, Exchange, QDistinct> distinctByClose() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'close');
    });
  }

  QueryBuilder<Exchange, Exchange, QDistinct> distinctByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'count');
    });
  }

  QueryBuilder<Exchange, Exchange, QDistinct> distinctByDateCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCre');
    });
  }

  QueryBuilder<Exchange, Exchange, QDistinct> distinctByENameInstrument() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eNameInstrument');
    });
  }

  QueryBuilder<Exchange, Exchange, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<Exchange, Exchange, QDistinct> distinctByInstrumentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'instrumentId');
    });
  }

  QueryBuilder<Exchange, Exchange, QDistinct> distinctByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price');
    });
  }
}

extension ExchangeQueryProperty
    on QueryBuilder<Exchange, Exchange, QQueryProperty> {
  QueryBuilder<Exchange, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Exchange, bool, QQueryOperations> closeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'close');
    });
  }

  QueryBuilder<Exchange, double, QQueryOperations> countProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'count');
    });
  }

  QueryBuilder<Exchange, DateTime, QQueryOperations> dateCreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCre');
    });
  }

  QueryBuilder<Exchange, ENameInstrument, QQueryOperations>
      eNameInstrumentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eNameInstrument');
    });
  }

  QueryBuilder<Exchange, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<Exchange, int, QQueryOperations> instrumentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'instrumentId');
    });
  }

  QueryBuilder<Exchange, double, QQueryOperations> priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Exchange _$ExchangeFromJson(Map<String, dynamic> json) => Exchange(
      id: json['id'] as int? ?? Isar.autoIncrement,
      instrumentId: json['instrumentId'] as int,
      eNameInstrument:
          $enumDecode(_$ENameInstrumentEnumMap, json['eNameInstrument']),
      count: (json['count'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      dateCre: DateTime.parse(json['dateCre'] as String),
      close: json['close'] as bool? ?? false,
    );

Map<String, dynamic> _$ExchangeToJson(Exchange instance) => <String, dynamic>{
      'id': instance.id,
      'instrumentId': instance.instrumentId,
      'eNameInstrument': _$ENameInstrumentEnumMap[instance.eNameInstrument]!,
      'count': instance.count,
      'price': instance.price,
      'dateCre': instance.dateCre.toIso8601String(),
      'close': instance.close,
    };

const _$ENameInstrumentEnumMap = {
  ENameInstrument.btc: 'btc',
  ENameInstrument.eth: 'eth',
  ENameInstrument.bnb: 'bnb',
  ENameInstrument.hero: 'hero',
  ENameInstrument.dome: 'dome',
  ENameInstrument.oil: 'oil',
  ENameInstrument.gold: 'gold',
  ENameInstrument.silver: 'silver',
  ENameInstrument.tesla: 'tesla',
  ENameInstrument.apple: 'apple',
};
