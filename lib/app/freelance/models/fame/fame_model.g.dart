// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fame_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FameCWProxy {
  Fame fame(double fame);

  Fame id(int id);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Fame(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Fame(...).copyWith(id: 12, name: "My name")
  /// ````
  Fame call({
    double? fame,
    int? id,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFame.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFame.copyWith.fieldName(...)`
class _$FameCWProxyImpl implements _$FameCWProxy {
  final Fame _value;

  const _$FameCWProxyImpl(this._value);

  @override
  Fame fame(double fame) => this(fame: fame);

  @override
  Fame id(int id) => this(id: id);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Fame(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Fame(...).copyWith(id: 12, name: "My name")
  /// ````
  Fame call({
    Object? fame = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
  }) {
    return Fame(
      fame: fame == const $CopyWithPlaceholder() || fame == null
          ? _value.fame
          // ignore: cast_nullable_to_non_nullable
          : fame as double,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
    );
  }
}

extension $FameCopyWith on Fame {
  /// Returns a callable class that can be used as follows: `instanceOfFame.copyWith(...)` or like so:`instanceOfFame.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FameCWProxy get copyWith => _$FameCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetFameCollection on Isar {
  IsarCollection<Fame> get fames => this.collection();
}

const FameSchema = CollectionSchema(
  name: r'Fame',
  id: 5996982238124981738,
  properties: {
    r'fame': PropertySchema(
      id: 0,
      name: r'fame',
      type: IsarType.double,
    ),
    r'hashCode': PropertySchema(
      id: 1,
      name: r'hashCode',
      type: IsarType.long,
    )
  },
  estimateSize: _fameEstimateSize,
  serialize: _fameSerialize,
  deserialize: _fameDeserialize,
  deserializeProp: _fameDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _fameGetId,
  getLinks: _fameGetLinks,
  attach: _fameAttach,
  version: '3.0.5',
);

int _fameEstimateSize(
  Fame object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _fameSerialize(
  Fame object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.fame);
  writer.writeLong(offsets[1], object.hashCode);
}

Fame _fameDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Fame(
    fame: reader.readDouble(offsets[0]),
    id: id,
  );
  return object;
}

P _fameDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _fameGetId(Fame object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _fameGetLinks(Fame object) {
  return [];
}

void _fameAttach(IsarCollection<dynamic> col, Id id, Fame object) {}

extension FameQueryWhereSort on QueryBuilder<Fame, Fame, QWhere> {
  QueryBuilder<Fame, Fame, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FameQueryWhere on QueryBuilder<Fame, Fame, QWhereClause> {
  QueryBuilder<Fame, Fame, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Fame, Fame, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Fame, Fame, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Fame, Fame, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Fame, Fame, QAfterWhereClause> idBetween(
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

extension FameQueryFilter on QueryBuilder<Fame, Fame, QFilterCondition> {
  QueryBuilder<Fame, Fame, QAfterFilterCondition> fameEqualTo(
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

  QueryBuilder<Fame, Fame, QAfterFilterCondition> fameGreaterThan(
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

  QueryBuilder<Fame, Fame, QAfterFilterCondition> fameLessThan(
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

  QueryBuilder<Fame, Fame, QAfterFilterCondition> fameBetween(
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

  QueryBuilder<Fame, Fame, QAfterFilterCondition> hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<Fame, Fame, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<Fame, Fame, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<Fame, Fame, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<Fame, Fame, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Fame, Fame, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Fame, Fame, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Fame, Fame, QAfterFilterCondition> idBetween(
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
}

extension FameQueryObject on QueryBuilder<Fame, Fame, QFilterCondition> {}

extension FameQueryLinks on QueryBuilder<Fame, Fame, QFilterCondition> {}

extension FameQuerySortBy on QueryBuilder<Fame, Fame, QSortBy> {
  QueryBuilder<Fame, Fame, QAfterSortBy> sortByFame() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fame', Sort.asc);
    });
  }

  QueryBuilder<Fame, Fame, QAfterSortBy> sortByFameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fame', Sort.desc);
    });
  }

  QueryBuilder<Fame, Fame, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Fame, Fame, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }
}

extension FameQuerySortThenBy on QueryBuilder<Fame, Fame, QSortThenBy> {
  QueryBuilder<Fame, Fame, QAfterSortBy> thenByFame() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fame', Sort.asc);
    });
  }

  QueryBuilder<Fame, Fame, QAfterSortBy> thenByFameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fame', Sort.desc);
    });
  }

  QueryBuilder<Fame, Fame, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<Fame, Fame, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<Fame, Fame, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Fame, Fame, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension FameQueryWhereDistinct on QueryBuilder<Fame, Fame, QDistinct> {
  QueryBuilder<Fame, Fame, QDistinct> distinctByFame() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fame');
    });
  }

  QueryBuilder<Fame, Fame, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }
}

extension FameQueryProperty on QueryBuilder<Fame, Fame, QQueryProperty> {
  QueryBuilder<Fame, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Fame, double, QQueryOperations> fameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fame');
    });
  }

  QueryBuilder<Fame, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fame _$FameFromJson(Map<String, dynamic> json) => Fame(
      id: json['id'] as int? ?? 1,
      fame: (json['fame'] as num).toDouble(),
    );

Map<String, dynamic> _$FameToJson(Fame instance) => <String, dynamic>{
      'id': instance.id,
      'fame': instance.fame,
    };
