// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candle.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CandleCWProxy {
  Candle close(double close);

  Candle dateTime(DateTime dateTime);

  Candle high(double high);

  Candle id(int id);

  Candle instrument(ENameInstrument instrument);

  Candle low(double low);

  Candle open(double open);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Candle(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Candle(...).copyWith(id: 12, name: "My name")
  /// ````
  Candle call({
    double? close,
    DateTime? dateTime,
    double? high,
    int? id,
    ENameInstrument? instrument,
    double? low,
    double? open,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCandle.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCandle.copyWith.fieldName(...)`
class _$CandleCWProxyImpl implements _$CandleCWProxy {
  final Candle _value;

  const _$CandleCWProxyImpl(this._value);

  @override
  Candle close(double close) => this(close: close);

  @override
  Candle dateTime(DateTime dateTime) => this(dateTime: dateTime);

  @override
  Candle high(double high) => this(high: high);

  @override
  Candle id(int id) => this(id: id);

  @override
  Candle instrument(ENameInstrument instrument) => this(instrument: instrument);

  @override
  Candle low(double low) => this(low: low);

  @override
  Candle open(double open) => this(open: open);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Candle(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Candle(...).copyWith(id: 12, name: "My name")
  /// ````
  Candle call({
    Object? close = const $CopyWithPlaceholder(),
    Object? dateTime = const $CopyWithPlaceholder(),
    Object? high = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? instrument = const $CopyWithPlaceholder(),
    Object? low = const $CopyWithPlaceholder(),
    Object? open = const $CopyWithPlaceholder(),
  }) {
    return Candle(
      close: close == const $CopyWithPlaceholder() || close == null
          ? _value.close
          // ignore: cast_nullable_to_non_nullable
          : close as double,
      dateTime: dateTime == const $CopyWithPlaceholder() || dateTime == null
          ? _value.dateTime
          // ignore: cast_nullable_to_non_nullable
          : dateTime as DateTime,
      high: high == const $CopyWithPlaceholder() || high == null
          ? _value.high
          // ignore: cast_nullable_to_non_nullable
          : high as double,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      instrument:
          instrument == const $CopyWithPlaceholder() || instrument == null
              ? _value.instrument
              // ignore: cast_nullable_to_non_nullable
              : instrument as ENameInstrument,
      low: low == const $CopyWithPlaceholder() || low == null
          ? _value.low
          // ignore: cast_nullable_to_non_nullable
          : low as double,
      open: open == const $CopyWithPlaceholder() || open == null
          ? _value.open
          // ignore: cast_nullable_to_non_nullable
          : open as double,
    );
  }
}

extension $CandleCopyWith on Candle {
  /// Returns a callable class that can be used as follows: `instanceOfCandle.copyWith(...)` or like so:`instanceOfCandle.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CandleCWProxy get copyWith => _$CandleCWProxyImpl(this);
}

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
    r'instrument_dateTime': IndexSchema(
      id: 326737848939681596,
      name: r'instrument_dateTime',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'instrument',
          type: IndexType.value,
          caseSensitive: false,
        ),
        IndexPropertySchema(
          name: r'dateTime',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'dateTime': IndexSchema(
      id: -138851979697481250,
      name: r'dateTime',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'dateTime',
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
  version: '3.0.2',
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
  return object.id;
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

  QueryBuilder<Candle, Candle, QAfterWhere> anyInstrumentDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'instrument_dateTime'),
      );
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhere> anyDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'dateTime'),
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

  QueryBuilder<Candle, Candle, QAfterWhereClause> instrumentEqualToAnyDateTime(
      ENameInstrument instrument) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'instrument_dateTime',
        value: [instrument],
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      instrumentNotEqualToAnyDateTime(ENameInstrument instrument) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrument_dateTime',
              lower: [],
              upper: [instrument],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrument_dateTime',
              lower: [instrument],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrument_dateTime',
              lower: [instrument],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrument_dateTime',
              lower: [],
              upper: [instrument],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      instrumentGreaterThanAnyDateTime(
    ENameInstrument instrument, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'instrument_dateTime',
        lower: [instrument],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause> instrumentLessThanAnyDateTime(
    ENameInstrument instrument, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'instrument_dateTime',
        lower: [],
        upper: [instrument],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause> instrumentBetweenAnyDateTime(
    ENameInstrument lowerInstrument,
    ENameInstrument upperInstrument, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'instrument_dateTime',
        lower: [lowerInstrument],
        includeLower: includeLower,
        upper: [upperInstrument],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause> instrumentDateTimeEqualTo(
      ENameInstrument instrument, DateTime dateTime) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'instrument_dateTime',
        value: [instrument, dateTime],
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      instrumentEqualToDateTimeNotEqualTo(
          ENameInstrument instrument, DateTime dateTime) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrument_dateTime',
              lower: [instrument],
              upper: [instrument, dateTime],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrument_dateTime',
              lower: [instrument, dateTime],
              includeLower: false,
              upper: [instrument],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrument_dateTime',
              lower: [instrument, dateTime],
              includeLower: false,
              upper: [instrument],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrument_dateTime',
              lower: [instrument],
              upper: [instrument, dateTime],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      instrumentEqualToDateTimeGreaterThan(
    ENameInstrument instrument,
    DateTime dateTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'instrument_dateTime',
        lower: [instrument, dateTime],
        includeLower: include,
        upper: [instrument],
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      instrumentEqualToDateTimeLessThan(
    ENameInstrument instrument,
    DateTime dateTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'instrument_dateTime',
        lower: [instrument],
        upper: [instrument, dateTime],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      instrumentEqualToDateTimeBetween(
    ENameInstrument instrument,
    DateTime lowerDateTime,
    DateTime upperDateTime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'instrument_dateTime',
        lower: [instrument, lowerDateTime],
        includeLower: includeLower,
        upper: [instrument, upperDateTime],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause> dateTimeEqualTo(
      DateTime dateTime) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'dateTime',
        value: [dateTime],
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause> dateTimeNotEqualTo(
      DateTime dateTime) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateTime',
              lower: [],
              upper: [dateTime],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateTime',
              lower: [dateTime],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateTime',
              lower: [dateTime],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateTime',
              lower: [],
              upper: [dateTime],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause> dateTimeGreaterThan(
    DateTime dateTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dateTime',
        lower: [dateTime],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause> dateTimeLessThan(
    DateTime dateTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dateTime',
        lower: [],
        upper: [dateTime],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause> dateTimeBetween(
    DateTime lowerDateTime,
    DateTime upperDateTime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dateTime',
        lower: [lowerDateTime],
        includeLower: includeLower,
        upper: [upperDateTime],
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

  QueryBuilder<Candle, Candle, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Candle, Candle, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Candle, Candle, QAfterFilterCondition> idBetween(
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Candle _$CandleFromJson(Map<String, dynamic> json) => Candle(
      id: json['id'] as int? ?? Isar.autoIncrement,
      instrument: $enumDecode(_$ENameInstrumentEnumMap, json['instrument']),
      dateTime: DateTime.parse(json['dateTime'] as String),
      open: (json['open'] as num).toDouble(),
      high: (json['high'] as num).toDouble(),
      low: (json['low'] as num).toDouble(),
      close: (json['close'] as num).toDouble(),
    );

Map<String, dynamic> _$CandleToJson(Candle instance) => <String, dynamic>{
      'id': instance.id,
      'instrument': _$ENameInstrumentEnumMap[instance.instrument]!,
      'dateTime': instance.dateTime.toIso8601String(),
      'open': instance.open,
      'high': instance.high,
      'low': instance.low,
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
