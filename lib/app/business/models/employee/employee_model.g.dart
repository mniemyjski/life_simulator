// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetEmployeeCollection on Isar {
  IsarCollection<Employee> get employees => this.collection();
}

const EmployeeSchema = CollectionSchema(
  name: r'Employees',
  id: 8977499794490175554,
  properties: {
    r'businessId': PropertySchema(
      id: 0,
      name: r'businessId',
      type: IsarType.long,
    ),
    r'cost': PropertySchema(
      id: 1,
      name: r'cost',
      type: IsarType.double,
    ),
    r'dateOfEmployment': PropertySchema(
      id: 2,
      name: r'dateOfEmployment',
      type: IsarType.dateTime,
    ),
    r'eTypeEmployees': PropertySchema(
      id: 3,
      name: r'eTypeEmployees',
      type: IsarType.byte,
      enumMap: _EmployeeeTypeEmployeesEnumValueMap,
    ),
    r'efficiency': PropertySchema(
      id: 4,
      name: r'efficiency',
      type: IsarType.double,
    ),
    r'fired': PropertySchema(
      id: 5,
      name: r'fired',
      type: IsarType.dateTime,
    ),
    r'hashCode': PropertySchema(
      id: 6,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'rating': PropertySchema(
      id: 7,
      name: r'rating',
      type: IsarType.long,
    ),
    r'satisfaction': PropertySchema(
      id: 8,
      name: r'satisfaction',
      type: IsarType.long,
    )
  },
  estimateSize: _employeeEstimateSize,
  serialize: _employeeSerialize,
  deserialize: _employeeDeserialize,
  deserializeProp: _employeeDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _employeeGetId,
  getLinks: _employeeGetLinks,
  attach: _employeeAttach,
  version: '3.0.2',
);

int _employeeEstimateSize(
  Employee object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _employeeSerialize(
  Employee object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.businessId);
  writer.writeDouble(offsets[1], object.cost);
  writer.writeDateTime(offsets[2], object.dateOfEmployment);
  writer.writeByte(offsets[3], object.eTypeEmployees.index);
  writer.writeDouble(offsets[4], object.efficiency);
  writer.writeDateTime(offsets[5], object.fired);
  writer.writeLong(offsets[6], object.hashCode);
  writer.writeLong(offsets[7], object.rating);
  writer.writeLong(offsets[8], object.satisfaction);
}

Employee _employeeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Employee(
    businessId: reader.readLongOrNull(offsets[0]),
    cost: reader.readDouble(offsets[1]),
    dateOfEmployment: reader.readDateTimeOrNull(offsets[2]),
    eTypeEmployees: _EmployeeeTypeEmployeesValueEnumMap[
            reader.readByteOrNull(offsets[3])] ??
        ETypeEmployees.worker,
    efficiency: reader.readDouble(offsets[4]),
    fired: reader.readDateTimeOrNull(offsets[5]),
    id: id,
    rating: reader.readLong(offsets[7]),
    satisfaction: reader.readLongOrNull(offsets[8]) ?? 1,
  );
  return object;
}

P _employeeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (_EmployeeeTypeEmployeesValueEnumMap[
              reader.readByteOrNull(offset)] ??
          ETypeEmployees.worker) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset) ?? 1) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _EmployeeeTypeEmployeesEnumValueMap = {
  'worker': 0,
  'scientist': 1,
  'accountant': 2,
  'analyst': 3,
  'manager': 4,
  'marketer': 5,
};
const _EmployeeeTypeEmployeesValueEnumMap = {
  0: ETypeEmployees.worker,
  1: ETypeEmployees.scientist,
  2: ETypeEmployees.accountant,
  3: ETypeEmployees.analyst,
  4: ETypeEmployees.manager,
  5: ETypeEmployees.marketer,
};

Id _employeeGetId(Employee object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _employeeGetLinks(Employee object) {
  return [];
}

void _employeeAttach(IsarCollection<dynamic> col, Id id, Employee object) {}

extension EmployeeQueryWhereSort on QueryBuilder<Employee, Employee, QWhere> {
  QueryBuilder<Employee, Employee, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EmployeeQueryWhere on QueryBuilder<Employee, Employee, QWhereClause> {
  QueryBuilder<Employee, Employee, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Employee, Employee, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Employee, Employee, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Employee, Employee, QAfterWhereClause> idBetween(
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

extension EmployeeQueryFilter
    on QueryBuilder<Employee, Employee, QFilterCondition> {
  QueryBuilder<Employee, Employee, QAfterFilterCondition> businessIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'businessId',
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      businessIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'businessId',
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> businessIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'businessId',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> businessIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'businessId',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> businessIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'businessId',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> businessIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'businessId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> costEqualTo(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> costGreaterThan(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> costLessThan(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> costBetween(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      dateOfEmploymentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateOfEmployment',
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      dateOfEmploymentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateOfEmployment',
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      dateOfEmploymentEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateOfEmployment',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      dateOfEmploymentGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateOfEmployment',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      dateOfEmploymentLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateOfEmployment',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      dateOfEmploymentBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateOfEmployment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> eTypeEmployeesEqualTo(
      ETypeEmployees value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eTypeEmployees',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      eTypeEmployeesGreaterThan(
    ETypeEmployees value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eTypeEmployees',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      eTypeEmployeesLessThan(
    ETypeEmployees value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eTypeEmployees',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> eTypeEmployeesBetween(
    ETypeEmployees lower,
    ETypeEmployees upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eTypeEmployees',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> efficiencyEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'efficiency',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> efficiencyGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'efficiency',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> efficiencyLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'efficiency',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> efficiencyBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'efficiency',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> firedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fired',
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> firedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fired',
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> firedEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fired',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> firedGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fired',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> firedLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fired',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> firedBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fired',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> ratingEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rating',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> ratingGreaterThan(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> ratingLessThan(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> ratingBetween(
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> satisfactionEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'satisfaction',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      satisfactionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'satisfaction',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> satisfactionLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'satisfaction',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> satisfactionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'satisfaction',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EmployeeQueryObject
    on QueryBuilder<Employee, Employee, QFilterCondition> {}

extension EmployeeQueryLinks
    on QueryBuilder<Employee, Employee, QFilterCondition> {}

extension EmployeeQuerySortBy on QueryBuilder<Employee, Employee, QSortBy> {
  QueryBuilder<Employee, Employee, QAfterSortBy> sortByBusinessId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessId', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByBusinessIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessId', Sort.desc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByDateOfEmployment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfEmployment', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByDateOfEmploymentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfEmployment', Sort.desc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByETypeEmployees() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeEmployees', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByETypeEmployeesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeEmployees', Sort.desc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByEfficiency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efficiency', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByEfficiencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efficiency', Sort.desc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByFired() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fired', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByFiredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fired', Sort.desc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortBySatisfaction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'satisfaction', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortBySatisfactionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'satisfaction', Sort.desc);
    });
  }
}

extension EmployeeQuerySortThenBy
    on QueryBuilder<Employee, Employee, QSortThenBy> {
  QueryBuilder<Employee, Employee, QAfterSortBy> thenByBusinessId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessId', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByBusinessIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessId', Sort.desc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByDateOfEmployment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfEmployment', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByDateOfEmploymentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfEmployment', Sort.desc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByETypeEmployees() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeEmployees', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByETypeEmployeesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeEmployees', Sort.desc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByEfficiency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efficiency', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByEfficiencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'efficiency', Sort.desc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByFired() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fired', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByFiredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fired', Sort.desc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenBySatisfaction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'satisfaction', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenBySatisfactionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'satisfaction', Sort.desc);
    });
  }
}

extension EmployeeQueryWhereDistinct
    on QueryBuilder<Employee, Employee, QDistinct> {
  QueryBuilder<Employee, Employee, QDistinct> distinctByBusinessId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'businessId');
    });
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cost');
    });
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByDateOfEmployment() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateOfEmployment');
    });
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByETypeEmployees() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eTypeEmployees');
    });
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByEfficiency() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'efficiency');
    });
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByFired() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fired');
    });
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rating');
    });
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctBySatisfaction() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'satisfaction');
    });
  }
}

extension EmployeeQueryProperty
    on QueryBuilder<Employee, Employee, QQueryProperty> {
  QueryBuilder<Employee, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Employee, int?, QQueryOperations> businessIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'businessId');
    });
  }

  QueryBuilder<Employee, double, QQueryOperations> costProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cost');
    });
  }

  QueryBuilder<Employee, DateTime?, QQueryOperations>
      dateOfEmploymentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateOfEmployment');
    });
  }

  QueryBuilder<Employee, ETypeEmployees, QQueryOperations>
      eTypeEmployeesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eTypeEmployees');
    });
  }

  QueryBuilder<Employee, double, QQueryOperations> efficiencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'efficiency');
    });
  }

  QueryBuilder<Employee, DateTime?, QQueryOperations> firedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fired');
    });
  }

  QueryBuilder<Employee, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<Employee, int, QQueryOperations> ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rating');
    });
  }

  QueryBuilder<Employee, int, QQueryOperations> satisfactionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'satisfaction');
    });
  }
}
