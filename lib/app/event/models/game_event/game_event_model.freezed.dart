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
  DateTime? get dateGame => throw _privateConstructorUsedError;
  ETypeEffect get eTypeEffect => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  int get leftDuration => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameEventCopyWith<GameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String description,
      DateTime? dateGame,
      ETypeEffect eTypeEffect,
      double value,
      int duration,
      int leftDuration,
      bool active});
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res> implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  final GameEvent _value;
  // ignore: unused_field
  final $Res Function(GameEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? dateGame = freezed,
    Object? eTypeEffect = freezed,
    Object? value = freezed,
    Object? duration = freezed,
    Object? leftDuration = freezed,
    Object? active = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dateGame: dateGame == freezed
          ? _value.dateGame
          : dateGame // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eTypeEffect: eTypeEffect == freezed
          ? _value.eTypeEffect
          : eTypeEffect // ignore: cast_nullable_to_non_nullable
              as ETypeEffect,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      leftDuration: leftDuration == freezed
          ? _value.leftDuration
          : leftDuration // ignore: cast_nullable_to_non_nullable
              as int,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_EventCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory _$$_EventCopyWith(_$_Event value, $Res Function(_$_Event) then) =
      __$$_EventCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String description,
      DateTime? dateGame,
      ETypeEffect eTypeEffect,
      double value,
      int duration,
      int leftDuration,
      bool active});
}

/// @nodoc
class __$$_EventCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements _$$_EventCopyWith<$Res> {
  __$$_EventCopyWithImpl(_$_Event _value, $Res Function(_$_Event) _then)
      : super(_value, (v) => _then(v as _$_Event));

  @override
  _$_Event get _value => super._value as _$_Event;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? dateGame = freezed,
    Object? eTypeEffect = freezed,
    Object? value = freezed,
    Object? duration = freezed,
    Object? leftDuration = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_Event(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dateGame: dateGame == freezed
          ? _value.dateGame
          : dateGame // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      eTypeEffect: eTypeEffect == freezed
          ? _value.eTypeEffect
          : eTypeEffect // ignore: cast_nullable_to_non_nullable
              as ETypeEffect,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      leftDuration: leftDuration == freezed
          ? _value.leftDuration
          : leftDuration // ignore: cast_nullable_to_non_nullable
              as int,
      active: active == freezed
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
      required this.dateGame,
      required this.eTypeEffect,
      required this.value,
      required this.duration,
      required this.leftDuration,
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
  final DateTime? dateGame;
  @override
  final ETypeEffect eTypeEffect;
  @override
  final double value;
  @override
  final int duration;
  @override
  final int leftDuration;
  @override
  @JsonKey()
  final bool active;

  @override
  String toString() {
    return 'GameEvent(id: $id, name: $name, description: $description, dateGame: $dateGame, eTypeEffect: $eTypeEffect, value: $value, duration: $duration, leftDuration: $leftDuration, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Event &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.dateGame, dateGame) &&
            const DeepCollectionEquality()
                .equals(other.eTypeEffect, eTypeEffect) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.leftDuration, leftDuration) &&
            const DeepCollectionEquality().equals(other.active, active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(dateGame),
      const DeepCollectionEquality().hash(eTypeEffect),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(leftDuration),
      const DeepCollectionEquality().hash(active));

  @JsonKey(ignore: true)
  @override
  _$$_EventCopyWith<_$_Event> get copyWith =>
      __$$_EventCopyWithImpl<_$_Event>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventToJson(this);
  }
}

abstract class _Event implements GameEvent {
  const factory _Event(
      {required final String id,
      required final String name,
      required final String description,
      required final DateTime? dateGame,
      required final ETypeEffect eTypeEffect,
      required final double value,
      required final int duration,
      required final int leftDuration,
      final bool active}) = _$_Event;

  factory _Event.fromJson(Map<String, dynamic> json) = _$_Event.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  DateTime? get dateGame => throw _privateConstructorUsedError;
  @override
  ETypeEffect get eTypeEffect => throw _privateConstructorUsedError;
  @override
  double get value => throw _privateConstructorUsedError;
  @override
  int get duration => throw _privateConstructorUsedError;
  @override
  int get leftDuration => throw _privateConstructorUsedError;
  @override
  bool get active => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EventCopyWith<_$_Event> get copyWith =>
      throw _privateConstructorUsedError;
}
