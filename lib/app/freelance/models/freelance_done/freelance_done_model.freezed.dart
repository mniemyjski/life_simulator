// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'freelance_done_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FreelanceDone _$FreelanceDoneFromJson(Map<String, dynamic> json) {
  return _FreelanceDone.fromJson(json);
}

/// @nodoc
mixin _$FreelanceDone {
//Base
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ETypeFreelance get eTypeFreelance => throw _privateConstructorUsedError;
  double get fame => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError; //EndBase
  DateTime get dateDone => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreelanceDoneCopyWith<FreelanceDone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreelanceDoneCopyWith<$Res> {
  factory $FreelanceDoneCopyWith(
          FreelanceDone value, $Res Function(FreelanceDone) then) =
      _$FreelanceDoneCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      ETypeFreelance eTypeFreelance,
      double fame,
      double price,
      DateTime dateDone,
      int rating});
}

/// @nodoc
class _$FreelanceDoneCopyWithImpl<$Res>
    implements $FreelanceDoneCopyWith<$Res> {
  _$FreelanceDoneCopyWithImpl(this._value, this._then);

  final FreelanceDone _value;
  // ignore: unused_field
  final $Res Function(FreelanceDone) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? eTypeFreelance = freezed,
    Object? fame = freezed,
    Object? price = freezed,
    Object? dateDone = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      eTypeFreelance: eTypeFreelance == freezed
          ? _value.eTypeFreelance
          : eTypeFreelance // ignore: cast_nullable_to_non_nullable
              as ETypeFreelance,
      fame: fame == freezed
          ? _value.fame
          : fame // ignore: cast_nullable_to_non_nullable
              as double,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      dateDone: dateDone == freezed
          ? _value.dateDone
          : dateDone // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_FreelanceDoneCopyWith<$Res>
    implements $FreelanceDoneCopyWith<$Res> {
  factory _$$_FreelanceDoneCopyWith(
          _$_FreelanceDone value, $Res Function(_$_FreelanceDone) then) =
      __$$_FreelanceDoneCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      ETypeFreelance eTypeFreelance,
      double fame,
      double price,
      DateTime dateDone,
      int rating});
}

/// @nodoc
class __$$_FreelanceDoneCopyWithImpl<$Res>
    extends _$FreelanceDoneCopyWithImpl<$Res>
    implements _$$_FreelanceDoneCopyWith<$Res> {
  __$$_FreelanceDoneCopyWithImpl(
      _$_FreelanceDone _value, $Res Function(_$_FreelanceDone) _then)
      : super(_value, (v) => _then(v as _$_FreelanceDone));

  @override
  _$_FreelanceDone get _value => super._value as _$_FreelanceDone;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? eTypeFreelance = freezed,
    Object? fame = freezed,
    Object? price = freezed,
    Object? dateDone = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_FreelanceDone(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      eTypeFreelance: eTypeFreelance == freezed
          ? _value.eTypeFreelance
          : eTypeFreelance // ignore: cast_nullable_to_non_nullable
              as ETypeFreelance,
      fame: fame == freezed
          ? _value.fame
          : fame // ignore: cast_nullable_to_non_nullable
              as double,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      dateDone: dateDone == freezed
          ? _value.dateDone
          : dateDone // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FreelanceDone extends _FreelanceDone {
  const _$_FreelanceDone(
      {required this.id,
      required this.name,
      required this.eTypeFreelance,
      required this.fame,
      required this.price,
      required this.dateDone,
      required this.rating})
      : assert(rating > 0, 'rating < 6'),
        super._();

  factory _$_FreelanceDone.fromJson(Map<String, dynamic> json) =>
      _$$_FreelanceDoneFromJson(json);

//Base
  @override
  final String id;
  @override
  final String name;
  @override
  final ETypeFreelance eTypeFreelance;
  @override
  final double fame;
  @override
  final double price;
//EndBase
  @override
  final DateTime dateDone;
  @override
  final int rating;

  @override
  String toString() {
    return 'FreelanceDone(id: $id, name: $name, eTypeFreelance: $eTypeFreelance, fame: $fame, price: $price, dateDone: $dateDone, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FreelanceDone &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.eTypeFreelance, eTypeFreelance) &&
            const DeepCollectionEquality().equals(other.fame, fame) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.dateDone, dateDone) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(eTypeFreelance),
      const DeepCollectionEquality().hash(fame),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(dateDone),
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$$_FreelanceDoneCopyWith<_$_FreelanceDone> get copyWith =>
      __$$_FreelanceDoneCopyWithImpl<_$_FreelanceDone>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FreelanceDoneToJson(this);
  }
}

abstract class _FreelanceDone extends FreelanceDone implements FreelanceBase {
  const factory _FreelanceDone(
      {required final String id,
      required final String name,
      required final ETypeFreelance eTypeFreelance,
      required final double fame,
      required final double price,
      required final DateTime dateDone,
      required final int rating}) = _$_FreelanceDone;
  const _FreelanceDone._() : super._();

  factory _FreelanceDone.fromJson(Map<String, dynamic> json) =
      _$_FreelanceDone.fromJson;

  @override //Base
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  ETypeFreelance get eTypeFreelance => throw _privateConstructorUsedError;
  @override
  double get fame => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override //EndBase
  DateTime get dateDone => throw _privateConstructorUsedError;
  @override
  int get rating => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FreelanceDoneCopyWith<_$_FreelanceDone> get copyWith =>
      throw _privateConstructorUsedError;
}
