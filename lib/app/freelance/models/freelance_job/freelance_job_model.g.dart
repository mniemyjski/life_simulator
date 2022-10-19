// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freelance_job_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FreelanceJobCWProxy {
  FreelanceJob eTypeFreelance(ETypeFreelance eTypeFreelance);

  FreelanceJob id(int id);

  FreelanceJob lastVersion(int lastVersion);

  FreelanceJob leftWorkTime(int leftWorkTime);

  FreelanceJob level(int level);

  FreelanceJob name(String name);

  FreelanceJob repeat(bool repeat);

  FreelanceJob reqSkills(List<SkillEmb> reqSkills);

  FreelanceJob uid(String uid);

  FreelanceJob userSkills(List<SkillEmb> userSkills);

  FreelanceJob workTime(int workTime);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FreelanceJob(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FreelanceJob(...).copyWith(id: 12, name: "My name")
  /// ````
  FreelanceJob call({
    ETypeFreelance? eTypeFreelance,
    int? id,
    int? lastVersion,
    int? leftWorkTime,
    int? level,
    String? name,
    bool? repeat,
    List<SkillEmb>? reqSkills,
    String? uid,
    List<SkillEmb>? userSkills,
    int? workTime,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFreelanceJob.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFreelanceJob.copyWith.fieldName(...)`
class _$FreelanceJobCWProxyImpl implements _$FreelanceJobCWProxy {
  final FreelanceJob _value;

  const _$FreelanceJobCWProxyImpl(this._value);

  @override
  FreelanceJob eTypeFreelance(ETypeFreelance eTypeFreelance) =>
      this(eTypeFreelance: eTypeFreelance);

  @override
  FreelanceJob id(int id) => this(id: id);

  @override
  FreelanceJob lastVersion(int lastVersion) => this(lastVersion: lastVersion);

  @override
  FreelanceJob leftWorkTime(int leftWorkTime) =>
      this(leftWorkTime: leftWorkTime);

  @override
  FreelanceJob level(int level) => this(level: level);

  @override
  FreelanceJob name(String name) => this(name: name);

  @override
  FreelanceJob repeat(bool repeat) => this(repeat: repeat);

  @override
  FreelanceJob reqSkills(List<SkillEmb> reqSkills) =>
      this(reqSkills: reqSkills);

  @override
  FreelanceJob uid(String uid) => this(uid: uid);

  @override
  FreelanceJob userSkills(List<SkillEmb> userSkills) =>
      this(userSkills: userSkills);

  @override
  FreelanceJob workTime(int workTime) => this(workTime: workTime);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FreelanceJob(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FreelanceJob(...).copyWith(id: 12, name: "My name")
  /// ````
  FreelanceJob call({
    Object? eTypeFreelance = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? lastVersion = const $CopyWithPlaceholder(),
    Object? leftWorkTime = const $CopyWithPlaceholder(),
    Object? level = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? repeat = const $CopyWithPlaceholder(),
    Object? reqSkills = const $CopyWithPlaceholder(),
    Object? uid = const $CopyWithPlaceholder(),
    Object? userSkills = const $CopyWithPlaceholder(),
    Object? workTime = const $CopyWithPlaceholder(),
  }) {
    return FreelanceJob(
      eTypeFreelance: eTypeFreelance == const $CopyWithPlaceholder() ||
              eTypeFreelance == null
          ? _value.eTypeFreelance
          // ignore: cast_nullable_to_non_nullable
          : eTypeFreelance as ETypeFreelance,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      lastVersion:
          lastVersion == const $CopyWithPlaceholder() || lastVersion == null
              ? _value.lastVersion
              // ignore: cast_nullable_to_non_nullable
              : lastVersion as int,
      leftWorkTime:
          leftWorkTime == const $CopyWithPlaceholder() || leftWorkTime == null
              ? _value.leftWorkTime
              // ignore: cast_nullable_to_non_nullable
              : leftWorkTime as int,
      level: level == const $CopyWithPlaceholder() || level == null
          ? _value.level
          // ignore: cast_nullable_to_non_nullable
          : level as int,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      repeat: repeat == const $CopyWithPlaceholder() || repeat == null
          ? _value.repeat
          // ignore: cast_nullable_to_non_nullable
          : repeat as bool,
      reqSkills: reqSkills == const $CopyWithPlaceholder() || reqSkills == null
          ? _value.reqSkills
          // ignore: cast_nullable_to_non_nullable
          : reqSkills as List<SkillEmb>,
      uid: uid == const $CopyWithPlaceholder() || uid == null
          ? _value.uid
          // ignore: cast_nullable_to_non_nullable
          : uid as String,
      userSkills:
          userSkills == const $CopyWithPlaceholder() || userSkills == null
              ? _value.userSkills
              // ignore: cast_nullable_to_non_nullable
              : userSkills as List<SkillEmb>,
      workTime: workTime == const $CopyWithPlaceholder() || workTime == null
          ? _value.workTime
          // ignore: cast_nullable_to_non_nullable
          : workTime as int,
    );
  }
}

extension $FreelanceJobCopyWith on FreelanceJob {
  /// Returns a callable class that can be used as follows: `instanceOfFreelanceJob.copyWith(...)` or like so:`instanceOfFreelanceJob.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FreelanceJobCWProxy get copyWith => _$FreelanceJobCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetFreelanceJobCollection on Isar {
  IsarCollection<FreelanceJob> get freelanceJobs => this.collection();
}

const FreelanceJobSchema = CollectionSchema(
  name: r'FreelanceJob',
  id: -4690373475772884093,
  properties: {
    r'eTypeFreelance': PropertySchema(
      id: 0,
      name: r'eTypeFreelance',
      type: IsarType.byte,
      enumMap: _FreelanceJobeTypeFreelanceEnumValueMap,
    ),
    r'hashCode': PropertySchema(
      id: 1,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'lastVersion': PropertySchema(
      id: 2,
      name: r'lastVersion',
      type: IsarType.long,
    ),
    r'leftWorkTime': PropertySchema(
      id: 3,
      name: r'leftWorkTime',
      type: IsarType.long,
    ),
    r'level': PropertySchema(
      id: 4,
      name: r'level',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 5,
      name: r'name',
      type: IsarType.string,
    ),
    r'repeat': PropertySchema(
      id: 6,
      name: r'repeat',
      type: IsarType.bool,
    ),
    r'reqSkills': PropertySchema(
      id: 7,
      name: r'reqSkills',
      type: IsarType.objectList,
      target: r'SkillEmb',
    ),
    r'uid': PropertySchema(
      id: 8,
      name: r'uid',
      type: IsarType.string,
    ),
    r'userSkills': PropertySchema(
      id: 9,
      name: r'userSkills',
      type: IsarType.objectList,
      target: r'SkillEmb',
    ),
    r'workTime': PropertySchema(
      id: 10,
      name: r'workTime',
      type: IsarType.long,
    )
  },
  estimateSize: _freelanceJobEstimateSize,
  serialize: _freelanceJobSerialize,
  deserialize: _freelanceJobDeserialize,
  deserializeProp: _freelanceJobDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'SkillEmb': SkillEmbSchema},
  getId: _freelanceJobGetId,
  getLinks: _freelanceJobGetLinks,
  attach: _freelanceJobAttach,
  version: '3.0.2',
);

int _freelanceJobEstimateSize(
  FreelanceJob object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.reqSkills.length * 3;
  {
    final offsets = allOffsets[SkillEmb]!;
    for (var i = 0; i < object.reqSkills.length; i++) {
      final value = object.reqSkills[i];
      bytesCount += SkillEmbSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.uid.length * 3;
  bytesCount += 3 + object.userSkills.length * 3;
  {
    final offsets = allOffsets[SkillEmb]!;
    for (var i = 0; i < object.userSkills.length; i++) {
      final value = object.userSkills[i];
      bytesCount += SkillEmbSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _freelanceJobSerialize(
  FreelanceJob object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.eTypeFreelance.index);
  writer.writeLong(offsets[1], object.hashCode);
  writer.writeLong(offsets[2], object.lastVersion);
  writer.writeLong(offsets[3], object.leftWorkTime);
  writer.writeLong(offsets[4], object.level);
  writer.writeString(offsets[5], object.name);
  writer.writeBool(offsets[6], object.repeat);
  writer.writeObjectList<SkillEmb>(
    offsets[7],
    allOffsets,
    SkillEmbSchema.serialize,
    object.reqSkills,
  );
  writer.writeString(offsets[8], object.uid);
  writer.writeObjectList<SkillEmb>(
    offsets[9],
    allOffsets,
    SkillEmbSchema.serialize,
    object.userSkills,
  );
  writer.writeLong(offsets[10], object.workTime);
}

FreelanceJob _freelanceJobDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FreelanceJob(
    eTypeFreelance: _FreelanceJobeTypeFreelanceValueEnumMap[
            reader.readByteOrNull(offsets[0])] ??
        ETypeFreelance.book,
    id: id,
    lastVersion: reader.readLongOrNull(offsets[2]) ?? 0,
    leftWorkTime: reader.readLong(offsets[3]),
    level: reader.readLong(offsets[4]),
    name: reader.readString(offsets[5]),
    repeat: reader.readBoolOrNull(offsets[6]) ?? false,
    reqSkills: reader.readObjectList<SkillEmb>(
          offsets[7],
          SkillEmbSchema.deserialize,
          allOffsets,
          SkillEmb(),
        ) ??
        [],
    uid: reader.readString(offsets[8]),
    userSkills: reader.readObjectList<SkillEmb>(
          offsets[9],
          SkillEmbSchema.deserialize,
          allOffsets,
          SkillEmb(),
        ) ??
        [],
    workTime: reader.readLong(offsets[10]),
  );
  return object;
}

P _freelanceJobDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_FreelanceJobeTypeFreelanceValueEnumMap[
              reader.readByteOrNull(offset)] ??
          ETypeFreelance.book) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 7:
      return (reader.readObjectList<SkillEmb>(
            offset,
            SkillEmbSchema.deserialize,
            allOffsets,
            SkillEmb(),
          ) ??
          []) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readObjectList<SkillEmb>(
            offset,
            SkillEmbSchema.deserialize,
            allOffsets,
            SkillEmb(),
          ) ??
          []) as P;
    case 10:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _FreelanceJobeTypeFreelanceEnumValueMap = {
  'book': 0,
  'course': 1,
  'youtube': 2,
  'application': 3,
  'handicrafts': 4,
};
const _FreelanceJobeTypeFreelanceValueEnumMap = {
  0: ETypeFreelance.book,
  1: ETypeFreelance.course,
  2: ETypeFreelance.youtube,
  3: ETypeFreelance.application,
  4: ETypeFreelance.handicrafts,
};

Id _freelanceJobGetId(FreelanceJob object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _freelanceJobGetLinks(FreelanceJob object) {
  return [];
}

void _freelanceJobAttach(
    IsarCollection<dynamic> col, Id id, FreelanceJob object) {}

extension FreelanceJobQueryWhereSort
    on QueryBuilder<FreelanceJob, FreelanceJob, QWhere> {
  QueryBuilder<FreelanceJob, FreelanceJob, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FreelanceJobQueryWhere
    on QueryBuilder<FreelanceJob, FreelanceJob, QWhereClause> {
  QueryBuilder<FreelanceJob, FreelanceJob, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterWhereClause> idBetween(
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

extension FreelanceJobQueryFilter
    on QueryBuilder<FreelanceJob, FreelanceJob, QFilterCondition> {
  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      eTypeFreelanceEqualTo(ETypeFreelance value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eTypeFreelance',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      eTypeFreelanceGreaterThan(
    ETypeFreelance value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eTypeFreelance',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      eTypeFreelanceLessThan(
    ETypeFreelance value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eTypeFreelance',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      eTypeFreelanceBetween(
    ETypeFreelance lower,
    ETypeFreelance upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eTypeFreelance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      hashCodeBetween(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> idBetween(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      lastVersionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastVersion',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      lastVersionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastVersion',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      lastVersionLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastVersion',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      lastVersionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastVersion',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      leftWorkTimeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftWorkTime',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      leftWorkTimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftWorkTime',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      leftWorkTimeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftWorkTime',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      leftWorkTimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftWorkTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> levelEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      levelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> levelLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> levelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'level',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      nameGreaterThan(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> nameContains(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> repeatEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'repeat',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      reqSkillsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reqSkills',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      reqSkillsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reqSkills',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      reqSkillsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reqSkills',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      reqSkillsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reqSkills',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      reqSkillsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reqSkills',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      reqSkillsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'reqSkills',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> uidEqualTo(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      uidGreaterThan(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> uidLessThan(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> uidBetween(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> uidStartsWith(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> uidEndsWith(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> uidContains(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> uidMatches(
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

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition> uidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uid',
        value: '',
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      uidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uid',
        value: '',
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      userSkillsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'userSkills',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      userSkillsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'userSkills',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      userSkillsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'userSkills',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      userSkillsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'userSkills',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      userSkillsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'userSkills',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      userSkillsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'userSkills',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      workTimeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workTime',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      workTimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'workTime',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      workTimeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'workTime',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      workTimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'workTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FreelanceJobQueryObject
    on QueryBuilder<FreelanceJob, FreelanceJob, QFilterCondition> {
  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      reqSkillsElement(FilterQuery<SkillEmb> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'reqSkills');
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterFilterCondition>
      userSkillsElement(FilterQuery<SkillEmb> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'userSkills');
    });
  }
}

extension FreelanceJobQueryLinks
    on QueryBuilder<FreelanceJob, FreelanceJob, QFilterCondition> {}

extension FreelanceJobQuerySortBy
    on QueryBuilder<FreelanceJob, FreelanceJob, QSortBy> {
  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy>
      sortByETypeFreelance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeFreelance', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy>
      sortByETypeFreelanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeFreelance', Sort.desc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> sortByLastVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastVersion', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy>
      sortByLastVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastVersion', Sort.desc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> sortByLeftWorkTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftWorkTime', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy>
      sortByLeftWorkTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftWorkTime', Sort.desc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> sortByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> sortByLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.desc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> sortByRepeat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repeat', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> sortByRepeatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repeat', Sort.desc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> sortByUid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> sortByUidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.desc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> sortByWorkTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workTime', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> sortByWorkTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workTime', Sort.desc);
    });
  }
}

extension FreelanceJobQuerySortThenBy
    on QueryBuilder<FreelanceJob, FreelanceJob, QSortThenBy> {
  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy>
      thenByETypeFreelance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeFreelance', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy>
      thenByETypeFreelanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeFreelance', Sort.desc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> thenByLastVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastVersion', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy>
      thenByLastVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastVersion', Sort.desc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> thenByLeftWorkTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftWorkTime', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy>
      thenByLeftWorkTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftWorkTime', Sort.desc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> thenByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> thenByLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.desc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> thenByRepeat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repeat', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> thenByRepeatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repeat', Sort.desc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> thenByUid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> thenByUidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uid', Sort.desc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> thenByWorkTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workTime', Sort.asc);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QAfterSortBy> thenByWorkTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workTime', Sort.desc);
    });
  }
}

extension FreelanceJobQueryWhereDistinct
    on QueryBuilder<FreelanceJob, FreelanceJob, QDistinct> {
  QueryBuilder<FreelanceJob, FreelanceJob, QDistinct>
      distinctByETypeFreelance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eTypeFreelance');
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QDistinct> distinctByLastVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastVersion');
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QDistinct> distinctByLeftWorkTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leftWorkTime');
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QDistinct> distinctByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'level');
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QDistinct> distinctByRepeat() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'repeat');
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QDistinct> distinctByUid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FreelanceJob, FreelanceJob, QDistinct> distinctByWorkTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'workTime');
    });
  }
}

extension FreelanceJobQueryProperty
    on QueryBuilder<FreelanceJob, FreelanceJob, QQueryProperty> {
  QueryBuilder<FreelanceJob, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FreelanceJob, ETypeFreelance, QQueryOperations>
      eTypeFreelanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eTypeFreelance');
    });
  }

  QueryBuilder<FreelanceJob, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<FreelanceJob, int, QQueryOperations> lastVersionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastVersion');
    });
  }

  QueryBuilder<FreelanceJob, int, QQueryOperations> leftWorkTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leftWorkTime');
    });
  }

  QueryBuilder<FreelanceJob, int, QQueryOperations> levelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'level');
    });
  }

  QueryBuilder<FreelanceJob, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<FreelanceJob, bool, QQueryOperations> repeatProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'repeat');
    });
  }

  QueryBuilder<FreelanceJob, List<SkillEmb>, QQueryOperations>
      reqSkillsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reqSkills');
    });
  }

  QueryBuilder<FreelanceJob, String, QQueryOperations> uidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uid');
    });
  }

  QueryBuilder<FreelanceJob, List<SkillEmb>, QQueryOperations>
      userSkillsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userSkills');
    });
  }

  QueryBuilder<FreelanceJob, int, QQueryOperations> workTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workTime');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FreelanceJob _$FreelanceJobFromJson(Map<String, dynamic> json) => FreelanceJob(
      id: json['id'] as int? ?? Isar.autoIncrement,
      uid: json['uid'] as String,
      name: json['name'] as String,
      eTypeFreelance:
          $enumDecode(_$ETypeFreelanceEnumMap, json['eTypeFreelance']),
      level: json['level'] as int,
      workTime: json['workTime'] as int,
      leftWorkTime: json['leftWorkTime'] as int,
      reqSkills: (json['reqSkills'] as List<dynamic>)
          .map((e) => SkillEmb.fromJson(e as Map<String, dynamic>))
          .toList(),
      userSkills: (json['userSkills'] as List<dynamic>)
          .map((e) => SkillEmb.fromJson(e as Map<String, dynamic>))
          .toList(),
      repeat: json['repeat'] as bool? ?? false,
      lastVersion: json['lastVersion'] as int? ?? 0,
    );

Map<String, dynamic> _$FreelanceJobToJson(FreelanceJob instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'name': instance.name,
      'eTypeFreelance': _$ETypeFreelanceEnumMap[instance.eTypeFreelance]!,
      'level': instance.level,
      'workTime': instance.workTime,
      'leftWorkTime': instance.leftWorkTime,
      'reqSkills': instance.reqSkills.map((e) => e.toJson()).toList(),
      'userSkills': instance.userSkills.map((e) => e.toJson()).toList(),
      'repeat': instance.repeat,
      'lastVersion': instance.lastVersion,
    };

const _$ETypeFreelanceEnumMap = {
  ETypeFreelance.book: 'book',
  ETypeFreelance.course: 'course',
  ETypeFreelance.youtube: 'youtube',
  ETypeFreelance.application: 'application',
  ETypeFreelance.handicrafts: 'handicrafts',
};
