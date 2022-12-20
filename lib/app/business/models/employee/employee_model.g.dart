// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EmployeeCWProxy {
  Employee businessId(int? businessId);

  Employee cost(double cost);

  Employee dateOfEmployment(DateTime? dateOfEmployment);

  Employee eTypeEmployees(ETypeEmployees eTypeEmployees);

  Employee efficiency(double efficiency);

  Employee fired(DateTime? fired);

  Employee id(int id);

  Employee productId(int? productId);

  Employee rating(int rating);

  Employee satisfaction(int satisfaction);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Employee(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Employee(...).copyWith(id: 12, name: "My name")
  /// ````
  Employee call({
    int? businessId,
    double? cost,
    DateTime? dateOfEmployment,
    ETypeEmployees? eTypeEmployees,
    double? efficiency,
    DateTime? fired,
    int? id,
    int? productId,
    int? rating,
    int? satisfaction,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEmployee.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEmployee.copyWith.fieldName(...)`
class _$EmployeeCWProxyImpl implements _$EmployeeCWProxy {
  final Employee _value;

  const _$EmployeeCWProxyImpl(this._value);

  @override
  Employee businessId(int? businessId) => this(businessId: businessId);

  @override
  Employee cost(double cost) => this(cost: cost);

  @override
  Employee dateOfEmployment(DateTime? dateOfEmployment) =>
      this(dateOfEmployment: dateOfEmployment);

  @override
  Employee eTypeEmployees(ETypeEmployees eTypeEmployees) =>
      this(eTypeEmployees: eTypeEmployees);

  @override
  Employee efficiency(double efficiency) => this(efficiency: efficiency);

  @override
  Employee fired(DateTime? fired) => this(fired: fired);

  @override
  Employee id(int id) => this(id: id);

  @override
  Employee productId(int? productId) => this(productId: productId);

  @override
  Employee rating(int rating) => this(rating: rating);

  @override
  Employee satisfaction(int satisfaction) => this(satisfaction: satisfaction);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Employee(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Employee(...).copyWith(id: 12, name: "My name")
  /// ````
  Employee call({
    Object? businessId = const $CopyWithPlaceholder(),
    Object? cost = const $CopyWithPlaceholder(),
    Object? dateOfEmployment = const $CopyWithPlaceholder(),
    Object? eTypeEmployees = const $CopyWithPlaceholder(),
    Object? efficiency = const $CopyWithPlaceholder(),
    Object? fired = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? productId = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
    Object? satisfaction = const $CopyWithPlaceholder(),
  }) {
    return Employee(
      businessId: businessId == const $CopyWithPlaceholder()
          ? _value.businessId
          // ignore: cast_nullable_to_non_nullable
          : businessId as int?,
      cost: cost == const $CopyWithPlaceholder() || cost == null
          ? _value.cost
          // ignore: cast_nullable_to_non_nullable
          : cost as double,
      dateOfEmployment: dateOfEmployment == const $CopyWithPlaceholder()
          ? _value.dateOfEmployment
          // ignore: cast_nullable_to_non_nullable
          : dateOfEmployment as DateTime?,
      eTypeEmployees: eTypeEmployees == const $CopyWithPlaceholder() ||
              eTypeEmployees == null
          ? _value.eTypeEmployees
          // ignore: cast_nullable_to_non_nullable
          : eTypeEmployees as ETypeEmployees,
      efficiency:
          efficiency == const $CopyWithPlaceholder() || efficiency == null
              ? _value.efficiency
              // ignore: cast_nullable_to_non_nullable
              : efficiency as double,
      fired: fired == const $CopyWithPlaceholder()
          ? _value.fired
          // ignore: cast_nullable_to_non_nullable
          : fired as DateTime?,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      productId: productId == const $CopyWithPlaceholder()
          ? _value.productId
          // ignore: cast_nullable_to_non_nullable
          : productId as int?,
      rating: rating == const $CopyWithPlaceholder() || rating == null
          ? _value.rating
          // ignore: cast_nullable_to_non_nullable
          : rating as int,
      satisfaction:
          satisfaction == const $CopyWithPlaceholder() || satisfaction == null
              ? _value.satisfaction
              // ignore: cast_nullable_to_non_nullable
              : satisfaction as int,
    );
  }
}

extension $EmployeeCopyWith on Employee {
  /// Returns a callable class that can be used as follows: `instanceOfEmployee.copyWith(...)` or like so:`instanceOfEmployee.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EmployeeCWProxy get copyWith => _$EmployeeCWProxyImpl(this);
}

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
    r'productId': PropertySchema(
      id: 7,
      name: r'productId',
      type: IsarType.long,
    ),
    r'rating': PropertySchema(
      id: 8,
      name: r'rating',
      type: IsarType.long,
    ),
    r'satisfaction': PropertySchema(
      id: 9,
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
  version: '3.0.5',
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
  writer.writeLong(offsets[7], object.productId);
  writer.writeLong(offsets[8], object.rating);
  writer.writeLong(offsets[9], object.satisfaction);
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
    productId: reader.readLongOrNull(offsets[7]),
    rating: reader.readLong(offsets[8]),
    satisfaction: reader.readLongOrNull(offsets[9]) ?? 1,
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
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
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

  QueryBuilder<Employee, Employee, QAfterFilterCondition> productIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'productId',
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> productIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'productId',
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> productIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productId',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> productIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productId',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> productIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productId',
        value: value,
      ));
    });
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> productIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productId',
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

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
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

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
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

  QueryBuilder<Employee, Employee, QDistinct> distinctByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productId');
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

  QueryBuilder<Employee, int?, QQueryOperations> productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productId');
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Employee _$EmployeeFromJson(Map<String, dynamic> json) => Employee(
      id: json['id'] as int? ?? Isar.autoIncrement,
      productId: json['productId'] as int?,
      businessId: json['businessId'] as int?,
      eTypeEmployees:
          $enumDecode(_$ETypeEmployeesEnumMap, json['eTypeEmployees']),
      cost: (json['cost'] as num).toDouble(),
      efficiency: (json['efficiency'] as num).toDouble(),
      rating: json['rating'] as int,
      satisfaction: json['satisfaction'] as int? ?? 1,
      dateOfEmployment: json['dateOfEmployment'] == null
          ? null
          : DateTime.parse(json['dateOfEmployment'] as String),
      fired: json['fired'] == null
          ? null
          : DateTime.parse(json['fired'] as String),
    );

Map<String, dynamic> _$EmployeeToJson(Employee instance) => <String, dynamic>{
      'id': instance.id,
      'businessId': instance.businessId,
      'productId': instance.productId,
      'eTypeEmployees': _$ETypeEmployeesEnumMap[instance.eTypeEmployees]!,
      'cost': instance.cost,
      'efficiency': instance.efficiency,
      'rating': instance.rating,
      'satisfaction': instance.satisfaction,
      'dateOfEmployment': instance.dateOfEmployment?.toIso8601String(),
      'fired': instance.fired?.toIso8601String(),
    };

const _$ETypeEmployeesEnumMap = {
  ETypeEmployees.worker: 'worker',
  ETypeEmployees.scientist: 'scientist',
  ETypeEmployees.accountant: 'accountant',
  ETypeEmployees.analyst: 'analyst',
  ETypeEmployees.manager: 'manager',
  ETypeEmployees.marketer: 'marketer',
};
