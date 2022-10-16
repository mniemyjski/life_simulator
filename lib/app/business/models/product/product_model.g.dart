// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetProductCollection on Isar {
  IsarCollection<Product> get products => this.collection();
}

const ProductSchema = CollectionSchema(
  name: r'Products',
  id: 5417479505970812963,
  properties: {
    r'businessId': PropertySchema(
      id: 0,
      name: r'businessId',
      type: IsarType.long,
    ),
    r'commissionPerUnit': PropertySchema(
      id: 1,
      name: r'commissionPerUnit',
      type: IsarType.double,
    ),
    r'costPerUnit': PropertySchema(
      id: 2,
      name: r'costPerUnit',
      type: IsarType.double,
    ),
    r'dailyDemand': PropertySchema(
      id: 3,
      name: r'dailyDemand',
      type: IsarType.double,
    ),
    r'eTypeProduct': PropertySchema(
      id: 4,
      name: r'eTypeProduct',
      type: IsarType.byte,
      enumMap: _ProducteTypeProductEnumValueMap,
    ),
    r'eTypeQuality': PropertySchema(
      id: 5,
      name: r'eTypeQuality',
      type: IsarType.byte,
      enumMap: _ProducteTypeQualityEnumValueMap,
    ),
    r'hashCode': PropertySchema(
      id: 6,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'multiplierDemand': PropertySchema(
      id: 7,
      name: r'multiplierDemand',
      type: IsarType.double,
    ),
    r'name': PropertySchema(
      id: 8,
      name: r'name',
      type: IsarType.string,
    ),
    r'rating': PropertySchema(
      id: 9,
      name: r'rating',
      type: IsarType.long,
    ),
    r'workPerUnit': PropertySchema(
      id: 10,
      name: r'workPerUnit',
      type: IsarType.double,
    )
  },
  estimateSize: _productEstimateSize,
  serialize: _productSerialize,
  deserialize: _productDeserialize,
  deserializeProp: _productDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _productGetId,
  getLinks: _productGetLinks,
  attach: _productAttach,
  version: '3.0.2',
);

int _productEstimateSize(
  Product object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _productSerialize(
  Product object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.businessId);
  writer.writeDouble(offsets[1], object.commissionPerUnit);
  writer.writeDouble(offsets[2], object.costPerUnit);
  writer.writeDouble(offsets[3], object.dailyDemand);
  writer.writeByte(offsets[4], object.eTypeProduct.index);
  writer.writeByte(offsets[5], object.eTypeQuality.index);
  writer.writeLong(offsets[6], object.hashCode);
  writer.writeDouble(offsets[7], object.multiplierDemand);
  writer.writeString(offsets[8], object.name);
  writer.writeLong(offsets[9], object.rating);
  writer.writeDouble(offsets[10], object.workPerUnit);
}

Product _productDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Product(
    businessId: reader.readLong(offsets[0]),
    commissionPerUnit: reader.readDouble(offsets[1]),
    costPerUnit: reader.readDouble(offsets[2]),
    dailyDemand: reader.readDouble(offsets[3]),
    eTypeProduct:
        _ProducteTypeProductValueEnumMap[reader.readByteOrNull(offsets[4])] ??
            ETypeProduct.food,
    eTypeQuality:
        _ProducteTypeQualityValueEnumMap[reader.readByteOrNull(offsets[5])] ??
            ETypeQuality.low,
    id: id,
    multiplierDemand: reader.readDouble(offsets[7]),
    name: reader.readString(offsets[8]),
    rating: reader.readLong(offsets[9]),
    workPerUnit: reader.readDouble(offsets[10]),
  );
  return object;
}

P _productDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (_ProducteTypeProductValueEnumMap[reader.readByteOrNull(offset)] ??
          ETypeProduct.food) as P;
    case 5:
      return (_ProducteTypeQualityValueEnumMap[reader.readByteOrNull(offset)] ??
          ETypeQuality.low) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ProducteTypeProductEnumValueMap = {
  'food': 0,
  'cloth': 1,
  'furniture': 2,
  'jewelery': 3,
};
const _ProducteTypeProductValueEnumMap = {
  0: ETypeProduct.food,
  1: ETypeProduct.cloth,
  2: ETypeProduct.furniture,
  3: ETypeProduct.jewelery,
};
const _ProducteTypeQualityEnumValueMap = {
  'low': 0,
  'mid': 1,
  'high': 2,
};
const _ProducteTypeQualityValueEnumMap = {
  0: ETypeQuality.low,
  1: ETypeQuality.mid,
  2: ETypeQuality.high,
};

Id _productGetId(Product object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _productGetLinks(Product object) {
  return [];
}

void _productAttach(IsarCollection<dynamic> col, Id id, Product object) {}

extension ProductQueryWhereSort on QueryBuilder<Product, Product, QWhere> {
  QueryBuilder<Product, Product, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProductQueryWhere on QueryBuilder<Product, Product, QWhereClause> {
  QueryBuilder<Product, Product, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Product, Product, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Product, Product, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Product, Product, QAfterWhereClause> idBetween(
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

extension ProductQueryFilter
    on QueryBuilder<Product, Product, QFilterCondition> {
  QueryBuilder<Product, Product, QAfterFilterCondition> businessIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'businessId',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> businessIdGreaterThan(
    int value, {
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

  QueryBuilder<Product, Product, QAfterFilterCondition> businessIdLessThan(
    int value, {
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

  QueryBuilder<Product, Product, QAfterFilterCondition> businessIdBetween(
    int lower,
    int upper, {
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

  QueryBuilder<Product, Product, QAfterFilterCondition>
      commissionPerUnitEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commissionPerUnit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition>
      commissionPerUnitGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'commissionPerUnit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition>
      commissionPerUnitLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'commissionPerUnit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition>
      commissionPerUnitBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'commissionPerUnit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> costPerUnitEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'costPerUnit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> costPerUnitGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'costPerUnit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> costPerUnitLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'costPerUnit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> costPerUnitBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'costPerUnit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> dailyDemandEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dailyDemand',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> dailyDemandGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dailyDemand',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> dailyDemandLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dailyDemand',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> dailyDemandBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dailyDemand',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> eTypeProductEqualTo(
      ETypeProduct value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eTypeProduct',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> eTypeProductGreaterThan(
    ETypeProduct value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eTypeProduct',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> eTypeProductLessThan(
    ETypeProduct value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eTypeProduct',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> eTypeProductBetween(
    ETypeProduct lower,
    ETypeProduct upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eTypeProduct',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> eTypeQualityEqualTo(
      ETypeQuality value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eTypeQuality',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> eTypeQualityGreaterThan(
    ETypeQuality value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eTypeQuality',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> eTypeQualityLessThan(
    ETypeQuality value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eTypeQuality',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> eTypeQualityBetween(
    ETypeQuality lower,
    ETypeQuality upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eTypeQuality',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> multiplierDemandEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'multiplierDemand',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition>
      multiplierDemandGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'multiplierDemand',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition>
      multiplierDemandLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'multiplierDemand',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> multiplierDemandBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'multiplierDemand',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> nameContains(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> ratingEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rating',
        value: value,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> ratingGreaterThan(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> ratingLessThan(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> ratingBetween(
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

  QueryBuilder<Product, Product, QAfterFilterCondition> workPerUnitEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workPerUnit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> workPerUnitGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'workPerUnit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> workPerUnitLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'workPerUnit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Product, Product, QAfterFilterCondition> workPerUnitBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'workPerUnit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension ProductQueryObject
    on QueryBuilder<Product, Product, QFilterCondition> {}

extension ProductQueryLinks
    on QueryBuilder<Product, Product, QFilterCondition> {}

extension ProductQuerySortBy on QueryBuilder<Product, Product, QSortBy> {
  QueryBuilder<Product, Product, QAfterSortBy> sortByBusinessId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessId', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByBusinessIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessId', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByCommissionPerUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commissionPerUnit', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByCommissionPerUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commissionPerUnit', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByCostPerUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costPerUnit', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByCostPerUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costPerUnit', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByDailyDemand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyDemand', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByDailyDemandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyDemand', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByETypeProduct() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeProduct', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByETypeProductDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeProduct', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByETypeQuality() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeQuality', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByETypeQualityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeQuality', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByMultiplierDemand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'multiplierDemand', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByMultiplierDemandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'multiplierDemand', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByWorkPerUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workPerUnit', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> sortByWorkPerUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workPerUnit', Sort.desc);
    });
  }
}

extension ProductQuerySortThenBy
    on QueryBuilder<Product, Product, QSortThenBy> {
  QueryBuilder<Product, Product, QAfterSortBy> thenByBusinessId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessId', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByBusinessIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessId', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByCommissionPerUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commissionPerUnit', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByCommissionPerUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commissionPerUnit', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByCostPerUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costPerUnit', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByCostPerUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'costPerUnit', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByDailyDemand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyDemand', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByDailyDemandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dailyDemand', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByETypeProduct() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeProduct', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByETypeProductDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeProduct', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByETypeQuality() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeQuality', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByETypeQualityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeQuality', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByMultiplierDemand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'multiplierDemand', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByMultiplierDemandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'multiplierDemand', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByWorkPerUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workPerUnit', Sort.asc);
    });
  }

  QueryBuilder<Product, Product, QAfterSortBy> thenByWorkPerUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workPerUnit', Sort.desc);
    });
  }
}

extension ProductQueryWhereDistinct
    on QueryBuilder<Product, Product, QDistinct> {
  QueryBuilder<Product, Product, QDistinct> distinctByBusinessId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'businessId');
    });
  }

  QueryBuilder<Product, Product, QDistinct> distinctByCommissionPerUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'commissionPerUnit');
    });
  }

  QueryBuilder<Product, Product, QDistinct> distinctByCostPerUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'costPerUnit');
    });
  }

  QueryBuilder<Product, Product, QDistinct> distinctByDailyDemand() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dailyDemand');
    });
  }

  QueryBuilder<Product, Product, QDistinct> distinctByETypeProduct() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eTypeProduct');
    });
  }

  QueryBuilder<Product, Product, QDistinct> distinctByETypeQuality() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eTypeQuality');
    });
  }

  QueryBuilder<Product, Product, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<Product, Product, QDistinct> distinctByMultiplierDemand() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'multiplierDemand');
    });
  }

  QueryBuilder<Product, Product, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Product, Product, QDistinct> distinctByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rating');
    });
  }

  QueryBuilder<Product, Product, QDistinct> distinctByWorkPerUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'workPerUnit');
    });
  }
}

extension ProductQueryProperty
    on QueryBuilder<Product, Product, QQueryProperty> {
  QueryBuilder<Product, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Product, int, QQueryOperations> businessIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'businessId');
    });
  }

  QueryBuilder<Product, double, QQueryOperations> commissionPerUnitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'commissionPerUnit');
    });
  }

  QueryBuilder<Product, double, QQueryOperations> costPerUnitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costPerUnit');
    });
  }

  QueryBuilder<Product, double, QQueryOperations> dailyDemandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dailyDemand');
    });
  }

  QueryBuilder<Product, ETypeProduct, QQueryOperations> eTypeProductProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eTypeProduct');
    });
  }

  QueryBuilder<Product, ETypeQuality, QQueryOperations> eTypeQualityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eTypeQuality');
    });
  }

  QueryBuilder<Product, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<Product, double, QQueryOperations> multiplierDemandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'multiplierDemand');
    });
  }

  QueryBuilder<Product, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Product, int, QQueryOperations> ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rating');
    });
  }

  QueryBuilder<Product, double, QQueryOperations> workPerUnitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workPerUnit');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int? ?? Isar.autoIncrement,
      costPerUnit: (json['costPerUnit'] as num).toDouble(),
      commissionPerUnit: (json['commissionPerUnit'] as num).toDouble(),
      name: json['name'] as String,
      businessId: json['businessId'] as int,
      workPerUnit: (json['workPerUnit'] as num).toDouble(),
      eTypeProduct: $enumDecode(_$ETypeProductEnumMap, json['eTypeProduct']),
      eTypeQuality: $enumDecode(_$ETypeQualityEnumMap, json['eTypeQuality']),
      rating: json['rating'] as int,
      dailyDemand: (json['dailyDemand'] as num).toDouble(),
      multiplierDemand: (json['multiplierDemand'] as num).toDouble(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'businessId': instance.businessId,
      'name': instance.name,
      'rating': instance.rating,
      'dailyDemand': instance.dailyDemand,
      'multiplierDemand': instance.multiplierDemand,
      'costPerUnit': instance.costPerUnit,
      'commissionPerUnit': instance.commissionPerUnit,
      'workPerUnit': instance.workPerUnit,
      'eTypeProduct': _$ETypeProductEnumMap[instance.eTypeProduct]!,
      'eTypeQuality': _$ETypeQualityEnumMap[instance.eTypeQuality]!,
    };

const _$ETypeProductEnumMap = {
  ETypeProduct.food: 'food',
  ETypeProduct.cloth: 'cloth',
  ETypeProduct.furniture: 'furniture',
  ETypeProduct.jewelery: 'jewelery',
};

const _$ETypeQualityEnumMap = {
  ETypeQuality.low: 'low',
  ETypeQuality.mid: 'mid',
  ETypeQuality.high: 'high',
};
