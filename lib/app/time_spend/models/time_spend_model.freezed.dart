// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time_spend_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeSpend _$TimeSpendFromJson(Map<String, dynamic> json) {
  return _TimeSpend.fromJson(json);
}

/// @nodoc
mixin _$TimeSpend {
  int get free => throw _privateConstructorUsedError;
  int get work => throw _privateConstructorUsedError;
  int get learn => throw _privateConstructorUsedError;
  int get relax => throw _privateConstructorUsedError;
  int get sleep => throw _privateConstructorUsedError;
  int get used => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeSpendCopyWith<TimeSpend> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSpendCopyWith<$Res> {
  factory $TimeSpendCopyWith(TimeSpend value, $Res Function(TimeSpend) then) =
      _$TimeSpendCopyWithImpl<$Res>;
  $Res call({int free, int work, int learn, int relax, int sleep, int used});
}

/// @nodoc
class _$TimeSpendCopyWithImpl<$Res> implements $TimeSpendCopyWith<$Res> {
  _$TimeSpendCopyWithImpl(this._value, this._then);

  final TimeSpend _value;
  // ignore: unused_field
  final $Res Function(TimeSpend) _then;

  @override
  $Res call({
    Object? free = freezed,
    Object? work = freezed,
    Object? learn = freezed,
    Object? relax = freezed,
    Object? sleep = freezed,
    Object? used = freezed,
  }) {
    return _then(_value.copyWith(
      free: free == freezed
          ? _value.free
          : free // ignore: cast_nullable_to_non_nullable
              as int,
      work: work == freezed
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as int,
      learn: learn == freezed
          ? _value.learn
          : learn // ignore: cast_nullable_to_non_nullable
              as int,
      relax: relax == freezed
          ? _value.relax
          : relax // ignore: cast_nullable_to_non_nullable
              as int,
      sleep: sleep == freezed
          ? _value.sleep
          : sleep // ignore: cast_nullable_to_non_nullable
              as int,
      used: used == freezed
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TimeSpendCopyWith<$Res> implements $TimeSpendCopyWith<$Res> {
  factory _$$_TimeSpendCopyWith(
          _$_TimeSpend value, $Res Function(_$_TimeSpend) then) =
      __$$_TimeSpendCopyWithImpl<$Res>;
  @override
  $Res call({int free, int work, int learn, int relax, int sleep, int used});
}

/// @nodoc
class __$$_TimeSpendCopyWithImpl<$Res> extends _$TimeSpendCopyWithImpl<$Res>
    implements _$$_TimeSpendCopyWith<$Res> {
  __$$_TimeSpendCopyWithImpl(
      _$_TimeSpend _value, $Res Function(_$_TimeSpend) _then)
      : super(_value, (v) => _then(v as _$_TimeSpend));

  @override
  _$_TimeSpend get _value => super._value as _$_TimeSpend;

  @override
  $Res call({
    Object? free = freezed,
    Object? work = freezed,
    Object? learn = freezed,
    Object? relax = freezed,
    Object? sleep = freezed,
    Object? used = freezed,
  }) {
    return _then(_$_TimeSpend(
      free: free == freezed
          ? _value.free
          : free // ignore: cast_nullable_to_non_nullable
              as int,
      work: work == freezed
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as int,
      learn: learn == freezed
          ? _value.learn
          : learn // ignore: cast_nullable_to_non_nullable
              as int,
      relax: relax == freezed
          ? _value.relax
          : relax // ignore: cast_nullable_to_non_nullable
              as int,
      sleep: sleep == freezed
          ? _value.sleep
          : sleep // ignore: cast_nullable_to_non_nullable
              as int,
      used: used == freezed
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeSpend implements _TimeSpend {
  const _$_TimeSpend(
      {required this.free,
      required this.work,
      required this.learn,
      required this.relax,
      required this.sleep,
      required this.used});

  factory _$_TimeSpend.fromJson(Map<String, dynamic> json) =>
      _$$_TimeSpendFromJson(json);

  @override
  final int free;
  @override
  final int work;
  @override
  final int learn;
  @override
  final int relax;
  @override
  final int sleep;
  @override
  final int used;

  @override
  String toString() {
    return 'TimeSpend(free: $free, work: $work, learn: $learn, relax: $relax, sleep: $sleep, used: $used)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeSpend &&
            const DeepCollectionEquality().equals(other.free, free) &&
            const DeepCollectionEquality().equals(other.work, work) &&
            const DeepCollectionEquality().equals(other.learn, learn) &&
            const DeepCollectionEquality().equals(other.relax, relax) &&
            const DeepCollectionEquality().equals(other.sleep, sleep) &&
            const DeepCollectionEquality().equals(other.used, used));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(free),
      const DeepCollectionEquality().hash(work),
      const DeepCollectionEquality().hash(learn),
      const DeepCollectionEquality().hash(relax),
      const DeepCollectionEquality().hash(sleep),
      const DeepCollectionEquality().hash(used));

  @JsonKey(ignore: true)
  @override
  _$$_TimeSpendCopyWith<_$_TimeSpend> get copyWith =>
      __$$_TimeSpendCopyWithImpl<_$_TimeSpend>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeSpendToJson(this);
  }
}

abstract class _TimeSpend implements TimeSpend {
  const factory _TimeSpend(
      {required final int free,
      required final int work,
      required final int learn,
      required final int relax,
      required final int sleep,
      required final int used}) = _$_TimeSpend;

  factory _TimeSpend.fromJson(Map<String, dynamic> json) =
      _$_TimeSpend.fromJson;

  @override
  int get free => throw _privateConstructorUsedError;
  @override
  int get work => throw _privateConstructorUsedError;
  @override
  int get learn => throw _privateConstructorUsedError;
  @override
  int get relax => throw _privateConstructorUsedError;
  @override
  int get sleep => throw _privateConstructorUsedError;
  @override
  int get used => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TimeSpendCopyWith<_$_TimeSpend> get copyWith =>
      throw _privateConstructorUsedError;
}
