// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'research_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ResearchCWProxy {
  Research businessId(int businessId);

  Research cost(double cost);

  Research dateEnd(DateTime dateEnd);

  Research eTypeProduct(ETypeProduct eTypeProduct);

  Research id(int id);

  Research name(String name);

  Research work(double work);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Research(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Research(...).copyWith(id: 12, name: "My name")
  /// ````
  Research call({
    int? businessId,
    double? cost,
    DateTime? dateEnd,
    ETypeProduct? eTypeProduct,
    int? id,
    String? name,
    double? work,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfResearch.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfResearch.copyWith.fieldName(...)`
class _$ResearchCWProxyImpl implements _$ResearchCWProxy {
  final Research _value;

  const _$ResearchCWProxyImpl(this._value);

  @override
  Research businessId(int businessId) => this(businessId: businessId);

  @override
  Research cost(double cost) => this(cost: cost);

  @override
  Research dateEnd(DateTime dateEnd) => this(dateEnd: dateEnd);

  @override
  Research eTypeProduct(ETypeProduct eTypeProduct) =>
      this(eTypeProduct: eTypeProduct);

  @override
  Research id(int id) => this(id: id);

  @override
  Research name(String name) => this(name: name);

  @override
  Research work(double work) => this(work: work);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Research(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Research(...).copyWith(id: 12, name: "My name")
  /// ````
  Research call({
    Object? businessId = const $CopyWithPlaceholder(),
    Object? cost = const $CopyWithPlaceholder(),
    Object? dateEnd = const $CopyWithPlaceholder(),
    Object? eTypeProduct = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? work = const $CopyWithPlaceholder(),
  }) {
    return Research(
      businessId:
          businessId == const $CopyWithPlaceholder() || businessId == null
              ? _value.businessId
              // ignore: cast_nullable_to_non_nullable
              : businessId as int,
      cost: cost == const $CopyWithPlaceholder() || cost == null
          ? _value.cost
          // ignore: cast_nullable_to_non_nullable
          : cost as double,
      dateEnd: dateEnd == const $CopyWithPlaceholder() || dateEnd == null
          ? _value.dateEnd
          // ignore: cast_nullable_to_non_nullable
          : dateEnd as DateTime,
      eTypeProduct:
          eTypeProduct == const $CopyWithPlaceholder() || eTypeProduct == null
              ? _value.eTypeProduct
              // ignore: cast_nullable_to_non_nullable
              : eTypeProduct as ETypeProduct,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      work: work == const $CopyWithPlaceholder() || work == null
          ? _value.work
          // ignore: cast_nullable_to_non_nullable
          : work as double,
    );
  }
}

extension $ResearchCopyWith on Research {
  /// Returns a callable class that can be used as follows: `instanceOfResearch.copyWith(...)` or like so:`instanceOfResearch.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ResearchCWProxy get copyWith => _$ResearchCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetResearchCollection on Isar {
  IsarCollection<Research> get researchs => this.collection();
}

const ResearchSchema = CollectionSchema(
  name: r'Researches',
  id: 3408213791897193411,
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
    r'dateEnd': PropertySchema(
      id: 2,
      name: r'dateEnd',
      type: IsarType.dateTime,
    ),
    r'eTypeProduct': PropertySchema(
      id: 3,
      name: r'eTypeProduct',
      type: IsarType.byte,
      enumMap: _ResearcheTypeProductEnumValueMap,
    ),
    r'hashCode': PropertySchema(
      id: 4,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 5,
      name: r'name',
      type: IsarType.string,
    ),
    r'work': PropertySchema(
      id: 6,
      name: r'work',
      type: IsarType.double,
    )
  },
  estimateSize: _researchEstimateSize,
  serialize: _researchSerialize,
  deserialize: _researchDeserialize,
  deserializeProp: _researchDeserializeProp,
  idName: r'id',
  indexes: {
    r'businessId': IndexSchema(
      id: 2228048290814354584,
      name: r'businessId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'businessId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'dateEnd': IndexSchema(
      id: -3391714117586228713,
      name: r'dateEnd',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'dateEnd',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _researchGetId,
  getLinks: _researchGetLinks,
  attach: _researchAttach,
  version: '3.0.5',
);

int _researchEstimateSize(
  Research object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _researchSerialize(
  Research object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.businessId);
  writer.writeDouble(offsets[1], object.cost);
  writer.writeDateTime(offsets[2], object.dateEnd);
  writer.writeByte(offsets[3], object.eTypeProduct.index);
  writer.writeLong(offsets[4], object.hashCode);
  writer.writeString(offsets[5], object.name);
  writer.writeDouble(offsets[6], object.work);
}

Research _researchDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Research(
    businessId: reader.readLong(offsets[0]),
    cost: reader.readDouble(offsets[1]),
    dateEnd: reader.readDateTime(offsets[2]),
    eTypeProduct:
        _ResearcheTypeProductValueEnumMap[reader.readByteOrNull(offsets[3])] ??
            ETypeProduct.food,
    id: id,
    name: reader.readString(offsets[5]),
    work: reader.readDoubleOrNull(offsets[6]) ?? 0,
  );
  return object;
}

P _researchDeserializeProp<P>(
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
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (_ResearcheTypeProductValueEnumMap[
              reader.readByteOrNull(offset)] ??
          ETypeProduct.food) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset) ?? 0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ResearcheTypeProductEnumValueMap = {
  'food': 0,
  'cloth': 1,
  'furniture': 2,
  'jewelery': 3,
};
const _ResearcheTypeProductValueEnumMap = {
  0: ETypeProduct.food,
  1: ETypeProduct.cloth,
  2: ETypeProduct.furniture,
  3: ETypeProduct.jewelery,
};

Id _researchGetId(Research object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _researchGetLinks(Research object) {
  return [];
}

void _researchAttach(IsarCollection<dynamic> col, Id id, Research object) {}

extension ResearchQueryWhereSort on QueryBuilder<Research, Research, QWhere> {
  QueryBuilder<Research, Research, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Research, Research, QAfterWhere> anyBusinessId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'businessId'),
      );
    });
  }

  QueryBuilder<Research, Research, QAfterWhere> anyDateEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'dateEnd'),
      );
    });
  }
}

extension ResearchQueryWhere on QueryBuilder<Research, Research, QWhereClause> {
  QueryBuilder<Research, Research, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Research, Research, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Research, Research, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Research, Research, QAfterWhereClause> idBetween(
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

  QueryBuilder<Research, Research, QAfterWhereClause> businessIdEqualTo(
      int businessId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'businessId',
        value: [businessId],
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterWhereClause> businessIdNotEqualTo(
      int businessId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'businessId',
              lower: [],
              upper: [businessId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'businessId',
              lower: [businessId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'businessId',
              lower: [businessId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'businessId',
              lower: [],
              upper: [businessId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Research, Research, QAfterWhereClause> businessIdGreaterThan(
    int businessId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'businessId',
        lower: [businessId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterWhereClause> businessIdLessThan(
    int businessId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'businessId',
        lower: [],
        upper: [businessId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterWhereClause> businessIdBetween(
    int lowerBusinessId,
    int upperBusinessId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'businessId',
        lower: [lowerBusinessId],
        includeLower: includeLower,
        upper: [upperBusinessId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterWhereClause> dateEndEqualTo(
      DateTime dateEnd) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'dateEnd',
        value: [dateEnd],
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterWhereClause> dateEndNotEqualTo(
      DateTime dateEnd) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateEnd',
              lower: [],
              upper: [dateEnd],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateEnd',
              lower: [dateEnd],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateEnd',
              lower: [dateEnd],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dateEnd',
              lower: [],
              upper: [dateEnd],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Research, Research, QAfterWhereClause> dateEndGreaterThan(
    DateTime dateEnd, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dateEnd',
        lower: [dateEnd],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterWhereClause> dateEndLessThan(
    DateTime dateEnd, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dateEnd',
        lower: [],
        upper: [dateEnd],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterWhereClause> dateEndBetween(
    DateTime lowerDateEnd,
    DateTime upperDateEnd, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dateEnd',
        lower: [lowerDateEnd],
        includeLower: includeLower,
        upper: [upperDateEnd],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ResearchQueryFilter
    on QueryBuilder<Research, Research, QFilterCondition> {
  QueryBuilder<Research, Research, QAfterFilterCondition> businessIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'businessId',
        value: value,
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterFilterCondition> businessIdGreaterThan(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> businessIdLessThan(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> businessIdBetween(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> costEqualTo(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> costGreaterThan(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> costLessThan(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> costBetween(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> dateEndEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateEnd',
        value: value,
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterFilterCondition> dateEndGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateEnd',
        value: value,
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterFilterCondition> dateEndLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateEnd',
        value: value,
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterFilterCondition> dateEndBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateEnd',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterFilterCondition> eTypeProductEqualTo(
      ETypeProduct value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eTypeProduct',
        value: value,
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterFilterCondition>
      eTypeProductGreaterThan(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> eTypeProductLessThan(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> eTypeProductBetween(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> nameContains(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<Research, Research, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterFilterCondition> workEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'work',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterFilterCondition> workGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'work',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterFilterCondition> workLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'work',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Research, Research, QAfterFilterCondition> workBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'work',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension ResearchQueryObject
    on QueryBuilder<Research, Research, QFilterCondition> {}

extension ResearchQueryLinks
    on QueryBuilder<Research, Research, QFilterCondition> {}

extension ResearchQuerySortBy on QueryBuilder<Research, Research, QSortBy> {
  QueryBuilder<Research, Research, QAfterSortBy> sortByBusinessId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessId', Sort.asc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> sortByBusinessIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessId', Sort.desc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> sortByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> sortByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> sortByDateEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateEnd', Sort.asc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> sortByDateEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateEnd', Sort.desc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> sortByETypeProduct() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeProduct', Sort.asc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> sortByETypeProductDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeProduct', Sort.desc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> sortByWork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'work', Sort.asc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> sortByWorkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'work', Sort.desc);
    });
  }
}

extension ResearchQuerySortThenBy
    on QueryBuilder<Research, Research, QSortThenBy> {
  QueryBuilder<Research, Research, QAfterSortBy> thenByBusinessId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessId', Sort.asc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> thenByBusinessIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'businessId', Sort.desc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> thenByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> thenByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> thenByDateEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateEnd', Sort.asc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> thenByDateEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateEnd', Sort.desc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> thenByETypeProduct() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeProduct', Sort.asc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> thenByETypeProductDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eTypeProduct', Sort.desc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> thenByWork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'work', Sort.asc);
    });
  }

  QueryBuilder<Research, Research, QAfterSortBy> thenByWorkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'work', Sort.desc);
    });
  }
}

extension ResearchQueryWhereDistinct
    on QueryBuilder<Research, Research, QDistinct> {
  QueryBuilder<Research, Research, QDistinct> distinctByBusinessId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'businessId');
    });
  }

  QueryBuilder<Research, Research, QDistinct> distinctByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cost');
    });
  }

  QueryBuilder<Research, Research, QDistinct> distinctByDateEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateEnd');
    });
  }

  QueryBuilder<Research, Research, QDistinct> distinctByETypeProduct() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eTypeProduct');
    });
  }

  QueryBuilder<Research, Research, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<Research, Research, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Research, Research, QDistinct> distinctByWork() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'work');
    });
  }
}

extension ResearchQueryProperty
    on QueryBuilder<Research, Research, QQueryProperty> {
  QueryBuilder<Research, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Research, int, QQueryOperations> businessIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'businessId');
    });
  }

  QueryBuilder<Research, double, QQueryOperations> costProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cost');
    });
  }

  QueryBuilder<Research, DateTime, QQueryOperations> dateEndProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateEnd');
    });
  }

  QueryBuilder<Research, ETypeProduct, QQueryOperations>
      eTypeProductProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eTypeProduct');
    });
  }

  QueryBuilder<Research, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<Research, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Research, double, QQueryOperations> workProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'work');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Research _$ResearchFromJson(Map<String, dynamic> json) => Research(
      id: json['id'] as int? ?? Isar.autoIncrement,
      businessId: json['businessId'] as int,
      dateEnd: DateTime.parse(json['dateEnd'] as String),
      name: json['name'] as String,
      work: (json['work'] as num?)?.toDouble() ?? 0,
      cost: (json['cost'] as num).toDouble(),
      eTypeProduct: $enumDecode(_$ETypeProductEnumMap, json['eTypeProduct']),
    );

Map<String, dynamic> _$ResearchToJson(Research instance) => <String, dynamic>{
      'id': instance.id,
      'businessId': instance.businessId,
      'dateEnd': instance.dateEnd.toIso8601String(),
      'name': instance.name,
      'work': instance.work,
      'cost': instance.cost,
      'eTypeProduct': _$ETypeProductEnumMap[instance.eTypeProduct]!,
    };

const _$ETypeProductEnumMap = {
  ETypeProduct.food: 'food',
  ETypeProduct.cloth: 'cloth',
  ETypeProduct.furniture: 'furniture',
  ETypeProduct.jewelery: 'jewelery',
};
