// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$HouseCWProxy {
  House bonusToLearn(int bonusToLearn);

  House bonusToRelax(int bonusToRelax);

  House bonusToSleep(int bonusToSleep);

  House cost(double cost);

  House dateBuy(DateTime? dateBuy);

  House eTypeHouse(ETypeHouse eTypeHouse);

  House monthlyCost(double monthlyCost);

  House name(String name);

  House uid(String uid);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `House(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// House(...).copyWith(id: 12, name: "My name")
  /// ````
  House call({
    int? bonusToLearn,
    int? bonusToRelax,
    int? bonusToSleep,
    double? cost,
    DateTime? dateBuy,
    ETypeHouse? eTypeHouse,
    double? monthlyCost,
    String? name,
    String? uid,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfHouse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfHouse.copyWith.fieldName(...)`
class _$HouseCWProxyImpl implements _$HouseCWProxy {
  final House _value;

  const _$HouseCWProxyImpl(this._value);

  @override
  House bonusToLearn(int bonusToLearn) => this(bonusToLearn: bonusToLearn);

  @override
  House bonusToRelax(int bonusToRelax) => this(bonusToRelax: bonusToRelax);

  @override
  House bonusToSleep(int bonusToSleep) => this(bonusToSleep: bonusToSleep);

  @override
  House cost(double cost) => this(cost: cost);

  @override
  House dateBuy(DateTime? dateBuy) => this(dateBuy: dateBuy);

  @override
  House eTypeHouse(ETypeHouse eTypeHouse) => this(eTypeHouse: eTypeHouse);

  @override
  House monthlyCost(double monthlyCost) => this(monthlyCost: monthlyCost);

  @override
  House name(String name) => this(name: name);

  @override
  House uid(String uid) => this(uid: uid);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `House(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// House(...).copyWith(id: 12, name: "My name")
  /// ````
  House call({
    Object? bonusToLearn = const $CopyWithPlaceholder(),
    Object? bonusToRelax = const $CopyWithPlaceholder(),
    Object? bonusToSleep = const $CopyWithPlaceholder(),
    Object? cost = const $CopyWithPlaceholder(),
    Object? dateBuy = const $CopyWithPlaceholder(),
    Object? eTypeHouse = const $CopyWithPlaceholder(),
    Object? monthlyCost = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? uid = const $CopyWithPlaceholder(),
  }) {
    return House(
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
      cost: cost == const $CopyWithPlaceholder() || cost == null
          ? _value.cost
          // ignore: cast_nullable_to_non_nullable
          : cost as double,
      dateBuy: dateBuy == const $CopyWithPlaceholder()
          ? _value.dateBuy
          // ignore: cast_nullable_to_non_nullable
          : dateBuy as DateTime?,
      eTypeHouse:
          eTypeHouse == const $CopyWithPlaceholder() || eTypeHouse == null
              ? _value.eTypeHouse
              // ignore: cast_nullable_to_non_nullable
              : eTypeHouse as ETypeHouse,
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

extension $HouseCopyWith on House {
  /// Returns a callable class that can be used as follows: `instanceOfHouse.copyWith(...)` or like so:`instanceOfHouse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$HouseCWProxy get copyWith => _$HouseCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetHouseCollection on Isar {
  IsarCollection<House> get house => this.collection();
}

const HouseSchema = CollectionSchema(
  name: r'House',
  id: 4171657115034592655,
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
    r'cost': PropertySchema(
      id: 3,
      name: r'cost',
      type: IsarType.double,
    ),
    r'dateBuy': PropertySchema(
      id: 4,
      name: r'dateBuy',
      type: IsarType.dateTime,
    ),
    r'eTypeHouse': PropertySchema(
      id: 5,
      name: r'eTypeHouse',
      type: IsarType.byte,
      enumMap: _HouseeTypeHouseEnumValueMap,
    ),
    r'hashCode': PropertySchema(
      id: 6,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'monthlyCost': PropertySchema(
      id: 7,
      name: r'monthlyCost',
      type: IsarType.double,
    ),
    r'name': PropertySchema(
      id: 8,
      name: r'name',
      type: IsarType.string,
    ),
    r'uid': PropertySchema(
      id: 9,
      name: r'uid',
      type: IsarType.string,
    )
  },
  estimateSize: _houseEstimateSize,
  serialize: _houseSerialize,
  deserialize: _houseDeserialize,
  deserializeProp: _houseDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _houseGetId,
  getLinks: _houseGetLinks,
  attach: _houseAttach,
  version: '3.0.5',
);

int _houseEstimateSize(
  House object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.uid.length * 3;
  return bytesCount;
}

void _houseSerialize(
  House object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.bonusToLearn);
  writer.writeLong(offsets[1], object.bonusToRelax);
  writer.writeLong(offsets[2], object.bonusToSleep);
  writer.writeDouble(offsets[3], object.cost);
  writer.writeDateTime(offsets[4], object.dateBuy);
  writer.writeByte(offsets[5], object.eTypeHouse.index);
  writer.writeLong(offsets[6], object.hashCode);
  writer.writeDouble(offsets[7], object.monthlyCost);
  writer.writeString(offsets[8], object.name);
  writer.writeString(offsets[9], object.uid);
}

House _houseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = House(
    bonusToLearn: reader.readLongOrNull(offsets[0]) ?? 0,
    bonusToRelax: reader.readLongOrNull(offsets[1]) ?? 0,
    bonusToSleep: reader.readLongOrNull(offsets[2]) ?? 0,
    cost: reader.readDouble(offsets[3]),
    dateBuy: reader.readDateTimeOrNull(offsets[4]),
    eTypeHouse:
        _HouseeTypeHouseValueEnumMap[reader.readByteOrNull(offsets[5])] ??
            ETypeHouse.rent,
    monthlyCost: reader.readDouble(offsets[7]),
    name: reader.readString(offsets[8]),
    uid: reader.readString(offsets[9]),
  );
  return object;
}

P _houseDeserializeProp<P>(
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
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (_HouseeTypeHouseValueEnumMap[reader.readByteOrNull(offset)] ??
          ETypeHouse.rent) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _HouseeTypeHouseEnumValueMap = {
  'rent': 0,
  'buy': 1,
};
const _HouseeTypeHouseValueEnumMap = {
  0: ETypeHouse.rent,
  1: ETypeHouse.buy,
};

Id _houseGetId(House object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _houseGetLinks(House object) {
  return [];
}

void _houseAttach(IsarCollection<dynamic> col, Id id, House object) {}

extension HouseQueryWhereSort on QueryBuilder<House, House, QWhere> {
  QueryBuilder<House, House, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension HouseQueryWhere on QueryBuilder<House, House, QWhereClause> {
  QueryBuilder<House, House, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<House, House, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<House, House, QAfterWhereClause> idBetween(
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

extension HouseQueryFilter on QueryBuilder<House, House, QFilterCondition> {
  QueryBuilder<House, House, QAfterFilterCondition> bonusToLearnEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bonusToLearn',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> bonusToLearnGreaterThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> bonusToLearnLessThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> bonusToLearnBetween(
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

  QueryBuilder<House, House, QAfterFilterCondition> bonusToRelaxEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bonusToRelax',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> bonusToRelaxGreaterThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> bonusToRelaxLessThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> bonusToRelaxBetween(
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

  QueryBuilder<House, House, QAfterFilterCondition> bonusToSleepEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bonusToSleep',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> bonusToSleepGreaterThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> bonusToSleepLessThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> bonusToSleepBetween(
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

  QueryBuilder<House, House, QAfterFilterCondition> costEqualTo(
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

  QueryBuilder<House, House, QAfterFilterCondition> costGreaterThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> costLessThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> costBetween(
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

  QueryBuilder<House, House, QAfterFilterCondition> dateBuyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateBuy',
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> dateBuyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateBuy',
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> dateBuyEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateBuy',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> dateBuyGreaterThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> dateBuyLessThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> dateBuyBetween(
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

  QueryBuilder<House, House, QAfterFilterCondition> eTypeHouseEqualTo(
      ETypeHouse value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eTypeHouse',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> eTypeHouseGreaterThan(
    ETypeHouse value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eTypeHouse',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> eTypeHouseLessThan(
    ETypeHouse value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eTypeHouse',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> eTypeHouseBetween(
    ETypeHouse lower,
    ETypeHouse upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eTypeHouse',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<House, House, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> idBetween(
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

  QueryBuilder<House, House, QAfterFilterCondition> monthlyCostEqualTo(
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

  QueryBuilder<House, House, QAfterFilterCondition> monthlyCostGreaterThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> monthlyCostLessThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> monthlyCostBetween(
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

  QueryBuilder<House, House, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<House, House, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<House, House, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<House, House, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<House, House, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> uidEqualTo(
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

  QueryBuilder<House, House, QAfterFilterCondition> uidGreaterThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> uidLessThan(
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

  QueryBuilder<House, House, QAfterFilterCondition> uidBetween(
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

  QueryBuilder<House, House, QAfterFilterCondition> uidStartsWith(
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

  QueryBuilder<House, House, QAfterFilterCondition> uidEndsWith(
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

  QueryBuilder<House, House, QAfterFilterCondition> uidContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> uidMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> uidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uid',
        value: '',
      ));
    });
  }

  QueryBuilder<House, House, QAfterFilterCondition> uidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uid',
        value: '',
      ));
    });
  }
}

extension HouseQueryObject on QueryBuilder<House, House, QFilterCondition> {}

extension HouseQueryLinks on QueryBuilder<House, House, QFilterCondition> {}

extension HouseQuerySortBy on QueryBuilder<House, House, QSortBy> {
  QueryBuilder<House, House, QAfterSortBy> sortByBonusToLearn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToLearn', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByBonusToLearnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToLearn', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByBonusToRelax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToRelax', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByBonusToRelaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToRelax', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByBonusToSleep() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToSleep', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByBonusToSleepDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToSleep', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByDateBuy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateBuy', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByDateBuyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateBuy', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByETypeHouse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeHouse', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByETypeHouseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeHouse', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByMonthlyCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monthlyCost', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByMonthlyCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monthlyCost', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByUid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> sortByUidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.desc);
    });
  }
}

extension HouseQuerySortThenBy on QueryBuilder<House, House, QSortThenBy> {
  QueryBuilder<House, House, QAfterSortBy> thenByBonusToLearn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToLearn', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByBonusToLearnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToLearn', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByBonusToRelax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToRelax', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByBonusToRelaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToRelax', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByBonusToSleep() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToSleep', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByBonusToSleepDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bonusToSleep', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByDateBuy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateBuy', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByDateBuyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateBuy', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByETypeHouse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeHouse', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByETypeHouseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeHouse', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByMonthlyCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monthlyCost', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByMonthlyCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'monthlyCost', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByUid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.asc);
    });
  }

  QueryBuilder<House, House, QAfterSortBy> thenByUidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.desc);
    });
  }
}

extension HouseQueryWhereDistinct on QueryBuilder<House, House, QDistinct> {
  QueryBuilder<House, House, QDistinct> distinctByBonusToLearn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bonusToLearn');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByBonusToRelax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bonusToRelax');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByBonusToSleep() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bonusToSleep');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cost');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByDateBuy() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateBuy');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByETypeHouse() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eTypeHouse');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByMonthlyCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'monthlyCost');
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<House, House, QDistinct> distinctByUid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uid', caseSensitive: caseSensitive);
    });
  }
}

extension HouseQueryProperty on QueryBuilder<House, House, QQueryProperty> {
  QueryBuilder<House, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<House, int, QQueryOperations> bonusToLearnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bonusToLearn');
    });
  }

  QueryBuilder<House, int, QQueryOperations> bonusToRelaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bonusToRelax');
    });
  }

  QueryBuilder<House, int, QQueryOperations> bonusToSleepProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bonusToSleep');
    });
  }

  QueryBuilder<House, double, QQueryOperations> costProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cost');
    });
  }

  QueryBuilder<House, DateTime?, QQueryOperations> dateBuyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateBuy');
    });
  }

  QueryBuilder<House, ETypeHouse, QQueryOperations> eTypeHouseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eTypeHouse');
    });
  }

  QueryBuilder<House, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<House, double, QQueryOperations> monthlyCostProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'monthlyCost');
    });
  }

  QueryBuilder<House, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<House, String, QQueryOperations> uidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uid');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

House _$HouseFromJson(Map<String, dynamic> json) => House(
      uid: json['uid'] as String,
      name: json['name'] as String,
      eTypeHouse: $enumDecode(_$ETypeHouseEnumMap, json['eTypeHouse']),
      cost: (json['cost'] as num).toDouble(),
      monthlyCost: (json['monthlyCost'] as num).toDouble(),
      dateBuy: json['dateBuy'] == null
          ? null
          : DateTime.parse(json['dateBuy'] as String),
      bonusToRelax: json['bonusToRelax'] as int? ?? 0,
      bonusToSleep: json['bonusToSleep'] as int? ?? 0,
      bonusToLearn: json['bonusToLearn'] as int? ?? 0,
    );

Map<String, dynamic> _$HouseToJson(House instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'eTypeHouse': _$ETypeHouseEnumMap[instance.eTypeHouse]!,
      'cost': instance.cost,
      'monthlyCost': instance.monthlyCost,
      'dateBuy': instance.dateBuy?.toIso8601String(),
      'bonusToRelax': instance.bonusToRelax,
      'bonusToSleep': instance.bonusToSleep,
      'bonusToLearn': instance.bonusToLearn,
    };

const _$ETypeHouseEnumMap = {
  ETypeHouse.rent: 'rent',
  ETypeHouse.buy: 'buy',
};
