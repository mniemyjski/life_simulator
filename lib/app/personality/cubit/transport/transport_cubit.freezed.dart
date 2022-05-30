// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transport_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransportState _$TransportStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return Initial.fromJson(json);
    case 'loading':
      return Loading.fromJson(json);
    case 'loaded':
      return Loaded.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TransportState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TransportState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Transport? transport, List<Transport>? transports)
        initial,
    required TResult Function(List<Transport> transports) loading,
    required TResult Function(Transport? transport, List<Transport> transports)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Transport? transport, List<Transport>? transports)?
        initial,
    TResult Function(List<Transport> transports)? loading,
    TResult Function(Transport? transport, List<Transport> transports)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Transport? transport, List<Transport>? transports)?
        initial,
    TResult Function(List<Transport> transports)? loading,
    TResult Function(Transport? transport, List<Transport> transports)? loaded,
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
abstract class $TransportStateCopyWith<$Res> {
  factory $TransportStateCopyWith(
          TransportState value, $Res Function(TransportState) then) =
      _$TransportStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TransportStateCopyWithImpl<$Res>
    implements $TransportStateCopyWith<$Res> {
  _$TransportStateCopyWithImpl(this._value, this._then);

  final TransportState _value;
  // ignore: unused_field
  final $Res Function(TransportState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  $Res call({Transport? transport, List<Transport>? transports});

  $TransportCopyWith<$Res>? get transport;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$TransportStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;

  @override
  $Res call({
    Object? transport = freezed,
    Object? transports = freezed,
  }) {
    return _then(_$Initial(
      transport: transport == freezed
          ? _value.transport
          : transport // ignore: cast_nullable_to_non_nullable
              as Transport?,
      transports: transports == freezed
          ? _value._transports
          : transports // ignore: cast_nullable_to_non_nullable
              as List<Transport>?,
    ));
  }

  @override
  $TransportCopyWith<$Res>? get transport {
    if (_value.transport == null) {
      return null;
    }

    return $TransportCopyWith<$Res>(_value.transport!, (value) {
      return _then(_value.copyWith(transport: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Initial implements Initial {
  const _$Initial(
      {required this.transport,
      required final List<Transport>? transports,
      final String? $type})
      : _transports = transports,
        $type = $type ?? 'initial';

  factory _$Initial.fromJson(Map<String, dynamic> json) =>
      _$$InitialFromJson(json);

  @override
  final Transport? transport;
  final List<Transport>? _transports;
  @override
  List<Transport>? get transports {
    final value = _transports;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TransportState.initial(transport: $transport, transports: $transports)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            const DeepCollectionEquality().equals(other.transport, transport) &&
            const DeepCollectionEquality()
                .equals(other._transports, _transports));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(transport),
      const DeepCollectionEquality().hash(_transports));

  @JsonKey(ignore: true)
  @override
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Transport? transport, List<Transport>? transports)
        initial,
    required TResult Function(List<Transport> transports) loading,
    required TResult Function(Transport? transport, List<Transport> transports)
        loaded,
  }) {
    return initial(transport, transports);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Transport? transport, List<Transport>? transports)?
        initial,
    TResult Function(List<Transport> transports)? loading,
    TResult Function(Transport? transport, List<Transport> transports)? loaded,
  }) {
    return initial?.call(transport, transports);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Transport? transport, List<Transport>? transports)?
        initial,
    TResult Function(List<Transport> transports)? loading,
    TResult Function(Transport? transport, List<Transport> transports)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(transport, transports);
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

abstract class Initial implements TransportState {
  const factory Initial(
      {required final Transport? transport,
      required final List<Transport>? transports}) = _$Initial;

  factory Initial.fromJson(Map<String, dynamic> json) = _$Initial.fromJson;

  Transport? get transport => throw _privateConstructorUsedError;
  List<Transport>? get transports => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
  $Res call({List<Transport> transports});
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$TransportStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;

  @override
  $Res call({
    Object? transports = freezed,
  }) {
    return _then(_$Loading(
      transports == freezed
          ? _value._transports
          : transports // ignore: cast_nullable_to_non_nullable
              as List<Transport>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Loading implements Loading {
  const _$Loading(final List<Transport> transports, {final String? $type})
      : _transports = transports,
        $type = $type ?? 'loading';

  factory _$Loading.fromJson(Map<String, dynamic> json) =>
      _$$LoadingFromJson(json);

  final List<Transport> _transports;
  @override
  List<Transport> get transports {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transports);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TransportState.loading(transports: $transports)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loading &&
            const DeepCollectionEquality()
                .equals(other._transports, _transports));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transports));

  @JsonKey(ignore: true)
  @override
  _$$LoadingCopyWith<_$Loading> get copyWith =>
      __$$LoadingCopyWithImpl<_$Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Transport? transport, List<Transport>? transports)
        initial,
    required TResult Function(List<Transport> transports) loading,
    required TResult Function(Transport? transport, List<Transport> transports)
        loaded,
  }) {
    return loading(transports);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Transport? transport, List<Transport>? transports)?
        initial,
    TResult Function(List<Transport> transports)? loading,
    TResult Function(Transport? transport, List<Transport> transports)? loaded,
  }) {
    return loading?.call(transports);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Transport? transport, List<Transport>? transports)?
        initial,
    TResult Function(List<Transport> transports)? loading,
    TResult Function(Transport? transport, List<Transport> transports)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(transports);
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

abstract class Loading implements TransportState {
  const factory Loading(final List<Transport> transports) = _$Loading;

  factory Loading.fromJson(Map<String, dynamic> json) = _$Loading.fromJson;

  List<Transport> get transports => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoadingCopyWith<_$Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  $Res call({Transport? transport, List<Transport> transports});

  $TransportCopyWith<$Res>? get transport;
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res> extends _$TransportStateCopyWithImpl<$Res>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, (v) => _then(v as _$Loaded));

  @override
  _$Loaded get _value => super._value as _$Loaded;

  @override
  $Res call({
    Object? transport = freezed,
    Object? transports = freezed,
  }) {
    return _then(_$Loaded(
      transport: transport == freezed
          ? _value.transport
          : transport // ignore: cast_nullable_to_non_nullable
              as Transport?,
      transports: transports == freezed
          ? _value._transports
          : transports // ignore: cast_nullable_to_non_nullable
              as List<Transport>,
    ));
  }

  @override
  $TransportCopyWith<$Res>? get transport {
    if (_value.transport == null) {
      return null;
    }

    return $TransportCopyWith<$Res>(_value.transport!, (value) {
      return _then(_value.copyWith(transport: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Loaded implements Loaded {
  const _$Loaded(
      {required this.transport,
      required final List<Transport> transports,
      final String? $type})
      : _transports = transports,
        $type = $type ?? 'loaded';

  factory _$Loaded.fromJson(Map<String, dynamic> json) =>
      _$$LoadedFromJson(json);

  @override
  final Transport? transport;
  final List<Transport> _transports;
  @override
  List<Transport> get transports {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transports);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TransportState.loaded(transport: $transport, transports: $transports)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            const DeepCollectionEquality().equals(other.transport, transport) &&
            const DeepCollectionEquality()
                .equals(other._transports, _transports));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(transport),
      const DeepCollectionEquality().hash(_transports));

  @JsonKey(ignore: true)
  @override
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Transport? transport, List<Transport>? transports)
        initial,
    required TResult Function(List<Transport> transports) loading,
    required TResult Function(Transport? transport, List<Transport> transports)
        loaded,
  }) {
    return loaded(transport, transports);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Transport? transport, List<Transport>? transports)?
        initial,
    TResult Function(List<Transport> transports)? loading,
    TResult Function(Transport? transport, List<Transport> transports)? loaded,
  }) {
    return loaded?.call(transport, transports);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Transport? transport, List<Transport>? transports)?
        initial,
    TResult Function(List<Transport> transports)? loading,
    TResult Function(Transport? transport, List<Transport> transports)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(transport, transports);
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

abstract class Loaded implements TransportState {
  const factory Loaded(
      {required final Transport? transport,
      required final List<Transport> transports}) = _$Loaded;

  factory Loaded.fromJson(Map<String, dynamic> json) = _$Loaded.fromJson;

  Transport? get transport => throw _privateConstructorUsedError;
  List<Transport> get transports => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
