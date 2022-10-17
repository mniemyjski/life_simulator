// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candle.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CandleCWProxy {
  Candle close(double close);

  Candle dateTime(DateTime dateTime);

  Candle eNameInstrument(ENameInstrument eNameInstrument);

  Candle high(double high);

  Candle id(int id);

  Candle instrumentId(int instrumentId);

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
    ENameInstrument? eNameInstrument,
    double? high,
    int? id,
    int? instrumentId,
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
  Candle eNameInstrument(ENameInstrument eNameInstrument) =>
      this(eNameInstrument: eNameInstrument);

  @override
  Candle high(double high) => this(high: high);

  @override
  Candle id(int id) => this(id: id);

  @override
  Candle instrumentId(int instrumentId) => this(instrumentId: instrumentId);

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
    Object? eNameInstrument = const $CopyWithPlaceholder(),
    Object? high = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? instrumentId = const $CopyWithPlaceholder(),
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
      eNameInstrument: eNameInstrument == const $CopyWithPlaceholder() ||
              eNameInstrument == null
          ? _value.eNameInstrument
          // ignore: cast_nullable_to_non_nullable
          : eNameInstrument as ENameInstrument,
      high: high == const $CopyWithPlaceholder() || high == null
          ? _value.high
          // ignore: cast_nullable_to_non_nullable
          : high as double,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      instrumentId:
          instrumentId == const $CopyWithPlaceholder() || instrumentId == null
              ? _value.instrumentId
              // ignore: cast_nullable_to_non_nullable
              : instrumentId as int,
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
  name: r'Courses',
  id: 8479178045851352164,
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
    r'eNameInstrument': PropertySchema(
      id: 2,
      name: r'eNameInstrument',
      type: IsarType.byte,
      enumMap: _CandleeNameInstrumentEnumValueMap,
    ),
    r'hashCode': PropertySchema(
      id: 3,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'high': PropertySchema(
      id: 4,
      name: r'high',
      type: IsarType.double,
    ),
    r'instrumentId': PropertySchema(
      id: 5,
      name: r'instrumentId',
      type: IsarType.long,
    ),
    r'low': PropertySchema(
      id: 6,
      name: r'low',
      type: IsarType.double,
    ),
    r'open': PropertySchema(
      id: 7,
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
    r'instrumentId_dateTime': IndexSchema(
      id: 17213871989371454,
      name: r'instrumentId_dateTime',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'instrumentId',
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
    r'eNameInstrument_dateTime': IndexSchema(
      id: 2303082242461299481,
      name: r'eNameInstrument_dateTime',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'eNameInstrument',
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
  writer.writeByte(offsets[2], object.eNameInstrument.index);
  writer.writeLong(offsets[3], object.hashCode);
  writer.writeDouble(offsets[4], object.high);
  writer.writeLong(offsets[5], object.instrumentId);
  writer.writeDouble(offsets[6], object.low);
  writer.writeDouble(offsets[7], object.open);
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
    eNameInstrument:
        _CandleeNameInstrumentValueEnumMap[reader.readByteOrNull(offsets[2])] ??
            ENameInstrument.btc,
    high: reader.readDouble(offsets[4]),
    id: id,
    instrumentId: reader.readLong(offsets[5]),
    low: reader.readDouble(offsets[6]),
    open: reader.readDouble(offsets[7]),
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
      return (_CandleeNameInstrumentValueEnumMap[
              reader.readByteOrNull(offset)] ??
          ENameInstrument.btc) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _CandleeNameInstrumentEnumValueMap = {
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
const _CandleeNameInstrumentValueEnumMap = {
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

  QueryBuilder<Candle, Candle, QAfterWhere> anyInstrumentIdDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'instrumentId_dateTime'),
      );
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhere> anyENameInstrumentDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'eNameInstrument_dateTime'),
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

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      instrumentIdEqualToAnyDateTime(int instrumentId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'instrumentId_dateTime',
        value: [instrumentId],
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      instrumentIdNotEqualToAnyDateTime(int instrumentId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrumentId_dateTime',
              lower: [],
              upper: [instrumentId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrumentId_dateTime',
              lower: [instrumentId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrumentId_dateTime',
              lower: [instrumentId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrumentId_dateTime',
              lower: [],
              upper: [instrumentId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      instrumentIdGreaterThanAnyDateTime(
    int instrumentId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'instrumentId_dateTime',
        lower: [instrumentId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      instrumentIdLessThanAnyDateTime(
    int instrumentId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'instrumentId_dateTime',
        lower: [],
        upper: [instrumentId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      instrumentIdBetweenAnyDateTime(
    int lowerInstrumentId,
    int upperInstrumentId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'instrumentId_dateTime',
        lower: [lowerInstrumentId],
        includeLower: includeLower,
        upper: [upperInstrumentId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause> instrumentIdDateTimeEqualTo(
      int instrumentId, DateTime dateTime) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'instrumentId_dateTime',
        value: [instrumentId, dateTime],
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      instrumentIdEqualToDateTimeNotEqualTo(
          int instrumentId, DateTime dateTime) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrumentId_dateTime',
              lower: [instrumentId],
              upper: [instrumentId, dateTime],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrumentId_dateTime',
              lower: [instrumentId, dateTime],
              includeLower: false,
              upper: [instrumentId],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrumentId_dateTime',
              lower: [instrumentId, dateTime],
              includeLower: false,
              upper: [instrumentId],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'instrumentId_dateTime',
              lower: [instrumentId],
              upper: [instrumentId, dateTime],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      instrumentIdEqualToDateTimeGreaterThan(
    int instrumentId,
    DateTime dateTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'instrumentId_dateTime',
        lower: [instrumentId, dateTime],
        includeLower: include,
        upper: [instrumentId],
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      instrumentIdEqualToDateTimeLessThan(
    int instrumentId,
    DateTime dateTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'instrumentId_dateTime',
        lower: [instrumentId],
        upper: [instrumentId, dateTime],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      instrumentIdEqualToDateTimeBetween(
    int instrumentId,
    DateTime lowerDateTime,
    DateTime upperDateTime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'instrumentId_dateTime',
        lower: [instrumentId, lowerDateTime],
        includeLower: includeLower,
        upper: [instrumentId, upperDateTime],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      eNameInstrumentEqualToAnyDateTime(ENameInstrument eNameInstrument) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'eNameInstrument_dateTime',
        value: [eNameInstrument],
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      eNameInstrumentNotEqualToAnyDateTime(ENameInstrument eNameInstrument) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eNameInstrument_dateTime',
              lower: [],
              upper: [eNameInstrument],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eNameInstrument_dateTime',
              lower: [eNameInstrument],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eNameInstrument_dateTime',
              lower: [eNameInstrument],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eNameInstrument_dateTime',
              lower: [],
              upper: [eNameInstrument],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      eNameInstrumentGreaterThanAnyDateTime(
    ENameInstrument eNameInstrument, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'eNameInstrument_dateTime',
        lower: [eNameInstrument],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      eNameInstrumentLessThanAnyDateTime(
    ENameInstrument eNameInstrument, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'eNameInstrument_dateTime',
        lower: [],
        upper: [eNameInstrument],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      eNameInstrumentBetweenAnyDateTime(
    ENameInstrument lowerENameInstrument,
    ENameInstrument upperENameInstrument, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'eNameInstrument_dateTime',
        lower: [lowerENameInstrument],
        includeLower: includeLower,
        upper: [upperENameInstrument],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      eNameInstrumentDateTimeEqualTo(
          ENameInstrument eNameInstrument, DateTime dateTime) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'eNameInstrument_dateTime',
        value: [eNameInstrument, dateTime],
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      eNameInstrumentEqualToDateTimeNotEqualTo(
          ENameInstrument eNameInstrument, DateTime dateTime) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eNameInstrument_dateTime',
              lower: [eNameInstrument],
              upper: [eNameInstrument, dateTime],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eNameInstrument_dateTime',
              lower: [eNameInstrument, dateTime],
              includeLower: false,
              upper: [eNameInstrument],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eNameInstrument_dateTime',
              lower: [eNameInstrument, dateTime],
              includeLower: false,
              upper: [eNameInstrument],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eNameInstrument_dateTime',
              lower: [eNameInstrument],
              upper: [eNameInstrument, dateTime],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      eNameInstrumentEqualToDateTimeGreaterThan(
    ENameInstrument eNameInstrument,
    DateTime dateTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'eNameInstrument_dateTime',
        lower: [eNameInstrument, dateTime],
        includeLower: include,
        upper: [eNameInstrument],
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      eNameInstrumentEqualToDateTimeLessThan(
    ENameInstrument eNameInstrument,
    DateTime dateTime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'eNameInstrument_dateTime',
        lower: [eNameInstrument],
        upper: [eNameInstrument, dateTime],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterWhereClause>
      eNameInstrumentEqualToDateTimeBetween(
    ENameInstrument eNameInstrument,
    DateTime lowerDateTime,
    DateTime upperDateTime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'eNameInstrument_dateTime',
        lower: [eNameInstrument, lowerDateTime],
        includeLower: includeLower,
        upper: [eNameInstrument, upperDateTime],
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

  QueryBuilder<Candle, Candle, QAfterFilterCondition> eNameInstrumentEqualTo(
      ENameInstrument value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eNameInstrument',
        value: value,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition>
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

  QueryBuilder<Candle, Candle, QAfterFilterCondition> eNameInstrumentLessThan(
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

  QueryBuilder<Candle, Candle, QAfterFilterCondition> eNameInstrumentBetween(
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

  QueryBuilder<Candle, Candle, QAfterFilterCondition> instrumentIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'instrumentId',
        value: value,
      ));
    });
  }

  QueryBuilder<Candle, Candle, QAfterFilterCondition> instrumentIdGreaterThan(
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

  QueryBuilder<Candle, Candle, QAfterFilterCondition> instrumentIdLessThan(
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

  QueryBuilder<Candle, Candle, QAfterFilterCondition> instrumentIdBetween(
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

  QueryBuilder<Candle, Candle, QAfterSortBy> sortByENameInstrument() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eNameInstrument', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> sortByENameInstrumentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eNameInstrument', Sort.desc);
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

  QueryBuilder<Candle, Candle, QAfterSortBy> sortByInstrumentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instrumentId', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> sortByInstrumentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instrumentId', Sort.desc);
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

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByENameInstrument() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eNameInstrument', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByENameInstrumentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eNameInstrument', Sort.desc);
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

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByInstrumentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instrumentId', Sort.asc);
    });
  }

  QueryBuilder<Candle, Candle, QAfterSortBy> thenByInstrumentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instrumentId', Sort.desc);
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

  QueryBuilder<Candle, Candle, QDistinct> distinctByENameInstrument() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eNameInstrument');
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

  QueryBuilder<Candle, Candle, QDistinct> distinctByInstrumentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'instrumentId');
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

  QueryBuilder<Candle, ENameInstrument, QQueryOperations>
      eNameInstrumentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eNameInstrument');
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

  QueryBuilder<Candle, int, QQueryOperations> instrumentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'instrumentId');
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
      instrumentId: json['instrumentId'] as int,
      eNameInstrument:
          $enumDecode(_$ENameInstrumentEnumMap, json['eNameInstrument']),
      dateTime: DateTime.parse(json['dateTime'] as String),
      open: (json['open'] as num).toDouble(),
      high: (json['high'] as num).toDouble(),
      low: (json['low'] as num).toDouble(),
      close: (json['close'] as num).toDouble(),
    );

Map<String, dynamic> _$CandleToJson(Candle instance) => <String, dynamic>{
      'id': instance.id,
      'instrumentId': instance.instrumentId,
      'eNameInstrument': _$ENameInstrumentEnumMap[instance.eNameInstrument]!,
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
