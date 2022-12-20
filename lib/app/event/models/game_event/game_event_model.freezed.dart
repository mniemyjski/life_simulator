// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameEvent _$GameEventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$GameEvent {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime? get datCre => throw _privateConstructorUsedError;
  ETypeEffect get eTypeEffect => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  int get leftDuration => throw _privateConstructorUsedError;
  int get frequency => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameEventCopyWith<GameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      DateTime? datCre,
      ETypeEffect eTypeEffect,
      double value,
      int duration,
      int leftDuration,
      int frequency,
      bool active});
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? datCre = freezed,
    Object? eTypeEffect = null,
    Object? value = null,
    Object? duration = null,
    Object? leftDuration = null,
    Object? frequency = null,
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      datCre: freezed == datCre
          ? _value.datCre
          : datCre // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eTypeEffect: null == eTypeEffect
          ? _value.eTypeEffect
          : eTypeEffect // ignore: cast_nullable_to_non_nullable
              as ETypeEffect,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      leftDuration: null == leftDuration
          ? _value.leftDuration
          : leftDuration // ignore: cast_nullable_to_non_nullable
              as int,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory _$$_EventCopyWith(_$_Event value, $Res Function(_$_Event) then) =
      __$$_EventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      DateTime? datCre,
      ETypeEffect eTypeEffect,
      double value,
      int duration,
      int leftDuration,
      int frequency,
      bool active});
}

/// @nodoc
class __$$_EventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$_Event>
    implements _$$_EventCopyWith<$Res> {
  __$$_EventCopyWithImpl(_$_Event _value, $Res Function(_$_Event) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? datCre = freezed,
    Object? eTypeEffect = null,
    Object? value = null,
    Object? duration = null,
    Object? leftDuration = null,
    Object? frequency = null,
    Object? active = null,
  }) {
    return _then(_$_Event(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      datCre: freezed == datCre
          ? _value.datCre
          : datCre // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eTypeEffect: null == eTypeEffect
          ? _value.eTypeEffect
          : eTypeEffect // ignore: cast_nullable_to_non_nullable
              as ETypeEffect,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      leftDuration: null == leftDuration
          ? _value.leftDuration
          : leftDuration // ignore: cast_nullable_to_non_nullable
              as int,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Event implements _Event {
  const _$_Event(
      {required this.id,
      required this.name,
      required this.description,
      this.datCre,
      required this.eTypeEffect,
      required this.value,
      required this.duration,
      required this.leftDuration,
      required this.frequency,
      this.active = true});

  factory _$_Event.fromJson(Map<String, dynamic> json) =>
      _$$_EventFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final DateTime? datCre;
  @override
  final ETypeEffect eTypeEffect;
  @override
  final double value;
  @override
  final int duration;
  @override
  final int leftDuration;
  @override
  final int frequency;
  @override
  @JsonKey()
  final bool active;

  @override
  String toString() {
    return 'GameEvent(id: $id, name: $name, description: $description, datCre: $datCre, eTypeEffect: $eTypeEffect, value: $value, duration: $duration, leftDuration: $leftDuration, frequency: $frequency, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Event &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.datCre, datCre) || other.datCre == datCre) &&
            (identical(other.eTypeEffect, eTypeEffect) ||
                other.eTypeEffect == eTypeEffect) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.leftDuration, leftDuration) ||
                other.leftDuration == leftDuration) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, datCre,
      eTypeEffect, value, duration, leftDuration, frequency, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventCopyWith<_$_Event> get copyWith =>
      __$$_EventCopyWithImpl<_$_Event>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventToJson(
      this,
    );
  }
}

abstract class _Event implements GameEvent {
  const factory _Event(
      {required final String id,
      required final String name,
      required final String description,
      final DateTime? datCre,
      required final ETypeEffect eTypeEffect,
      required final double value,
      required final int duration,
      required final int leftDuration,
      required final int frequency,
      final bool active}) = _$_Event;

  factory _Event.fromJson(Map<String, dynamic> json) = _$_Event.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  DateTime? get datCre;
  @override
  ETypeEffect get eTypeEffect;
  @override
  double get value;
  @override
  int get duration;
  @override
  int get leftDuration;
  @override
  int get frequency;
  @override
  bool get active;
  @override
  @JsonKey(ignore: true)
  _$$_EventCopyWith<_$_Event> get copyWith =>
      throw _privateConstructorUsedError;
}
