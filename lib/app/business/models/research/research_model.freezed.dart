// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'research_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Research _$ResearchFromJson(Map<String, dynamic> json) {
  return _Research.fromJson(json);
}

/// @nodoc
mixin _$Research {
  String get uid => throw _privateConstructorUsedError;
  int get businessId => throw _privateConstructorUsedError;
  DateTime get dateEnd => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get work => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;
  ETypeProduct get eTypeProduct => throw _privateConstructorUsedError;
  ETypeQuality get eTypeQuality => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResearchCopyWith<Research> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResearchCopyWith<$Res> {
  factory $ResearchCopyWith(Research value, $Res Function(Research) then) =
      _$ResearchCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      int businessId,
      DateTime dateEnd,
      String name,
      double work,
      double cost,
      ETypeProduct eTypeProduct,
      ETypeQuality eTypeQuality});
}

/// @nodoc
class _$ResearchCopyWithImpl<$Res> implements $ResearchCopyWith<$Res> {
  _$ResearchCopyWithImpl(this._value, this._then);

  final Research _value;
  // ignore: unused_field
  final $Res Function(Research) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? businessId = freezed,
    Object? dateEnd = freezed,
    Object? name = freezed,
    Object? work = freezed,
    Object? cost = freezed,
    Object? eTypeProduct = freezed,
    Object? eTypeQuality = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int,
      dateEnd: dateEnd == freezed
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      work: work == freezed
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as double,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      eTypeProduct: eTypeProduct == freezed
          ? _value.eTypeProduct
          : eTypeProduct // ignore: cast_nullable_to_non_nullable
              as ETypeProduct,
      eTypeQuality: eTypeQuality == freezed
          ? _value.eTypeQuality
          : eTypeQuality // ignore: cast_nullable_to_non_nullable
              as ETypeQuality,
    ));
  }
}

/// @nodoc
abstract class _$$_ResearchCopyWith<$Res> implements $ResearchCopyWith<$Res> {
  factory _$$_ResearchCopyWith(
          _$_Research value, $Res Function(_$_Research) then) =
      __$$_ResearchCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      int businessId,
      DateTime dateEnd,
      String name,
      double work,
      double cost,
      ETypeProduct eTypeProduct,
      ETypeQuality eTypeQuality});
}

/// @nodoc
class __$$_ResearchCopyWithImpl<$Res> extends _$ResearchCopyWithImpl<$Res>
    implements _$$_ResearchCopyWith<$Res> {
  __$$_ResearchCopyWithImpl(
      _$_Research _value, $Res Function(_$_Research) _then)
      : super(_value, (v) => _then(v as _$_Research));

  @override
  _$_Research get _value => super._value as _$_Research;

  @override
  $Res call({
    Object? uid = freezed,
    Object? businessId = freezed,
    Object? dateEnd = freezed,
    Object? name = freezed,
    Object? work = freezed,
    Object? cost = freezed,
    Object? eTypeProduct = freezed,
    Object? eTypeQuality = freezed,
  }) {
    return _then(_$_Research(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int,
      dateEnd: dateEnd == freezed
          ? _value.dateEnd
          : dateEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      work: work == freezed
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as double,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      eTypeProduct: eTypeProduct == freezed
          ? _value.eTypeProduct
          : eTypeProduct // ignore: cast_nullable_to_non_nullable
              as ETypeProduct,
      eTypeQuality: eTypeQuality == freezed
          ? _value.eTypeQuality
          : eTypeQuality // ignore: cast_nullable_to_non_nullable
              as ETypeQuality,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Research extends _Research {
  const _$_Research(
      {required this.uid,
      required this.businessId,
      required this.dateEnd,
      required this.name,
      this.work = 0,
      required this.cost,
      required this.eTypeProduct,
      required this.eTypeQuality})
      : super._();

  factory _$_Research.fromJson(Map<String, dynamic> json) =>
      _$$_ResearchFromJson(json);

  @override
  final String uid;
  @override
  final int businessId;
  @override
  final DateTime dateEnd;
  @override
  final String name;
  @override
  @JsonKey()
  final double work;
  @override
  final double cost;
  @override
  final ETypeProduct eTypeProduct;
  @override
  final ETypeQuality eTypeQuality;

  @override
  String toString() {
    return 'Research(uid: $uid, businessId: $businessId, dateEnd: $dateEnd, name: $name, work: $work, cost: $cost, eTypeProduct: $eTypeProduct, eTypeQuality: $eTypeQuality)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Research &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality()
                .equals(other.businessId, businessId) &&
            const DeepCollectionEquality().equals(other.dateEnd, dateEnd) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.work, work) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality()
                .equals(other.eTypeProduct, eTypeProduct) &&
            const DeepCollectionEquality()
                .equals(other.eTypeQuality, eTypeQuality));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(businessId),
      const DeepCollectionEquality().hash(dateEnd),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(work),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(eTypeProduct),
      const DeepCollectionEquality().hash(eTypeQuality));

  @JsonKey(ignore: true)
  @override
  _$$_ResearchCopyWith<_$_Research> get copyWith =>
      __$$_ResearchCopyWithImpl<_$_Research>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResearchToJson(
      this,
    );
  }
}

abstract class _Research extends Research {
  const factory _Research(
      {required final String uid,
      required final int businessId,
      required final DateTime dateEnd,
      required final String name,
      final double work,
      required final double cost,
      required final ETypeProduct eTypeProduct,
      required final ETypeQuality eTypeQuality}) = _$_Research;
  const _Research._() : super._();

  factory _Research.fromJson(Map<String, dynamic> json) = _$_Research.fromJson;

  @override
  String get uid;
  @override
  int get businessId;
  @override
  DateTime get dateEnd;
  @override
  String get name;
  @override
  double get work;
  @override
  double get cost;
  @override
  ETypeProduct get eTypeProduct;
  @override
  ETypeQuality get eTypeQuality;
  @override
  @JsonKey(ignore: true)
  _$$_ResearchCopyWith<_$_Research> get copyWith =>
      throw _privateConstructorUsedError;
}
