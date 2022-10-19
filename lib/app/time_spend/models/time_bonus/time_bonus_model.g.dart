// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_bonus_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TimeBonusCWProxy {
  TimeBonus eTypeBonus(ETypeBonus? eTypeBonus);

  TimeBonus eTypeBonusSource(ETypeBonusSource? eTypeBonusSource);

  TimeBonus value(int? value);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TimeBonus(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TimeBonus(...).copyWith(id: 12, name: "My name")
  /// ````
  TimeBonus call({
    ETypeBonus? eTypeBonus,
    ETypeBonusSource? eTypeBonusSource,
    int? value,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTimeBonus.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTimeBonus.copyWith.fieldName(...)`
class _$TimeBonusCWProxyImpl implements _$TimeBonusCWProxy {
  final TimeBonus _value;

  const _$TimeBonusCWProxyImpl(this._value);

  @override
  TimeBonus eTypeBonus(ETypeBonus? eTypeBonus) => this(eTypeBonus: eTypeBonus);

  @override
  TimeBonus eTypeBonusSource(ETypeBonusSource? eTypeBonusSource) =>
      this(eTypeBonusSource: eTypeBonusSource);

  @override
  TimeBonus value(int? value) => this(value: value);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TimeBonus(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TimeBonus(...).copyWith(id: 12, name: "My name")
  /// ````
  TimeBonus call({
    Object? eTypeBonus = const $CopyWithPlaceholder(),
    Object? eTypeBonusSource = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return TimeBonus(
      eTypeBonus: eTypeBonus == const $CopyWithPlaceholder()
          ? _value.eTypeBonus
          // ignore: cast_nullable_to_non_nullable
          : eTypeBonus as ETypeBonus?,
      eTypeBonusSource: eTypeBonusSource == const $CopyWithPlaceholder()
          ? _value.eTypeBonusSource
          // ignore: cast_nullable_to_non_nullable
          : eTypeBonusSource as ETypeBonusSource?,
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as int?,
    );
  }
}

extension $TimeBonusCopyWith on TimeBonus {
  /// Returns a callable class that can be used as follows: `instanceOfTimeBonus.copyWith(...)` or like so:`instanceOfTimeBonus.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TimeBonusCWProxy get copyWith => _$TimeBonusCWProxyImpl(this);
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const TimeBonusSchema = Schema(
  name: r'TimeBonus',
  id: -4474125702322528311,
  properties: {
    r'eTypeBonus': PropertySchema(
      id: 0,
      name: r'eTypeBonus',
      type: IsarType.int,
      enumMap: _TimeBonuseTypeBonusEnumValueMap,
    ),
    r'eTypeBonusSource': PropertySchema(
      id: 1,
      name: r'eTypeBonusSource',
      type: IsarType.int,
      enumMap: _TimeBonuseTypeBonusSourceEnumValueMap,
    ),
    r'hashCode': PropertySchema(
      id: 2,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'value': PropertySchema(
      id: 3,
      name: r'value',
      type: IsarType.long,
    )
  },
  estimateSize: _timeBonusEstimateSize,
  serialize: _timeBonusSerialize,
  deserialize: _timeBonusDeserialize,
  deserializeProp: _timeBonusDeserializeProp,
);

int _timeBonusEstimateSize(
  TimeBonus object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _timeBonusSerialize(
  TimeBonus object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeInt(offsets[0], object.eTypeBonus?.index);
  writer.writeInt(offsets[1], object.eTypeBonusSource?.index);
  writer.writeLong(offsets[2], object.hashCode);
  writer.writeLong(offsets[3], object.value);
}

TimeBonus _timeBonusDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TimeBonus(
    eTypeBonus:
        _TimeBonuseTypeBonusValueEnumMap[reader.readIntOrNull(offsets[0])],
    eTypeBonusSource: _TimeBonuseTypeBonusSourceValueEnumMap[
        reader.readIntOrNull(offsets[1])],
    value: reader.readLongOrNull(offsets[3]),
  );
  return object;
}

P _timeBonusDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_TimeBonuseTypeBonusValueEnumMap[reader.readIntOrNull(offset)])
          as P;
    case 1:
      return (_TimeBonuseTypeBonusSourceValueEnumMap[
          reader.readIntOrNull(offset)]) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _TimeBonuseTypeBonusEnumValueMap = {
  'commuting': 0,
  'relax': 1,
  'sleep': 2,
  'learn': 3,
};
const _TimeBonuseTypeBonusValueEnumMap = {
  0: ETypeBonus.commuting,
  1: ETypeBonus.relax,
  2: ETypeBonus.sleep,
  3: ETypeBonus.learn,
};
const _TimeBonuseTypeBonusSourceEnumValueMap = {
  'transport': 0,
  'meal': 1,
  'house': 2,
  'job': 3,
};
const _TimeBonuseTypeBonusSourceValueEnumMap = {
  0: ETypeBonusSource.transport,
  1: ETypeBonusSource.meal,
  2: ETypeBonusSource.house,
  3: ETypeBonusSource.job,
};

extension TimeBonusQueryFilter
    on QueryBuilder<TimeBonus, TimeBonus, QFilterCondition> {
  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition> eTypeBonusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'eTypeBonus',
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition>
      eTypeBonusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'eTypeBonus',
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition> eTypeBonusEqualTo(
      ETypeBonus? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eTypeBonus',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition>
      eTypeBonusGreaterThan(
    ETypeBonus? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eTypeBonus',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition> eTypeBonusLessThan(
    ETypeBonus? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eTypeBonus',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition> eTypeBonusBetween(
    ETypeBonus? lower,
    ETypeBonus? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eTypeBonus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition>
      eTypeBonusSourceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'eTypeBonusSource',
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition>
      eTypeBonusSourceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'eTypeBonusSource',
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition>
      eTypeBonusSourceEqualTo(ETypeBonusSource? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eTypeBonusSource',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition>
      eTypeBonusSourceGreaterThan(
    ETypeBonusSource? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eTypeBonusSource',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition>
      eTypeBonusSourceLessThan(
    ETypeBonusSource? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eTypeBonusSource',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition>
      eTypeBonusSourceBetween(
    ETypeBonusSource? lower,
    ETypeBonusSource? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eTypeBonusSource',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition> valueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition> valueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition> valueEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition> valueGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition> valueLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeBonus, TimeBonus, QAfterFilterCondition> valueBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TimeBonusQueryObject
    on QueryBuilder<TimeBonus, TimeBonus, QFilterCondition> {}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeBonus _$TimeBonusFromJson(Map<String, dynamic> json) => TimeBonus(
      eTypeBonus: $enumDecodeNullable(_$ETypeBonusEnumMap, json['eTypeBonus']),
      eTypeBonusSource: $enumDecodeNullable(
          _$ETypeBonusSourceEnumMap, json['eTypeBonusSource']),
      value: json['value'] as int?,
    );

Map<String, dynamic> _$TimeBonusToJson(TimeBonus instance) => <String, dynamic>{
      'eTypeBonus': _$ETypeBonusEnumMap[instance.eTypeBonus],
      'eTypeBonusSource': _$ETypeBonusSourceEnumMap[instance.eTypeBonusSource],
      'value': instance.value,
    };

const _$ETypeBonusEnumMap = {
  ETypeBonus.commuting: 'commuting',
  ETypeBonus.relax: 'relax',
  ETypeBonus.sleep: 'sleep',
  ETypeBonus.learn: 'learn',
};

const _$ETypeBonusSourceEnumMap = {
  ETypeBonusSource.transport: 'transport',
  ETypeBonusSource.meal: 'meal',
  ETypeBonusSource.house: 'house',
  ETypeBonusSource.job: 'job',
};
