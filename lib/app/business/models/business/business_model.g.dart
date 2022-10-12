// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetBusinessCollection on Isar {
  IsarCollection<Business> get business => this.collection();
}

const BusinessSchema = CollectionSchema(
  name: r'Businesses',
  id: 1694791745919376702,
  properties: {
    r'countAccountant': PropertySchema(
      id: 0,
      name: r'countAccountant',
      type: IsarType.long,
    ),
    r'countAnalyst': PropertySchema(
      id: 1,
      name: r'countAnalyst',
      type: IsarType.long,
    ),
    r'countManager': PropertySchema(
      id: 2,
      name: r'countManager',
      type: IsarType.long,
    ),
    r'countMarketer': PropertySchema(
      id: 3,
      name: r'countMarketer',
      type: IsarType.long,
    ),
    r'countScientist': PropertySchema(
      id: 4,
      name: r'countScientist',
      type: IsarType.long,
    ),
    r'countWorkers': PropertySchema(
      id: 5,
      name: r'countWorkers',
      type: IsarType.long,
    ),
    r'dateCre': PropertySchema(
      id: 6,
      name: r'dateCre',
      type: IsarType.dateTime,
    ),
    r'efficiencyEmployees': PropertySchema(
      id: 7,
      name: r'efficiencyEmployees',
      type: IsarType.long,
    ),
    r'efficiencyScientist': PropertySchema(
      id: 8,
      name: r'efficiencyScientist',
      type: IsarType.long,
    ),
    r'hashCode': PropertySchema(
      id: 9,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'maxAccountant': PropertySchema(
      id: 10,
      name: r'maxAccountant',
      type: IsarType.long,
    ),
    r'maxAnalyst': PropertySchema(
      id: 11,
      name: r'maxAnalyst',
      type: IsarType.long,
    ),
    r'maxManager': PropertySchema(
      id: 12,
      name: r'maxManager',
      type: IsarType.long,
    ),
    r'maxMarketer': PropertySchema(
      id: 13,
      name: r'maxMarketer',
      type: IsarType.long,
    ),
    r'maxScientist': PropertySchema(
      id: 14,
      name: r'maxScientist',
      type: IsarType.long,
    ),
    r'maxWorkers': PropertySchema(
      id: 15,
      name: r'maxWorkers',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 16,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _businessEstimateSize,
  serialize: _businessSerialize,
  deserialize: _businessDeserialize,
  deserializeProp: _businessDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _businessGetId,
  getLinks: _businessGetLinks,
  attach: _businessAttach,
  version: '3.0.2',
);

int _businessEstimateSize(
  Business object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _businessSerialize(
  Business object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.countAccountant);
  writer.writeLong(offsets[1], object.countAnalyst);
  writer.writeLong(offsets[2], object.countManager);
  writer.writeLong(offsets[3], object.countMarketer);
  writer.writeLong(offsets[4], object.countScientist);
  writer.writeLong(offsets[5], object.countWorkers);
  writer.writeDateTime(offsets[6], object.dateCre);
  writer.writeLong(offsets[7], object.efficiencyEmployees);
  writer.writeLong(offsets[8], object.efficiencyScientist);
  writer.writeLong(offsets[9], object.hashCode);
  writer.writeLong(offsets[10], object.maxAccountant);
  writer.writeLong(offsets[11], object.maxAnalyst);
  writer.writeLong(offsets[12], object.maxManager);
  writer.writeLong(offsets[13], object.maxMarketer);
  writer.writeLong(offsets[14], object.maxScientist);
  writer.writeLong(offsets[15], object.maxWorkers);
  writer.writeString(offsets[16], object.name);
}

Business _businessDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Business(
    countAccountant: reader.readLongOrNull(offsets[0]) ?? 0,
    countAnalyst: reader.readLongOrNull(offsets[1]) ?? 0,
    countManager: reader.readLongOrNull(offsets[2]) ?? 0,
    countMarketer: reader.readLongOrNull(offsets[3]) ?? 0,
    countScientist: reader.readLongOrNull(offsets[4]) ?? 0,
    countWorkers: reader.readLongOrNull(offsets[5]) ?? 0,
    dateCre: reader.readDateTime(offsets[6]),
    efficiencyEmployees: reader.readLongOrNull(offsets[7]) ?? 1,
    efficiencyScientist: reader.readLongOrNull(offsets[8]) ?? 1,
    id: id,
    maxAccountant: reader.readLongOrNull(offsets[10]) ?? 0,
    maxAnalyst: reader.readLongOrNull(offsets[11]) ?? 0,
    maxManager: reader.readLongOrNull(offsets[12]) ?? 0,
    maxMarketer: reader.readLongOrNull(offsets[13]) ?? 0,
    maxScientist: reader.readLongOrNull(offsets[14]) ?? 2,
    maxWorkers: reader.readLongOrNull(offsets[15]) ?? 10,
    name: reader.readString(offsets[16]),
  );
  return object;
}

P _businessDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 4:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 5:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset) ?? 1) as P;
    case 8:
      return (reader.readLongOrNull(offset) ?? 1) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 11:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 12:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 13:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 14:
      return (reader.readLongOrNull(offset) ?? 2) as P;
    case 15:
      return (reader.readLongOrNull(offset) ?? 10) as P;
    case 16:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _businessGetId(Business object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _businessGetLinks(Business object) {
  return [];
}

void _businessAttach(IsarCollection<dynamic> col, Id id, Business object) {}

extension BusinessQueryWhereSort on QueryBuilder<Business, Business, QWhere> {
  QueryBuilder<Business, Business, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BusinessQueryWhere on QueryBuilder<Business, Business, QWhereClause> {
  QueryBuilder<Business, Business, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Business, Business, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Business, Business, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Business, Business, QAfterWhereClause> idBetween(
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

extension BusinessQueryFilter
    on QueryBuilder<Business, Business, QFilterCondition> {
  QueryBuilder<Business, Business, QAfterFilterCondition>
      countAccountantEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countAccountant',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      countAccountantGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'countAccountant',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      countAccountantLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'countAccountant',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      countAccountantBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'countAccountant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> countAnalystEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countAnalyst',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      countAnalystGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'countAnalyst',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> countAnalystLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'countAnalyst',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> countAnalystBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'countAnalyst',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> countManagerEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countManager',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      countManagerGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'countManager',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> countManagerLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'countManager',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> countManagerBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'countManager',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> countMarketerEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countMarketer',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      countMarketerGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'countMarketer',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> countMarketerLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'countMarketer',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> countMarketerBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'countMarketer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> countScientistEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countScientist',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      countScientistGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'countScientist',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      countScientistLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'countScientist',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> countScientistBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'countScientist',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> countWorkersEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countWorkers',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      countWorkersGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'countWorkers',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> countWorkersLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'countWorkers',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> countWorkersBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'countWorkers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> dateCreEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCre',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> dateCreGreaterThan(
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

  QueryBuilder<Business, Business, QAfterFilterCondition> dateCreLessThan(
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

  QueryBuilder<Business, Business, QAfterFilterCondition> dateCreBetween(
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

  QueryBuilder<Business, Business, QAfterFilterCondition>
      efficiencyEmployeesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'efficiencyEmployees',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      efficiencyEmployeesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'efficiencyEmployees',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      efficiencyEmployeesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'efficiencyEmployees',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      efficiencyEmployeesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'efficiencyEmployees',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      efficiencyScientistEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'efficiencyScientist',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      efficiencyScientistGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'efficiencyScientist',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      efficiencyScientistLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'efficiencyScientist',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      efficiencyScientistBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'efficiencyScientist',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<Business, Business, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<Business, Business, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<Business, Business, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Business, Business, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Business, Business, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Business, Business, QAfterFilterCondition> maxAccountantEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxAccountant',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      maxAccountantGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxAccountant',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxAccountantLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxAccountant',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxAccountantBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxAccountant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxAnalystEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxAnalyst',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxAnalystGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxAnalyst',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxAnalystLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxAnalyst',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxAnalystBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxAnalyst',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxManagerEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxManager',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxManagerGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxManager',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxManagerLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxManager',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxManagerBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxManager',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxMarketerEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxMarketer',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      maxMarketerGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxMarketer',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxMarketerLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxMarketer',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxMarketerBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxMarketer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxScientistEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxScientist',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition>
      maxScientistGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxScientist',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxScientistLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxScientist',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxScientistBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxScientist',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxWorkersEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxWorkers',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxWorkersGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxWorkers',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxWorkersLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxWorkers',
        value: value,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> maxWorkersBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxWorkers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Business, Business, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Business, Business, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Business, Business, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Business, Business, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Business, Business, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Business, Business, QAfterFilterCondition> nameContains(
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

  QueryBuilder<Business, Business, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<Business, Business, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Business, Business, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension BusinessQueryObject
    on QueryBuilder<Business, Business, QFilterCondition> {}

extension BusinessQueryLinks
    on QueryBuilder<Business, Business, QFilterCondition> {}

extension BusinessQuerySortBy on QueryBuilder<Business, Business, QSortBy> {
  QueryBuilder<Business, Business, QAfterSortBy> sortByCountAccountant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countAccountant', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByCountAccountantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countAccountant', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByCountAnalyst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countAnalyst', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByCountAnalystDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countAnalyst', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByCountManager() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countManager', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByCountManagerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countManager', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByCountMarketer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countMarketer', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByCountMarketerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countMarketer', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByCountScientist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countScientist', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByCountScientistDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countScientist', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByCountWorkers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countWorkers', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByCountWorkersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countWorkers', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByDateCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCre', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByDateCreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCre', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByEfficiencyEmployees() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efficiencyEmployees', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy>
      sortByEfficiencyEmployeesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efficiencyEmployees', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByEfficiencyScientist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efficiencyScientist', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy>
      sortByEfficiencyScientistDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efficiencyScientist', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByMaxAccountant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAccountant', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByMaxAccountantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAccountant', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByMaxAnalyst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAnalyst', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByMaxAnalystDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAnalyst', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByMaxManager() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxManager', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByMaxManagerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxManager', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByMaxMarketer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxMarketer', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByMaxMarketerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxMarketer', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByMaxScientist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxScientist', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByMaxScientistDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxScientist', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByMaxWorkers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxWorkers', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByMaxWorkersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxWorkers', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension BusinessQuerySortThenBy
    on QueryBuilder<Business, Business, QSortThenBy> {
  QueryBuilder<Business, Business, QAfterSortBy> thenByCountAccountant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countAccountant', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByCountAccountantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countAccountant', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByCountAnalyst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countAnalyst', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByCountAnalystDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countAnalyst', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByCountManager() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countManager', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByCountManagerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countManager', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByCountMarketer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countMarketer', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByCountMarketerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countMarketer', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByCountScientist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countScientist', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByCountScientistDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countScientist', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByCountWorkers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countWorkers', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByCountWorkersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countWorkers', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByDateCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCre', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByDateCreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCre', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByEfficiencyEmployees() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efficiencyEmployees', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy>
      thenByEfficiencyEmployeesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efficiencyEmployees', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByEfficiencyScientist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efficiencyScientist', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy>
      thenByEfficiencyScientistDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efficiencyScientist', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByMaxAccountant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAccountant', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByMaxAccountantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAccountant', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByMaxAnalyst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAnalyst', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByMaxAnalystDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAnalyst', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByMaxManager() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxManager', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByMaxManagerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxManager', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByMaxMarketer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxMarketer', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByMaxMarketerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxMarketer', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByMaxScientist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxScientist', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByMaxScientistDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxScientist', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByMaxWorkers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxWorkers', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByMaxWorkersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxWorkers', Sort.desc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Business, Business, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension BusinessQueryWhereDistinct
    on QueryBuilder<Business, Business, QDistinct> {
  QueryBuilder<Business, Business, QDistinct> distinctByCountAccountant() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'countAccountant');
    });
  }

  QueryBuilder<Business, Business, QDistinct> distinctByCountAnalyst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'countAnalyst');
    });
  }

  QueryBuilder<Business, Business, QDistinct> distinctByCountManager() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'countManager');
    });
  }

  QueryBuilder<Business, Business, QDistinct> distinctByCountMarketer() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'countMarketer');
    });
  }

  QueryBuilder<Business, Business, QDistinct> distinctByCountScientist() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'countScientist');
    });
  }

  QueryBuilder<Business, Business, QDistinct> distinctByCountWorkers() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'countWorkers');
    });
  }

  QueryBuilder<Business, Business, QDistinct> distinctByDateCre() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCre');
    });
  }

  QueryBuilder<Business, Business, QDistinct> distinctByEfficiencyEmployees() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'efficiencyEmployees');
    });
  }

  QueryBuilder<Business, Business, QDistinct> distinctByEfficiencyScientist() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'efficiencyScientist');
    });
  }

  QueryBuilder<Business, Business, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<Business, Business, QDistinct> distinctByMaxAccountant() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxAccountant');
    });
  }

  QueryBuilder<Business, Business, QDistinct> distinctByMaxAnalyst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxAnalyst');
    });
  }

  QueryBuilder<Business, Business, QDistinct> distinctByMaxManager() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxManager');
    });
  }

  QueryBuilder<Business, Business, QDistinct> distinctByMaxMarketer() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxMarketer');
    });
  }

  QueryBuilder<Business, Business, QDistinct> distinctByMaxScientist() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxScientist');
    });
  }

  QueryBuilder<Business, Business, QDistinct> distinctByMaxWorkers() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxWorkers');
    });
  }

  QueryBuilder<Business, Business, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension BusinessQueryProperty
    on QueryBuilder<Business, Business, QQueryProperty> {
  QueryBuilder<Business, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Business, int, QQueryOperations> countAccountantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'countAccountant');
    });
  }

  QueryBuilder<Business, int, QQueryOperations> countAnalystProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'countAnalyst');
    });
  }

  QueryBuilder<Business, int, QQueryOperations> countManagerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'countManager');
    });
  }

  QueryBuilder<Business, int, QQueryOperations> countMarketerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'countMarketer');
    });
  }

  QueryBuilder<Business, int, QQueryOperations> countScientistProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'countScientist');
    });
  }

  QueryBuilder<Business, int, QQueryOperations> countWorkersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'countWorkers');
    });
  }

  QueryBuilder<Business, DateTime, QQueryOperations> dateCreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCre');
    });
  }

  QueryBuilder<Business, int, QQueryOperations> efficiencyEmployeesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'efficiencyEmployees');
    });
  }

  QueryBuilder<Business, int, QQueryOperations> efficiencyScientistProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'efficiencyScientist');
    });
  }

  QueryBuilder<Business, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<Business, int, QQueryOperations> maxAccountantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxAccountant');
    });
  }

  QueryBuilder<Business, int, QQueryOperations> maxAnalystProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxAnalyst');
    });
  }

  QueryBuilder<Business, int, QQueryOperations> maxManagerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxManager');
    });
  }

  QueryBuilder<Business, int, QQueryOperations> maxMarketerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxMarketer');
    });
  }

  QueryBuilder<Business, int, QQueryOperations> maxScientistProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxScientist');
    });
  }

  QueryBuilder<Business, int, QQueryOperations> maxWorkersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxWorkers');
    });
  }

  QueryBuilder<Business, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
