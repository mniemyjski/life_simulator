// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_emb_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const SkillEmbSchema = Schema(
  name: r'SkillEmb',
  id: -5121889925881082472,
  properties: {
    r'lvl': PropertySchema(
      id: 0,
      name: r'lvl',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.byte,
      enumMap: _SkillEmbnameEnumValueMap,
    )
  },
  estimateSize: _skillEmbEstimateSize,
  serialize: _skillEmbSerialize,
  deserialize: _skillEmbDeserialize,
  deserializeProp: _skillEmbDeserializeProp,
);

int _skillEmbEstimateSize(
  SkillEmb object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _skillEmbSerialize(
  SkillEmb object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.lvl);
  writer.writeByte(offsets[1], object.name.index);
}

SkillEmb _skillEmbDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SkillEmb(
    lvl: reader.readLongOrNull(offsets[0]) ?? 0,
    name: _SkillEmbnameValueEnumMap[reader.readByteOrNull(offsets[1])] ??
        ETypeSkills.programming,
  );
  return object;
}

P _skillEmbDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 1:
      return (_SkillEmbnameValueEnumMap[reader.readByteOrNull(offset)] ??
          ETypeSkills.programming) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _SkillEmbnameEnumValueMap = {
  'programming': 0,
  'analytics': 1,
  'bookkeeping': 2,
  'business': 3,
  'management': 4,
  'confidence': 5,
  'communicativeness': 6,
  'writing': 7,
  'creativity': 8,
  'handyman': 9,
};
const _SkillEmbnameValueEnumMap = {
  0: ETypeSkills.programming,
  1: ETypeSkills.analytics,
  2: ETypeSkills.bookkeeping,
  3: ETypeSkills.business,
  4: ETypeSkills.management,
  5: ETypeSkills.confidence,
  6: ETypeSkills.communicativeness,
  7: ETypeSkills.writing,
  8: ETypeSkills.creativity,
  9: ETypeSkills.handyman,
};

extension SkillEmbQueryFilter
    on QueryBuilder<SkillEmb, SkillEmb, QFilterCondition> {
  QueryBuilder<SkillEmb, SkillEmb, QAfterFilterCondition> lvlEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lvl',
        value: value,
      ));
    });
  }

  QueryBuilder<SkillEmb, SkillEmb, QAfterFilterCondition> lvlGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lvl',
        value: value,
      ));
    });
  }

  QueryBuilder<SkillEmb, SkillEmb, QAfterFilterCondition> lvlLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lvl',
        value: value,
      ));
    });
  }

  QueryBuilder<SkillEmb, SkillEmb, QAfterFilterCondition> lvlBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lvl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SkillEmb, SkillEmb, QAfterFilterCondition> nameEqualTo(
      ETypeSkills value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
      ));
    });
  }

  QueryBuilder<SkillEmb, SkillEmb, QAfterFilterCondition> nameGreaterThan(
    ETypeSkills value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
      ));
    });
  }

  QueryBuilder<SkillEmb, SkillEmb, QAfterFilterCondition> nameLessThan(
    ETypeSkills value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
      ));
    });
  }

  QueryBuilder<SkillEmb, SkillEmb, QAfterFilterCondition> nameBetween(
    ETypeSkills lower,
    ETypeSkills upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SkillEmbQueryObject
    on QueryBuilder<SkillEmb, SkillEmb, QFilterCondition> {}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkillEmb _$SkillEmbFromJson(Map<String, dynamic> json) => SkillEmb(
      name: $enumDecodeNullable(_$ETypeSkillsEnumMap, json['name']) ??
          ETypeSkills.programming,
      lvl: json['lvl'] as int? ?? 0,
    );

Map<String, dynamic> _$SkillEmbToJson(SkillEmb instance) => <String, dynamic>{
      'name': _$ETypeSkillsEnumMap[instance.name]!,
      'lvl': instance.lvl,
    };

const _$ETypeSkillsEnumMap = {
  ETypeSkills.programming: 'programming',
  ETypeSkills.analytics: 'analytics',
  ETypeSkills.bookkeeping: 'bookkeeping',
  ETypeSkills.business: 'business',
  ETypeSkills.management: 'management',
  ETypeSkills.confidence: 'confidence',
  ETypeSkills.communicativeness: 'communicativeness',
  ETypeSkills.writing: 'writing',
  ETypeSkills.creativity: 'creativity',
  ETypeSkills.handyman: 'handyman',
};
