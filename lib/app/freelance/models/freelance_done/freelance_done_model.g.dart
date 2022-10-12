// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freelance_done_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetFreelanceDoneCollection on Isar {
  IsarCollection<FreelanceDone> get freelanceDones => this.collection();
}

const FreelanceDoneSchema = CollectionSchema(
  name: r'Freelances',
  id: -6337888209594319898,
  properties: {
    r'dateCre': PropertySchema(
      id: 0,
      name: r'dateCre',
      type: IsarType.dateTime,
    ),
    r'eTypeFreelance': PropertySchema(
      id: 1,
      name: r'eTypeFreelance',
      type: IsarType.byte,
      enumMap: _FreelanceDoneeTypeFreelanceEnumValueMap,
    ),
    r'fame': PropertySchema(
      id: 2,
      name: r'fame',
      type: IsarType.double,
    ),
    r'hashCode': PropertySchema(
      id: 3,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    ),
    r'next1': PropertySchema(
      id: 5,
      name: r'next1',
      type: IsarType.dateTime,
    ),
    r'next2': PropertySchema(
      id: 6,
      name: r'next2',
      type: IsarType.dateTime,
    ),
    r'next3': PropertySchema(
      id: 7,
      name: r'next3',
      type: IsarType.dateTime,
    ),
    r'price': PropertySchema(
      id: 8,
      name: r'price',
      type: IsarType.double,
    ),
    r'rating': PropertySchema(
      id: 9,
      name: r'rating',
      type: IsarType.long,
    )
  },
  estimateSize: _freelanceDoneEstimateSize,
  serialize: _freelanceDoneSerialize,
  deserialize: _freelanceDoneDeserialize,
  deserializeProp: _freelanceDoneDeserializeProp,
  idName: r'id',
  indexes: {
    r'next1': IndexSchema(
      id: -605068969830150124,
      name: r'next1',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'next1',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'next2': IndexSchema(
      id: -2140858904699054928,
      name: r'next2',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'next2',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'next3': IndexSchema(
      id: -2115849612667372786,
      name: r'next3',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'next3',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _freelanceDoneGetId,
  getLinks: _freelanceDoneGetLinks,
  attach: _freelanceDoneAttach,
  version: '3.0.2',
);

int _freelanceDoneEstimateSize(
  FreelanceDone object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _freelanceDoneSerialize(
  FreelanceDone object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.dateCre);
  writer.writeByte(offsets[1], object.eTypeFreelance.index);
  writer.writeDouble(offsets[2], object.fame);
  writer.writeLong(offsets[3], object.hashCode);
  writer.writeString(offsets[4], object.name);
  writer.writeDateTime(offsets[5], object.next1);
  writer.writeDateTime(offsets[6], object.next2);
  writer.writeDateTime(offsets[7], object.next3);
  writer.writeDouble(offsets[8], object.price);
  writer.writeLong(offsets[9], object.rating);
}

FreelanceDone _freelanceDoneDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FreelanceDone(
    dateCre: reader.readDateTime(offsets[0]),
    eTypeFreelance: _FreelanceDoneeTypeFreelanceValueEnumMap[
            reader.readByteOrNull(offsets[1])] ??
        ETypeFreelance.book,
    fame: reader.readDouble(offsets[2]),
    id: id,
    name: reader.readString(offsets[4]),
    price: reader.readDouble(offsets[8]),
    rating: reader.readLong(offsets[9]),
  );
  return object;
}

P _freelanceDoneDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (_FreelanceDoneeTypeFreelanceValueEnumMap[
              reader.readByteOrNull(offset)] ??
          ETypeFreelance.book) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readDateTime(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _FreelanceDoneeTypeFreelanceEnumValueMap = {
  'book': 0,
  'course': 1,
  'youtube': 2,
  'application': 3,
  'handicrafts': 4,
};
const _FreelanceDoneeTypeFreelanceValueEnumMap = {
  0: ETypeFreelance.book,
  1: ETypeFreelance.course,
  2: ETypeFreelance.youtube,
  3: ETypeFreelance.application,
  4: ETypeFreelance.handicrafts,
};

Id _freelanceDoneGetId(FreelanceDone object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _freelanceDoneGetLinks(FreelanceDone object) {
  return [];
}

void _freelanceDoneAttach(
    IsarCollection<dynamic> col, Id id, FreelanceDone object) {}

extension FreelanceDoneQueryWhereSort
    on QueryBuilder<FreelanceDone, FreelanceDone, QWhere> {
  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhere> anyNext1() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'next1'),
      );
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhere> anyNext2() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'next2'),
      );
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhere> anyNext3() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'next3'),
      );
    });
  }
}

extension FreelanceDoneQueryWhere
    on QueryBuilder<FreelanceDone, FreelanceDone, QWhereClause> {
  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause> idBetween(
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause> next1EqualTo(
      DateTime next1) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'next1',
        value: [next1],
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause> next1NotEqualTo(
      DateTime next1) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'next1',
              lower: [],
              upper: [next1],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'next1',
              lower: [next1],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'next1',
              lower: [next1],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'next1',
              lower: [],
              upper: [next1],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause>
      next1GreaterThan(
    DateTime next1, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'next1',
        lower: [next1],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause> next1LessThan(
    DateTime next1, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'next1',
        lower: [],
        upper: [next1],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause> next1Between(
    DateTime lowerNext1,
    DateTime upperNext1, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'next1',
        lower: [lowerNext1],
        includeLower: includeLower,
        upper: [upperNext1],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause> next2EqualTo(
      DateTime next2) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'next2',
        value: [next2],
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause> next2NotEqualTo(
      DateTime next2) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'next2',
              lower: [],
              upper: [next2],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'next2',
              lower: [next2],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'next2',
              lower: [next2],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'next2',
              lower: [],
              upper: [next2],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause>
      next2GreaterThan(
    DateTime next2, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'next2',
        lower: [next2],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause> next2LessThan(
    DateTime next2, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'next2',
        lower: [],
        upper: [next2],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause> next2Between(
    DateTime lowerNext2,
    DateTime upperNext2, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'next2',
        lower: [lowerNext2],
        includeLower: includeLower,
        upper: [upperNext2],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause> next3EqualTo(
      DateTime next3) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'next3',
        value: [next3],
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause> next3NotEqualTo(
      DateTime next3) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'next3',
              lower: [],
              upper: [next3],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'next3',
              lower: [next3],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'next3',
              lower: [next3],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'next3',
              lower: [],
              upper: [next3],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause>
      next3GreaterThan(
    DateTime next3, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'next3',
        lower: [next3],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause> next3LessThan(
    DateTime next3, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'next3',
        lower: [],
        upper: [next3],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterWhereClause> next3Between(
    DateTime lowerNext3,
    DateTime upperNext3, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'next3',
        lower: [lowerNext3],
        includeLower: includeLower,
        upper: [upperNext3],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FreelanceDoneQueryFilter
    on QueryBuilder<FreelanceDone, FreelanceDone, QFilterCondition> {
  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      dateCreEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCre',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      dateCreGreaterThan(
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      dateCreLessThan(
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      dateCreBetween(
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      eTypeFreelanceEqualTo(ETypeFreelance value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eTypeFreelance',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition> fameEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fame',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      fameGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fame',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      fameLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fame',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition> fameBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fame',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition> idBetween(
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      nameLessThan(
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      nameEndsWith(
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      next1EqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'next1',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      next1GreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'next1',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      next1LessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'next1',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      next1Between(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'next1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      next2EqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'next2',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      next2GreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'next2',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      next2LessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'next2',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      next2Between(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'next2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      next3EqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'next3',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      next3GreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'next3',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      next3LessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'next3',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      next3Between(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'next3',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      priceEqualTo(
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      priceGreaterThan(
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      priceLessThan(
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      priceBetween(
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

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      ratingEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rating',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      ratingGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rating',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      ratingLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rating',
        value: value,
      ));
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterFilterCondition>
      ratingBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rating',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FreelanceDoneQueryObject
    on QueryBuilder<FreelanceDone, FreelanceDone, QFilterCondition> {}

extension FreelanceDoneQueryLinks
    on QueryBuilder<FreelanceDone, FreelanceDone, QFilterCondition> {}

extension FreelanceDoneQuerySortBy
    on QueryBuilder<FreelanceDone, FreelanceDone, QSortBy> {
  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> sortByDateCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCre', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> sortByDateCreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCre', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy>
      sortByETypeFreelance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeFreelance', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy>
      sortByETypeFreelanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeFreelance', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> sortByFame() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fame', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> sortByFameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fame', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> sortByNext1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next1', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> sortByNext1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next1', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> sortByNext2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next2', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> sortByNext2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next2', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> sortByNext3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next3', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> sortByNext3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next3', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> sortByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> sortByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }
}

extension FreelanceDoneQuerySortThenBy
    on QueryBuilder<FreelanceDone, FreelanceDone, QSortThenBy> {
  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByDateCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCre', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByDateCreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCre', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy>
      thenByETypeFreelance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeFreelance', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy>
      thenByETypeFreelanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeFreelance', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByFame() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fame', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByFameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fame', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByNext1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next1', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByNext1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next1', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByNext2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next2', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByNext2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next2', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByNext3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next3', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByNext3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'next3', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QAfterSortBy> thenByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }
}

extension FreelanceDoneQueryWhereDistinct
    on QueryBuilder<FreelanceDone, FreelanceDone, QDistinct> {
  QueryBuilder<FreelanceDone, FreelanceDone, QDistinct> distinctByDateCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCre');
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QDistinct>
      distinctByETypeFreelance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eTypeFreelance');
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QDistinct> distinctByFame() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fame');
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QDistinct> distinctByNext1() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'next1');
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QDistinct> distinctByNext2() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'next2');
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QDistinct> distinctByNext3() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'next3');
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QDistinct> distinctByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price');
    });
  }

  QueryBuilder<FreelanceDone, FreelanceDone, QDistinct> distinctByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rating');
    });
  }
}

extension FreelanceDoneQueryProperty
    on QueryBuilder<FreelanceDone, FreelanceDone, QQueryProperty> {
  QueryBuilder<FreelanceDone, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FreelanceDone, DateTime, QQueryOperations> dateCreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCre');
    });
  }

  QueryBuilder<FreelanceDone, ETypeFreelance, QQueryOperations>
      eTypeFreelanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eTypeFreelance');
    });
  }

  QueryBuilder<FreelanceDone, double, QQueryOperations> fameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fame');
    });
  }

  QueryBuilder<FreelanceDone, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<FreelanceDone, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<FreelanceDone, DateTime, QQueryOperations> next1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'next1');
    });
  }

  QueryBuilder<FreelanceDone, DateTime, QQueryOperations> next2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'next2');
    });
  }

  QueryBuilder<FreelanceDone, DateTime, QQueryOperations> next3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'next3');
    });
  }

  QueryBuilder<FreelanceDone, double, QQueryOperations> priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }

  QueryBuilder<FreelanceDone, int, QQueryOperations> ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rating');
    });
  }
}
