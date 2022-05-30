// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'house_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HouseState _$HouseStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return Initial.fromJson(json);
    case 'loading':
      return Loading.fromJson(json);
    case 'loaded':
      return Loaded.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'HouseState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$HouseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(House? house, List<House>? houses) initial,
    required TResult Function(List<House> house) loading,
    required TResult Function(House? house, List<House> houses) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(House? house, List<House>? houses)? initial,
    TResult Function(List<House> house)? loading,
    TResult Function(House? house, List<House> houses)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(House? house, List<House>? houses)? initial,
    TResult Function(List<House> house)? loading,
    TResult Function(House? house, List<House> houses)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseStateCopyWith<$Res> {
  factory $HouseStateCopyWith(
          HouseState value, $Res Function(HouseState) then) =
      _$HouseStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HouseStateCopyWithImpl<$Res> implements $HouseStateCopyWith<$Res> {
  _$HouseStateCopyWithImpl(this._value, this._then);

  final HouseState _value;
  // ignore: unused_field
  final $Res Function(HouseState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  $Res call({House? house, List<House>? houses});

  $HouseCopyWith<$Res>? get house;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$HouseStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;

  @override
  $Res call({
    Object? house = freezed,
    Object? houses = freezed,
  }) {
    return _then(_$Initial(
      house: house == freezed
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as House?,
      houses: houses == freezed
          ? _value._houses
          : houses // ignore: cast_nullable_to_non_nullable
              as List<House>?,
    ));
  }

  @override
  $HouseCopyWith<$Res>? get house {
    if (_value.house == null) {
      return null;
    }

    return $HouseCopyWith<$Res>(_value.house!, (value) {
      return _then(_value.copyWith(house: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Initial implements Initial {
  const _$Initial(
      {required this.house,
      required final List<House>? houses,
      final String? $type})
      : _houses = houses,
        $type = $type ?? 'initial';

  factory _$Initial.fromJson(Map<String, dynamic> json) =>
      _$$InitialFromJson(json);

  @override
  final House? house;
  final List<House>? _houses;
  @override
  List<House>? get houses {
    final value = _houses;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HouseState.initial(house: $house, houses: $houses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            const DeepCollectionEquality().equals(other.house, house) &&
            const DeepCollectionEquality().equals(other._houses, _houses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(house),
      const DeepCollectionEquality().hash(_houses));

  @JsonKey(ignore: true)
  @override
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(House? house, List<House>? houses) initial,
    required TResult Function(List<House> house) loading,
    required TResult Function(House? house, List<House> houses) loaded,
  }) {
    return initial(house, houses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(House? house, List<House>? houses)? initial,
    TResult Function(List<House> house)? loading,
    TResult Function(House? house, List<House> houses)? loaded,
  }) {
    return initial?.call(house, houses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(House? house, List<House>? houses)? initial,
    TResult Function(List<House> house)? loading,
    TResult Function(House? house, List<House> houses)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(house, houses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialToJson(this);
  }
}

abstract class Initial implements HouseState {
  const factory Initial(
      {required final House? house,
      required final List<House>? houses}) = _$Initial;

  factory Initial.fromJson(Map<String, dynamic> json) = _$Initial.fromJson;

  House? get house => throw _privateConstructorUsedError;
  List<House>? get houses => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
  $Res call({List<House> house});
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$HouseStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;

  @override
  $Res call({
    Object? house = freezed,
  }) {
    return _then(_$Loading(
      house == freezed
          ? _value._house
          : house // ignore: cast_nullable_to_non_nullable
              as List<House>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Loading implements Loading {
  const _$Loading(final List<House> house, {final String? $type})
      : _house = house,
        $type = $type ?? 'loading';

  factory _$Loading.fromJson(Map<String, dynamic> json) =>
      _$$LoadingFromJson(json);

  final List<House> _house;
  @override
  List<House> get house {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_house);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HouseState.loading(house: $house)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loading &&
            const DeepCollectionEquality().equals(other._house, _house));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_house));

  @JsonKey(ignore: true)
  @override
  _$$LoadingCopyWith<_$Loading> get copyWith =>
      __$$LoadingCopyWithImpl<_$Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(House? house, List<House>? houses) initial,
    required TResult Function(List<House> house) loading,
    required TResult Function(House? house, List<House> houses) loaded,
  }) {
    return loading(house);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(House? house, List<House>? houses)? initial,
    TResult Function(List<House> house)? loading,
    TResult Function(House? house, List<House> houses)? loaded,
  }) {
    return loading?.call(house);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(House? house, List<House>? houses)? initial,
    TResult Function(List<House> house)? loading,
    TResult Function(House? house, List<House> houses)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(house);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingToJson(this);
  }
}

abstract class Loading implements HouseState {
  const factory Loading(final List<House> house) = _$Loading;

  factory Loading.fromJson(Map<String, dynamic> json) = _$Loading.fromJson;

  List<House> get house => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoadingCopyWith<_$Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  $Res call({House? house, List<House> houses});

  $HouseCopyWith<$Res>? get house;
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res> extends _$HouseStateCopyWithImpl<$Res>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, (v) => _then(v as _$Loaded));

  @override
  _$Loaded get _value => super._value as _$Loaded;

  @override
  $Res call({
    Object? house = freezed,
    Object? houses = freezed,
  }) {
    return _then(_$Loaded(
      house: house == freezed
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as House?,
      houses: houses == freezed
          ? _value._houses
          : houses // ignore: cast_nullable_to_non_nullable
              as List<House>,
    ));
  }

  @override
  $HouseCopyWith<$Res>? get house {
    if (_value.house == null) {
      return null;
    }

    return $HouseCopyWith<$Res>(_value.house!, (value) {
      return _then(_value.copyWith(house: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Loaded implements Loaded {
  const _$Loaded(
      {required this.house,
      required final List<House> houses,
      final String? $type})
      : _houses = houses,
        $type = $type ?? 'loaded';

  factory _$Loaded.fromJson(Map<String, dynamic> json) =>
      _$$LoadedFromJson(json);

  @override
  final House? house;
  final List<House> _houses;
  @override
  List<House> get houses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_houses);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HouseState.loaded(house: $house, houses: $houses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            const DeepCollectionEquality().equals(other.house, house) &&
            const DeepCollectionEquality().equals(other._houses, _houses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(house),
      const DeepCollectionEquality().hash(_houses));

  @JsonKey(ignore: true)
  @override
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(House? house, List<House>? houses) initial,
    required TResult Function(List<House> house) loading,
    required TResult Function(House? house, List<House> houses) loaded,
  }) {
    return loaded(house, houses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(House? house, List<House>? houses)? initial,
    TResult Function(List<House> house)? loading,
    TResult Function(House? house, List<House> houses)? loaded,
  }) {
    return loaded?.call(house, houses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(House? house, List<House>? houses)? initial,
    TResult Function(List<House> house)? loading,
    TResult Function(House? house, List<House> houses)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(house, houses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadedToJson(this);
  }
}

abstract class Loaded implements HouseState {
  const factory Loaded(
      {required final House? house,
      required final List<House> houses}) = _$Loaded;

  factory Loaded.fromJson(Map<String, dynamic> json) = _$Loaded.fromJson;

  House? get house => throw _privateConstructorUsedError;
  List<House> get houses => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
