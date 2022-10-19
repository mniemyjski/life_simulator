// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SkillCWProxy {
  Skill exp(double exp);

  Skill id(int id);

  Skill lvl(int lvl);

  Skill name(ETypeSkills name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Skill(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Skill(...).copyWith(id: 12, name: "My name")
  /// ````
  Skill call({
    double? exp,
    int? id,
    int? lvl,
    ETypeSkills? name,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSkill.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSkill.copyWith.fieldName(...)`
class _$SkillCWProxyImpl implements _$SkillCWProxy {
  final Skill _value;

  const _$SkillCWProxyImpl(this._value);

  @override
  Skill exp(double exp) => this(exp: exp);

  @override
  Skill id(int id) => this(id: id);

  @override
  Skill lvl(int lvl) => this(lvl: lvl);

  @override
  Skill name(ETypeSkills name) => this(name: name);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Skill(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Skill(...).copyWith(id: 12, name: "My name")
  /// ````
  Skill call({
    Object? exp = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? lvl = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return Skill(
      exp: exp == const $CopyWithPlaceholder() || exp == null
          ? _value.exp
          // ignore: cast_nullable_to_non_nullable
          : exp as double,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      lvl: lvl == const $CopyWithPlaceholder() || lvl == null
          ? _value.lvl
          // ignore: cast_nullable_to_non_nullable
          : lvl as int,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as ETypeSkills,
    );
  }
}

extension $SkillCopyWith on Skill {
  /// Returns a callable class that can be used as follows: `instanceOfSkill.copyWith(...)` or like so:`instanceOfSkill.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SkillCWProxy get copyWith => _$SkillCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetSkillCollection on Isar {
  IsarCollection<Skill> get skills => this.collection();
}

const SkillSchema = CollectionSchema(
  name: r'Skills',
  id: -4362331175233741020,
  properties: {
    r'exp': PropertySchema(
      id: 0,
      name: r'exp',
      type: IsarType.double,
    ),
    r'hashCode': PropertySchema(
      id: 1,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'lvl': PropertySchema(
      id: 2,
      name: r'lvl',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.byte,
      enumMap: _SkillnameEnumValueMap,
    )
  },
  estimateSize: _skillEstimateSize,
  serialize: _skillSerialize,
  deserialize: _skillDeserialize,
  deserializeProp: _skillDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _skillGetId,
  getLinks: _skillGetLinks,
  attach: _skillAttach,
  version: '3.0.2',
);

int _skillEstimateSize(
  Skill object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _skillSerialize(
  Skill object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.exp);
  writer.writeLong(offsets[1], object.hashCode);
  writer.writeLong(offsets[2], object.lvl);
  writer.writeByte(offsets[3], object.name.index);
}

Skill _skillDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Skill(
    exp: reader.readDoubleOrNull(offsets[0]) ?? 0,
    id: id,
    lvl: reader.readLongOrNull(offsets[2]) ?? 0,
    name: _SkillnameValueEnumMap[reader.readByteOrNull(offsets[3])] ??
        ETypeSkills.programming,
  );
  return object;
}

P _skillDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 3:
      return (_SkillnameValueEnumMap[reader.readByteOrNull(offset)] ??
          ETypeSkills.programming) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _SkillnameEnumValueMap = {
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
const _SkillnameValueEnumMap = {
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

Id _skillGetId(Skill object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _skillGetLinks(Skill object) {
  return [];
}

void _skillAttach(IsarCollection<dynamic> col, Id id, Skill object) {}

extension SkillQueryWhereSort on QueryBuilder<Skill, Skill, QWhere> {
  QueryBuilder<Skill, Skill, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SkillQueryWhere on QueryBuilder<Skill, Skill, QWhereClause> {
  QueryBuilder<Skill, Skill, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Skill, Skill, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Skill, Skill, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Skill, Skill, QAfterWhereClause> idBetween(
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

extension SkillQueryFilter on QueryBuilder<Skill, Skill, QFilterCondition> {
  QueryBuilder<Skill, Skill, QAfterFilterCondition> expEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'exp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> expGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'exp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> expLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'exp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> expBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'exp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<Skill, Skill, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<Skill, Skill, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<Skill, Skill, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Skill, Skill, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Skill, Skill, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Skill, Skill, QAfterFilterCondition> lvlEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lvl',
        value: value,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> lvlGreaterThan(
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

  QueryBuilder<Skill, Skill, QAfterFilterCondition> lvlLessThan(
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

  QueryBuilder<Skill, Skill, QAfterFilterCondition> lvlBetween(
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

  QueryBuilder<Skill, Skill, QAfterFilterCondition> nameEqualTo(
      ETypeSkills value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Skill, Skill, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Skill, Skill, QAfterFilterCondition> nameBetween(
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

extension SkillQueryObject on QueryBuilder<Skill, Skill, QFilterCondition> {}

extension SkillQueryLinks on QueryBuilder<Skill, Skill, QFilterCondition> {}

extension SkillQuerySortBy on QueryBuilder<Skill, Skill, QSortBy> {
  QueryBuilder<Skill, Skill, QAfterSortBy> sortByExp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exp', Sort.asc);
    });
  }

  QueryBuilder<Skill, Skill, QAfterSortBy> sortByExpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exp', Sort.desc);
    });
  }

  QueryBuilder<Skill, Skill, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Skill, Skill, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Skill, Skill, QAfterSortBy> sortByLvl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lvl', Sort.asc);
    });
  }

  QueryBuilder<Skill, Skill, QAfterSortBy> sortByLvlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lvl', Sort.desc);
    });
  }

  QueryBuilder<Skill, Skill, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Skill, Skill, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension SkillQuerySortThenBy on QueryBuilder<Skill, Skill, QSortThenBy> {
  QueryBuilder<Skill, Skill, QAfterSortBy> thenByExp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exp', Sort.asc);
    });
  }

  QueryBuilder<Skill, Skill, QAfterSortBy> thenByExpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exp', Sort.desc);
    });
  }

  QueryBuilder<Skill, Skill, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Skill, Skill, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Skill, Skill, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Skill, Skill, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Skill, Skill, QAfterSortBy> thenByLvl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lvl', Sort.asc);
    });
  }

  QueryBuilder<Skill, Skill, QAfterSortBy> thenByLvlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lvl', Sort.desc);
    });
  }

  QueryBuilder<Skill, Skill, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Skill, Skill, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension SkillQueryWhereDistinct on QueryBuilder<Skill, Skill, QDistinct> {
  QueryBuilder<Skill, Skill, QDistinct> distinctByExp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'exp');
    });
  }

  QueryBuilder<Skill, Skill, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<Skill, Skill, QDistinct> distinctByLvl() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lvl');
    });
  }

  QueryBuilder<Skill, Skill, QDistinct> distinctByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name');
    });
  }
}

extension SkillQueryProperty on QueryBuilder<Skill, Skill, QQueryProperty> {
  QueryBuilder<Skill, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Skill, double, QQueryOperations> expProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'exp');
    });
  }

  QueryBuilder<Skill, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<Skill, int, QQueryOperations> lvlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lvl');
    });
  }

  QueryBuilder<Skill, ETypeSkills, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Skill _$SkillFromJson(Map<String, dynamic> json) => Skill(
      id: json['id'] as int? ?? Isar.autoIncrement,
      name: $enumDecode(_$ETypeSkillsEnumMap, json['name']),
      lvl: json['lvl'] as int? ?? 0,
      exp: (json['exp'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$SkillToJson(Skill instance) => <String, dynamic>{
      'id': instance.id,
      'name': _$ETypeSkillsEnumMap[instance.name]!,
      'lvl': instance.lvl,
      'exp': instance.exp,
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
