// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_spend_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TimeSpendCWProxy {
  TimeSpend bonuses(List<TimeBonus> bonuses);

  TimeSpend commuting(int commuting);

  TimeSpend free(int free);

  TimeSpend freelance(int freelance);

  TimeSpend id(int id);

  TimeSpend learn(int learn);

  TimeSpend relax(int relax);

  TimeSpend sleep(int sleep);

  TimeSpend used(int used);

  TimeSpend work(int work);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TimeSpend(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TimeSpend(...).copyWith(id: 12, name: "My name")
  /// ````
  TimeSpend call({
    List<TimeBonus>? bonuses,
    int? commuting,
    int? free,
    int? freelance,
    int? id,
    int? learn,
    int? relax,
    int? sleep,
    int? used,
    int? work,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTimeSpend.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTimeSpend.copyWith.fieldName(...)`
class _$TimeSpendCWProxyImpl implements _$TimeSpendCWProxy {
  final TimeSpend _value;

  const _$TimeSpendCWProxyImpl(this._value);

  @override
  TimeSpend bonuses(List<TimeBonus> bonuses) => this(bonuses: bonuses);

  @override
  TimeSpend commuting(int commuting) => this(commuting: commuting);

  @override
  TimeSpend free(int free) => this(free: free);

  @override
  TimeSpend freelance(int freelance) => this(freelance: freelance);

  @override
  TimeSpend id(int id) => this(id: id);

  @override
  TimeSpend learn(int learn) => this(learn: learn);

  @override
  TimeSpend relax(int relax) => this(relax: relax);

  @override
  TimeSpend sleep(int sleep) => this(sleep: sleep);

  @override
  TimeSpend used(int used) => this(used: used);

  @override
  TimeSpend work(int work) => this(work: work);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TimeSpend(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TimeSpend(...).copyWith(id: 12, name: "My name")
  /// ````
  TimeSpend call({
    Object? bonuses = const $CopyWithPlaceholder(),
    Object? commuting = const $CopyWithPlaceholder(),
    Object? free = const $CopyWithPlaceholder(),
    Object? freelance = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? learn = const $CopyWithPlaceholder(),
    Object? relax = const $CopyWithPlaceholder(),
    Object? sleep = const $CopyWithPlaceholder(),
    Object? used = const $CopyWithPlaceholder(),
    Object? work = const $CopyWithPlaceholder(),
  }) {
    return TimeSpend(
      bonuses: bonuses == const $CopyWithPlaceholder() || bonuses == null
          ? _value.bonuses
          // ignore: cast_nullable_to_non_nullable
          : bonuses as List<TimeBonus>,
      commuting: commuting == const $CopyWithPlaceholder() || commuting == null
          ? _value.commuting
          // ignore: cast_nullable_to_non_nullable
          : commuting as int,
      free: free == const $CopyWithPlaceholder() || free == null
          ? _value.free
          // ignore: cast_nullable_to_non_nullable
          : free as int,
      freelance: freelance == const $CopyWithPlaceholder() || freelance == null
          ? _value.freelance
          // ignore: cast_nullable_to_non_nullable
          : freelance as int,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      learn: learn == const $CopyWithPlaceholder() || learn == null
          ? _value.learn
          // ignore: cast_nullable_to_non_nullable
          : learn as int,
      relax: relax == const $CopyWithPlaceholder() || relax == null
          ? _value.relax
          // ignore: cast_nullable_to_non_nullable
          : relax as int,
      sleep: sleep == const $CopyWithPlaceholder() || sleep == null
          ? _value.sleep
          // ignore: cast_nullable_to_non_nullable
          : sleep as int,
      used: used == const $CopyWithPlaceholder() || used == null
          ? _value.used
          // ignore: cast_nullable_to_non_nullable
          : used as int,
      work: work == const $CopyWithPlaceholder() || work == null
          ? _value.work
          // ignore: cast_nullable_to_non_nullable
          : work as int,
    );
  }
}

extension $TimeSpendCopyWith on TimeSpend {
  /// Returns a callable class that can be used as follows: `instanceOfTimeSpend.copyWith(...)` or like so:`instanceOfTimeSpend.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TimeSpendCWProxy get copyWith => _$TimeSpendCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetTimeSpendCollection on Isar {
  IsarCollection<TimeSpend> get timeSpends => this.collection();
}

const TimeSpendSchema = CollectionSchema(
  name: r'TimeSpend',
  id: 7328765593875179269,
  properties: {
    r'bonuses': PropertySchema(
      id: 0,
      name: r'bonuses',
      type: IsarType.objectList,
      target: r'TimeBonus',
    ),
    r'commuting': PropertySchema(
      id: 1,
      name: r'commuting',
      type: IsarType.long,
    ),
    r'free': PropertySchema(
      id: 2,
      name: r'free',
      type: IsarType.long,
    ),
    r'freelance': PropertySchema(
      id: 3,
      name: r'freelance',
      type: IsarType.long,
    ),
    r'hashCode': PropertySchema(
      id: 4,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'learn': PropertySchema(
      id: 5,
      name: r'learn',
      type: IsarType.long,
    ),
    r'relax': PropertySchema(
      id: 6,
      name: r'relax',
      type: IsarType.long,
    ),
    r'sleep': PropertySchema(
      id: 7,
      name: r'sleep',
      type: IsarType.long,
    ),
    r'used': PropertySchema(
      id: 8,
      name: r'used',
      type: IsarType.long,
    ),
    r'work': PropertySchema(
      id: 9,
      name: r'work',
      type: IsarType.long,
    )
  },
  estimateSize: _timeSpendEstimateSize,
  serialize: _timeSpendSerialize,
  deserialize: _timeSpendDeserialize,
  deserializeProp: _timeSpendDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'TimeBonus': TimeBonusSchema},
  getId: _timeSpendGetId,
  getLinks: _timeSpendGetLinks,
  attach: _timeSpendAttach,
  version: '3.0.2',
);

int _timeSpendEstimateSize(
  TimeSpend object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.bonuses.length * 3;
  {
    final offsets = allOffsets[TimeBonus]!;
    for (var i = 0; i < object.bonuses.length; i++) {
      final value = object.bonuses[i];
      bytesCount += TimeBonusSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _timeSpendSerialize(
  TimeSpend object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<TimeBonus>(
    offsets[0],
    allOffsets,
    TimeBonusSchema.serialize,
    object.bonuses,
  );
  writer.writeLong(offsets[1], object.commuting);
  writer.writeLong(offsets[2], object.free);
  writer.writeLong(offsets[3], object.freelance);
  writer.writeLong(offsets[4], object.hashCode);
  writer.writeLong(offsets[5], object.learn);
  writer.writeLong(offsets[6], object.relax);
  writer.writeLong(offsets[7], object.sleep);
  writer.writeLong(offsets[8], object.used);
  writer.writeLong(offsets[9], object.work);
}

TimeSpend _timeSpendDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TimeSpend(
    bonuses: reader.readObjectList<TimeBonus>(
          offsets[0],
          TimeBonusSchema.deserialize,
          allOffsets,
          TimeBonus(),
        ) ??
        const [],
    commuting: reader.readLongOrNull(offsets[1]) ?? 0,
    free: reader.readLongOrNull(offsets[2]) ?? 13,
    freelance: reader.readLongOrNull(offsets[3]) ?? 0,
    id: id,
    learn: reader.readLongOrNull(offsets[5]) ?? 0,
    relax: reader.readLongOrNull(offsets[6]) ?? 3,
    sleep: reader.readLongOrNull(offsets[7]) ?? 8,
    used: reader.readLongOrNull(offsets[8]) ?? 0,
    work: reader.readLongOrNull(offsets[9]) ?? 0,
  );
  return object;
}

P _timeSpendDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<TimeBonus>(
            offset,
            TimeBonusSchema.deserialize,
            allOffsets,
            TimeBonus(),
          ) ??
          const []) as P;
    case 1:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 2:
      return (reader.readLongOrNull(offset) ?? 13) as P;
    case 3:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 6:
      return (reader.readLongOrNull(offset) ?? 3) as P;
    case 7:
      return (reader.readLongOrNull(offset) ?? 8) as P;
    case 8:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 9:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _timeSpendGetId(TimeSpend object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _timeSpendGetLinks(TimeSpend object) {
  return [];
}

void _timeSpendAttach(IsarCollection<dynamic> col, Id id, TimeSpend object) {}

extension TimeSpendQueryWhereSort
    on QueryBuilder<TimeSpend, TimeSpend, QWhere> {
  QueryBuilder<TimeSpend, TimeSpend, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TimeSpendQueryWhere
    on QueryBuilder<TimeSpend, TimeSpend, QWhereClause> {
  QueryBuilder<TimeSpend, TimeSpend, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<TimeSpend, TimeSpend, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterWhereClause> idBetween(
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

extension TimeSpendQueryFilter
    on QueryBuilder<TimeSpend, TimeSpend, QFilterCondition> {
  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition>
      bonusesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bonuses',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> bonusesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bonuses',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition>
      bonusesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bonuses',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition>
      bonusesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bonuses',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition>
      bonusesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bonuses',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition>
      bonusesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bonuses',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> commutingEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commuting',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition>
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

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> commutingLessThan(
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

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> commutingBetween(
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

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> freeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'free',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> freeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'free',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> freeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'free',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> freeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'free',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> freelanceEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'freelance',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition>
      freelanceGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'freelance',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> freelanceLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'freelance',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> freelanceBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'freelance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> learnEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'learn',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> learnGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'learn',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> learnLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'learn',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> learnBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'learn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> relaxEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'relax',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> relaxGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'relax',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> relaxLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'relax',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> relaxBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'relax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> sleepEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sleep',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> sleepGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sleep',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> sleepLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sleep',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> sleepBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sleep',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> usedEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'used',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> usedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'used',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> usedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'used',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> usedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'used',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> workEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'work',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> workGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'work',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> workLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'work',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> workBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'work',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TimeSpendQueryObject
    on QueryBuilder<TimeSpend, TimeSpend, QFilterCondition> {
  QueryBuilder<TimeSpend, TimeSpend, QAfterFilterCondition> bonusesElement(
      FilterQuery<TimeBonus> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'bonuses');
    });
  }
}

extension TimeSpendQueryLinks
    on QueryBuilder<TimeSpend, TimeSpend, QFilterCondition> {}

extension TimeSpendQuerySortBy on QueryBuilder<TimeSpend, TimeSpend, QSortBy> {
  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortByCommuting() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commuting', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortByCommutingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commuting', Sort.desc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortByFree() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'free', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortByFreeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'free', Sort.desc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortByFreelance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freelance', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortByFreelanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freelance', Sort.desc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortByLearn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'learn', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortByLearnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'learn', Sort.desc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortByRelax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relax', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortByRelaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relax', Sort.desc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortBySleep() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sleep', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortBySleepDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sleep', Sort.desc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortByUsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'used', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortByUsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'used', Sort.desc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortByWork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'work', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> sortByWorkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'work', Sort.desc);
    });
  }
}

extension TimeSpendQuerySortThenBy
    on QueryBuilder<TimeSpend, TimeSpend, QSortThenBy> {
  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenByCommuting() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commuting', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenByCommutingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commuting', Sort.desc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenByFree() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'free', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenByFreeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'free', Sort.desc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenByFreelance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freelance', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenByFreelanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freelance', Sort.desc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenByLearn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'learn', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenByLearnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'learn', Sort.desc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenByRelax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relax', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenByRelaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'relax', Sort.desc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenBySleep() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sleep', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenBySleepDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sleep', Sort.desc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenByUsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'used', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenByUsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'used', Sort.desc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenByWork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'work', Sort.asc);
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QAfterSortBy> thenByWorkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'work', Sort.desc);
    });
  }
}

extension TimeSpendQueryWhereDistinct
    on QueryBuilder<TimeSpend, TimeSpend, QDistinct> {
  QueryBuilder<TimeSpend, TimeSpend, QDistinct> distinctByCommuting() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'commuting');
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QDistinct> distinctByFree() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'free');
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QDistinct> distinctByFreelance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'freelance');
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QDistinct> distinctByLearn() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'learn');
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QDistinct> distinctByRelax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'relax');
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QDistinct> distinctBySleep() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sleep');
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QDistinct> distinctByUsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'used');
    });
  }

  QueryBuilder<TimeSpend, TimeSpend, QDistinct> distinctByWork() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'work');
    });
  }
}

extension TimeSpendQueryProperty
    on QueryBuilder<TimeSpend, TimeSpend, QQueryProperty> {
  QueryBuilder<TimeSpend, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TimeSpend, List<TimeBonus>, QQueryOperations> bonusesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bonuses');
    });
  }

  QueryBuilder<TimeSpend, int, QQueryOperations> commutingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'commuting');
    });
  }

  QueryBuilder<TimeSpend, int, QQueryOperations> freeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'free');
    });
  }

  QueryBuilder<TimeSpend, int, QQueryOperations> freelanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'freelance');
    });
  }

  QueryBuilder<TimeSpend, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<TimeSpend, int, QQueryOperations> learnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'learn');
    });
  }

  QueryBuilder<TimeSpend, int, QQueryOperations> relaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'relax');
    });
  }

  QueryBuilder<TimeSpend, int, QQueryOperations> sleepProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sleep');
    });
  }

  QueryBuilder<TimeSpend, int, QQueryOperations> usedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'used');
    });
  }

  QueryBuilder<TimeSpend, int, QQueryOperations> workProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'work');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeSpend _$TimeSpendFromJson(Map<String, dynamic> json) => TimeSpend(
      id: json['id'] as int? ?? 1,
      free: json['free'] as int? ?? 13,
      work: json['work'] as int? ?? 0,
      commuting: json['commuting'] as int? ?? 0,
      freelance: json['freelance'] as int? ?? 0,
      learn: json['learn'] as int? ?? 0,
      relax: json['relax'] as int? ?? 3,
      sleep: json['sleep'] as int? ?? 8,
      used: json['used'] as int? ?? 0,
      bonuses: (json['bonuses'] as List<dynamic>?)
              ?.map((e) => TimeBonus.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$TimeSpendToJson(TimeSpend instance) => <String, dynamic>{
      'id': instance.id,
      'free': instance.free,
      'work': instance.work,
      'commuting': instance.commuting,
      'freelance': instance.freelance,
      'learn': instance.learn,
      'relax': instance.relax,
      'sleep': instance.sleep,
      'used': instance.used,
      'bonuses': instance.bonuses.map((e) => e.toJson()).toList(),
    };
