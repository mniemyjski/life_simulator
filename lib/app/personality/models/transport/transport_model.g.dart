// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TransportCWProxy {
  Transport bonusToLearn(int bonusToLearn);

  Transport bonusToRelax(int bonusToRelax);

  Transport bonusToSleep(int bonusToSleep);

  Transport brand(String brand);

  Transport commuting(int commuting);

  Transport cost(double cost);

  Transport dateBuy(DateTime? dateBuy);

  Transport eTypeTransport(ETypeTransport eTypeTransport);

  Transport monthlyCost(double monthlyCost);

  Transport name(String name);

  Transport uid(String uid);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Transport(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Transport(...).copyWith(id: 12, name: "My name")
  /// ````
  Transport call({
    int? bonusToLearn,
    int? bonusToRelax,
    int? bonusToSleep,
    String? brand,
    int? commuting,
    double? cost,
    DateTime? dateBuy,
    ETypeTransport? eTypeTransport,
    double? monthlyCost,
    String? name,
    String? uid,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTransport.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTransport.copyWith.fieldName(...)`
class _$TransportCWProxyImpl implements _$TransportCWProxy {
  final Transport _value;

  const _$TransportCWProxyImpl(this._value);

  @override
  Transport bonusToLearn(int bonusToLearn) => this(bonusToLearn: bonusToLearn);

  @override
  Transport bonusToRelax(int bonusToRelax) => this(bonusToRelax: bonusToRelax);

  @override
  Transport bonusToSleep(int bonusToSleep) => this(bonusToSleep: bonusToSleep);

  @override
  Transport brand(String brand) => this(brand: brand);

  @override
  Transport commuting(int commuting) => this(commuting: commuting);

  @override
  Transport cost(double cost) => this(cost: cost);

  @override
  Transport dateBuy(DateTime? dateBuy) => this(dateBuy: dateBuy);

  @override
  Transport eTypeTransport(ETypeTransport eTypeTransport) =>
      this(eTypeTransport: eTypeTransport);

  @override
  Transport monthlyCost(double monthlyCost) => this(monthlyCost: monthlyCost);

  @override
  Transport name(String name) => this(name: name);

  @override
  Transport uid(String uid) => this(uid: uid);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Transport(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Transport(...).copyWith(id: 12, name: "My name")
  /// ````
  Transport call({
    Object? bonusToLearn = const $CopyWithPlaceholder(),
    Object? bonusToRelax = const $CopyWithPlaceholder(),
    Object? bonusToSleep = const $CopyWithPlaceholder(),
    Object? brand = const $CopyWithPlaceholder(),
    Object? commuting = const $CopyWithPlaceholder(),
    Object? cost = const $CopyWithPlaceholder(),
    Object? dateBuy = const $CopyWithPlaceholder(),
    Object? eTypeTransport = const $CopyWithPlaceholder(),
    Object? monthlyCost = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? uid = const $CopyWithPlaceholder(),
  }) {
    return Transport(
      bonusToLearn:
          bonusToLearn == const $CopyWithPlaceholder() || bonusToLearn == null
              ? _value.bonusToLearn
              // ignore: cast_nullable_to_non_nullable
              : bonusToLearn as int,
      bonusToRelax:
          bonusToRelax == const $CopyWithPlaceholder() || bonusToRelax == null
              ? _value.bonusToRelax
              // ignore: cast_nullable_to_non_nullable
              : bonusToRelax as int,
      bonusToSleep:
          bonusToSleep == const $CopyWithPlaceholder() || bonusToSleep == null
              ? _value.bonusToSleep
              // ignore: cast_nullable_to_non_nullable
              : bonusToSleep as int,
      brand: brand == const $CopyWithPlaceholder() || brand == null
          ? _value.brand
          // ignore: cast_nullable_to_non_nullable
          : brand as String,
      commuting: commuting == const $CopyWithPlaceholder() || commuting == null
          ? _value.commuting
          // ignore: cast_nullable_to_non_nullable
          : commuting as int,
      cost: cost == const $CopyWithPlaceholder() || cost == null
          ? _value.cost
          // ignore: cast_nullable_to_non_nullable
          : cost as double,
      dateBuy: dateBuy == const $CopyWithPlaceholder()
          ? _value.dateBuy
          // ignore: cast_nullable_to_non_nullable
          : dateBuy as DateTime?,
      eTypeTransport: eTypeTransport == const $CopyWithPlaceholder() ||
              eTypeTransport == null
          ? _value.eTypeTransport
          // ignore: cast_nullable_to_non_nullable
          : eTypeTransport as ETypeTransport,
      monthlyCost:
          monthlyCost == const $CopyWithPlaceholder() || monthlyCost == null
              ? _value.monthlyCost
              // ignore: cast_nullable_to_non_nullable
              : monthlyCost as double,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      uid: uid == const $CopyWithPlaceholder() || uid == null
          ? _value.uid
          // ignore: cast_nullable_to_non_nullable
          : uid as String,
    );
  }
}

extension $TransportCopyWith on Transport {
  /// Returns a callable class that can be used as follows: `instanceOfTransport.copyWith(...)` or like so:`instanceOfTransport.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TransportCWProxy get copyWith => _$TransportCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetTransportCollection on Isar {
  IsarCollection<Transport> get transport => this.collection();
}

const TransportSchema = CollectionSchema(
  name: r'Transport',
  id: 6878705723785060898,
  properties: {
    r'bonusToLearn': PropertySchema(
      id: 0,
      name: r'bonusToLearn',
      type: IsarType.long,
    ),
    r'bonusToRelax': PropertySchema(
      id: 1,
      name: r'bonusToRelax',
      type: IsarType.long,
    ),
    r'bonusToSleep': PropertySchema(
      id: 2,
      name: r'bonusToSleep',
      type: IsarType.long,
    ),
    r'brand': PropertySchema(
      id: 3,
      name: r'brand',
      type: IsarType.string,
    ),
    r'commuting': PropertySchema(
      id: 4,
      name: r'commuting',
      type: IsarType.long,
    ),
    r'cost': PropertySchema(
      id: 5,
      name: r'cost',
      type: IsarType.double,
    ),
    r'dateBuy': PropertySchema(
      id: 6,
      name: r'dateBuy',
      type: IsarType.dateTime,
    ),
    r'eTypeTransport': PropertySchema(
      id: 7,
      name: r'eTypeTransport',
      type: IsarType.byte,
      enumMap: _TransporteTypeTransportEnumValueMap,
    ),
    r'hashCode': PropertySchema(
      id: 8,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'monthlyCost': PropertySchema(
      id: 9,
      name: r'monthlyCost',
      type: IsarType.double,
    ),
    r'name': PropertySchema(
      id: 10,
      name: r'name',
      type: IsarType.string,
    ),
    r'uid': PropertySchema(
      id: 11,
      name: r'uid',
      type: IsarType.string,
    )
  },
  estimateSize: _transportEstimateSize,
  serialize: _transportSerialize,
  deserialize: _transportDeserialize,
  deserializeProp: _transportDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _transportGetId,
  getLinks: _transportGetLinks,
  attach: _transportAttach,
  version: '3.0.5',
);

int _transportEstimateSize(
  Transport object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.brand.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.uid.length * 3;
  return bytesCount;
}

void _transportSerialize(
  Transport object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.bonusToLearn);
  writer.writeLong(offsets[1], object.bonusToRelax);
  writer.writeLong(offsets[2], object.bonusToSleep);
  writer.writeString(offsets[3], object.brand);
  writer.writeLong(offsets[4], object.commuting);
  writer.writeDouble(offsets[5], object.cost);
  writer.writeDateTime(offsets[6], object.dateBuy);
  writer.writeByte(offsets[7], object.eTypeTransport.index);
  writer.writeLong(offsets[8], object.hashCode);
  writer.writeDouble(offsets[9], object.monthlyCost);
  writer.writeString(offsets[10], object.name);
  writer.writeString(offsets[11], object.uid);
}

Transport _transportDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Transport(
    bonusToLearn: reader.readLongOrNull(offsets[0]) ?? 0,
    bonusToRelax: reader.readLongOrNull(offsets[1]) ?? 0,
    bonusToSleep: reader.readLongOrNull(offsets[2]) ?? 0,
    brand: reader.readString(offsets[3]),
    commuting: reader.readLongOrNull(offsets[4]) ?? 0,
    cost: reader.readDouble(offsets[5]),
    dateBuy: reader.readDateTimeOrNull(offsets[6]),
    eTypeTransport: _TransporteTypeTransportValueEnumMap[
            reader.readByteOrNull(offsets[7])] ??
        ETypeTransport.publicTransport,
    monthlyCost: reader.readDouble(offsets[9]),
    name: reader.readString(offsets[10]),
    uid: reader.readString(offsets[11]),
  );
  return object;
}

P _transportDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 2:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (_TransporteTypeTransportValueEnumMap[
              reader.readByteOrNull(offset)] ??
          ETypeTransport.publicTransport) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _TransporteTypeTransportEnumValueMap = {
  'publicTransport': 0,
  'car': 1,
};
const _TransporteTypeTransportValueEnumMap = {
  0: ETypeTransport.publicTransport,
  1: ETypeTransport.car,
};

Id _transportGetId(Transport object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _transportGetLinks(Transport object) {
  return [];
}

void _transportAttach(IsarCollection<dynamic> col, Id id, Transport object) {}

extension TransportQueryWhereSort
    on QueryBuilder<Transport, Transport, QWhere> {
  QueryBuilder<Transport, Transport, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TransportQueryWhere
    on QueryBuilder<Transport, Transport, QWhereClause> {
  QueryBuilder<Transport, Transport, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Transport, Transport, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Transport, Transport, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Transport, Transport, QAfterWhereClause> idBetween(
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

extension TransportQueryFilter
    on QueryBuilder<Transport, Transport, QFilterCondition> {
  QueryBuilder<Transport, Transport, QAfterFilterCondition> bonusToLearnEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bonusToLearn',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition>
      bonusToLearnGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bonusToLearn',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition>
      bonusToLearnLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bonusToLearn',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> bonusToLearnBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bonusToLearn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> bonusToRelaxEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bonusToRelax',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition>
      bonusToRelaxGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bonusToRelax',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition>
      bonusToRelaxLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bonusToRelax',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> bonusToRelaxBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bonusToRelax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> bonusToSleepEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bonusToSleep',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition>
      bonusToSleepGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bonusToSleep',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition>
      bonusToSleepLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bonusToSleep',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> bonusToSleepBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bonusToSleep',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> brandEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> brandGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> brandLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> brandBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'brand',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> brandStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> brandEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> brandContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> brandMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'brand',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> brandIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brand',
        value: '',
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> brandIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'brand',
        value: '',
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> commutingEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commuting',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition>
      commutingGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'commuting',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> commutingLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'commuting',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> commutingBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'commuting',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> costEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> costGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> costLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> costBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cost',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> dateBuyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateBuy',
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> dateBuyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateBuy',
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> dateBuyEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateBuy',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> dateBuyGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateBuy',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> dateBuyLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateBuy',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> dateBuyBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateBuy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition>
      eTypeTransportEqualTo(ETypeTransport value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eTypeTransport',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition>
      eTypeTransportGreaterThan(
    ETypeTransport value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eTypeTransport',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition>
      eTypeTransportLessThan(
    ETypeTransport value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eTypeTransport',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition>
      eTypeTransportBetween(
    ETypeTransport lower,
    ETypeTransport upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eTypeTransport',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<Transport, Transport, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<Transport, Transport, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<Transport, Transport, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Transport, Transport, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Transport, Transport, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Transport, Transport, QAfterFilterCondition> monthlyCostEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'monthlyCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition>
      monthlyCostGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'monthlyCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> monthlyCostLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'monthlyCost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> monthlyCostBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'monthlyCost',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> uidEqualTo(
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

  QueryBuilder<Transport, Transport, QAfterFilterCondition> uidGreaterThan(
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

  QueryBuilder<Transport, Transport, QAfterFilterCondition> uidLessThan(
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

  QueryBuilder<Transport, Transport, QAfterFilterCondition> uidBetween(
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

  QueryBuilder<Transport, Transport, QAfterFilterCondition> uidStartsWith(
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

  QueryBuilder<Transport, Transport, QAfterFilterCondition> uidEndsWith(
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

  QueryBuilder<Transport, Transport, QAfterFilterCondition> uidContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> uidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> uidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uid',
        value: '',
      ));
    });
  }

  QueryBuilder<Transport, Transport, QAfterFilterCondition> uidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uid',
        value: '',
      ));
    });
  }
}

extension TransportQueryObject
    on QueryBuilder<Transport, Transport, QFilterCondition> {}

extension TransportQueryLinks
    on QueryBuilder<Transport, Transport, QFilterCondition> {}

extension TransportQuerySortBy on QueryBuilder<Transport, Transport, QSortBy> {
  QueryBuilder<Transport, Transport, QAfterSortBy> sortByBonusToLearn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToLearn', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByBonusToLearnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToLearn', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByBonusToRelax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToRelax', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByBonusToRelaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToRelax', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByBonusToSleep() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToSleep', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByBonusToSleepDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToSleep', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByCommuting() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commuting', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByCommutingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commuting', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByDateBuy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateBuy', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByDateBuyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateBuy', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByETypeTransport() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeTransport', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByETypeTransportDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeTransport', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByMonthlyCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monthlyCost', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByMonthlyCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monthlyCost', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByUid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> sortByUidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.desc);
    });
  }
}

extension TransportQuerySortThenBy
    on QueryBuilder<Transport, Transport, QSortThenBy> {
  QueryBuilder<Transport, Transport, QAfterSortBy> thenByBonusToLearn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToLearn', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByBonusToLearnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToLearn', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByBonusToRelax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToRelax', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByBonusToRelaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToRelax', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByBonusToSleep() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToSleep', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByBonusToSleepDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToSleep', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByCommuting() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commuting', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByCommutingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commuting', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByDateBuy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateBuy', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByDateBuyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateBuy', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByETypeTransport() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeTransport', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByETypeTransportDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeTransport', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByMonthlyCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monthlyCost', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByMonthlyCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monthlyCost', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByUid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.asc);
    });
  }

  QueryBuilder<Transport, Transport, QAfterSortBy> thenByUidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.desc);
    });
  }
}

extension TransportQueryWhereDistinct
    on QueryBuilder<Transport, Transport, QDistinct> {
  QueryBuilder<Transport, Transport, QDistinct> distinctByBonusToLearn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bonusToLearn');
    });
  }

  QueryBuilder<Transport, Transport, QDistinct> distinctByBonusToRelax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bonusToRelax');
    });
  }

  QueryBuilder<Transport, Transport, QDistinct> distinctByBonusToSleep() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bonusToSleep');
    });
  }

  QueryBuilder<Transport, Transport, QDistinct> distinctByBrand(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'brand', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Transport, Transport, QDistinct> distinctByCommuting() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'commuting');
    });
  }

  QueryBuilder<Transport, Transport, QDistinct> distinctByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cost');
    });
  }

  QueryBuilder<Transport, Transport, QDistinct> distinctByDateBuy() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateBuy');
    });
  }

  QueryBuilder<Transport, Transport, QDistinct> distinctByETypeTransport() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eTypeTransport');
    });
  }

  QueryBuilder<Transport, Transport, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<Transport, Transport, QDistinct> distinctByMonthlyCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'monthlyCost');
    });
  }

  QueryBuilder<Transport, Transport, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Transport, Transport, QDistinct> distinctByUid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uid', caseSensitive: caseSensitive);
    });
  }
}

extension TransportQueryProperty
    on QueryBuilder<Transport, Transport, QQueryProperty> {
  QueryBuilder<Transport, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Transport, int, QQueryOperations> bonusToLearnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bonusToLearn');
    });
  }

  QueryBuilder<Transport, int, QQueryOperations> bonusToRelaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bonusToRelax');
    });
  }

  QueryBuilder<Transport, int, QQueryOperations> bonusToSleepProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bonusToSleep');
    });
  }

  QueryBuilder<Transport, String, QQueryOperations> brandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'brand');
    });
  }

  QueryBuilder<Transport, int, QQueryOperations> commutingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'commuting');
    });
  }

  QueryBuilder<Transport, double, QQueryOperations> costProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cost');
    });
  }

  QueryBuilder<Transport, DateTime?, QQueryOperations> dateBuyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateBuy');
    });
  }

  QueryBuilder<Transport, ETypeTransport, QQueryOperations>
      eTypeTransportProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eTypeTransport');
    });
  }

  QueryBuilder<Transport, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<Transport, double, QQueryOperations> monthlyCostProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'monthlyCost');
    });
  }

  QueryBuilder<Transport, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Transport, String, QQueryOperations> uidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uid');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transport _$TransportFromJson(Map<String, dynamic> json) => Transport(
      uid: json['uid'] as String,
      name: json['name'] as String,
      brand: json['brand'] as String,
      eTypeTransport:
          $enumDecode(_$ETypeTransportEnumMap, json['eTypeTransport']),
      cost: (json['cost'] as num).toDouble(),
      monthlyCost: (json['monthlyCost'] as num).toDouble(),
      dateBuy: json['dateBuy'] == null
          ? null
          : DateTime.parse(json['dateBuy'] as String),
      bonusToRelax: json['bonusToRelax'] as int? ?? 0,
      bonusToSleep: json['bonusToSleep'] as int? ?? 0,
      bonusToLearn: json['bonusToLearn'] as int? ?? 0,
      commuting: json['commuting'] as int? ?? 0,
    );

Map<String, dynamic> _$TransportToJson(Transport instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'brand': instance.brand,
      'eTypeTransport': _$ETypeTransportEnumMap[instance.eTypeTransport]!,
      'cost': instance.cost,
      'monthlyCost': instance.monthlyCost,
      'dateBuy': instance.dateBuy?.toIso8601String(),
      'bonusToRelax': instance.bonusToRelax,
      'bonusToSleep': instance.bonusToSleep,
      'bonusToLearn': instance.bonusToLearn,
      'commuting': instance.commuting,
    };

const _$ETypeTransportEnumMap = {
  ETypeTransport.publicTransport: 'publicTransport',
  ETypeTransport.car: 'car',
};
