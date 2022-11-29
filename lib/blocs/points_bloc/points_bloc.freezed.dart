// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'points_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PointsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initPoints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initPointsEvent value) initPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(initPointsEvent value)? initPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initPointsEvent value)? initPoints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointsEventCopyWith<$Res> {
  factory $PointsEventCopyWith(
          PointsEvent value, $Res Function(PointsEvent) then) =
      _$PointsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PointsEventCopyWithImpl<$Res> implements $PointsEventCopyWith<$Res> {
  _$PointsEventCopyWithImpl(this._value, this._then);

  final PointsEvent _value;
  // ignore: unused_field
  final $Res Function(PointsEvent) _then;
}

/// @nodoc
abstract class _$$initPointsEventCopyWith<$Res> {
  factory _$$initPointsEventCopyWith(
          _$initPointsEvent value, $Res Function(_$initPointsEvent) then) =
      __$$initPointsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initPointsEventCopyWithImpl<$Res>
    extends _$PointsEventCopyWithImpl<$Res>
    implements _$$initPointsEventCopyWith<$Res> {
  __$$initPointsEventCopyWithImpl(
      _$initPointsEvent _value, $Res Function(_$initPointsEvent) _then)
      : super(_value, (v) => _then(v as _$initPointsEvent));

  @override
  _$initPointsEvent get _value => super._value as _$initPointsEvent;
}

/// @nodoc

class _$initPointsEvent implements initPointsEvent {
  const _$initPointsEvent();

  @override
  String toString() {
    return 'PointsEvent.initPoints()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initPointsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initPoints,
  }) {
    return initPoints();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initPoints,
  }) {
    return initPoints?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initPoints,
    required TResult orElse(),
  }) {
    if (initPoints != null) {
      return initPoints();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initPointsEvent value) initPoints,
  }) {
    return initPoints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(initPointsEvent value)? initPoints,
  }) {
    return initPoints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initPointsEvent value)? initPoints,
    required TResult orElse(),
  }) {
    if (initPoints != null) {
      return initPoints(this);
    }
    return orElse();
  }
}

abstract class initPointsEvent implements PointsEvent {
  const factory initPointsEvent() = _$initPointsEvent;
}

/// @nodoc
mixin _$PointsState {
  PointsStatus get pointsStatus => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get points => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PointsStateCopyWith<PointsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointsStateCopyWith<$Res> {
  factory $PointsStateCopyWith(
          PointsState value, $Res Function(PointsState) then) =
      _$PointsStateCopyWithImpl<$Res>;
  $Res call({PointsStatus pointsStatus, String errorMessage, String points});
}

/// @nodoc
class _$PointsStateCopyWithImpl<$Res> implements $PointsStateCopyWith<$Res> {
  _$PointsStateCopyWithImpl(this._value, this._then);

  final PointsState _value;
  // ignore: unused_field
  final $Res Function(PointsState) _then;

  @override
  $Res call({
    Object? pointsStatus = freezed,
    Object? errorMessage = freezed,
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      pointsStatus: pointsStatus == freezed
          ? _value.pointsStatus
          : pointsStatus // ignore: cast_nullable_to_non_nullable
              as PointsStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$pointsStateCopyWith<$Res>
    implements $PointsStateCopyWith<$Res> {
  factory _$$pointsStateCopyWith(
          _$pointsState value, $Res Function(_$pointsState) then) =
      __$$pointsStateCopyWithImpl<$Res>;
  @override
  $Res call({PointsStatus pointsStatus, String errorMessage, String points});
}

/// @nodoc
class __$$pointsStateCopyWithImpl<$Res> extends _$PointsStateCopyWithImpl<$Res>
    implements _$$pointsStateCopyWith<$Res> {
  __$$pointsStateCopyWithImpl(
      _$pointsState _value, $Res Function(_$pointsState) _then)
      : super(_value, (v) => _then(v as _$pointsState));

  @override
  _$pointsState get _value => super._value as _$pointsState;

  @override
  $Res call({
    Object? pointsStatus = freezed,
    Object? errorMessage = freezed,
    Object? points = freezed,
  }) {
    return _then(_$pointsState(
      pointsStatus: pointsStatus == freezed
          ? _value.pointsStatus
          : pointsStatus // ignore: cast_nullable_to_non_nullable
              as PointsStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$pointsState implements pointsState {
  const _$pointsState(
      {required this.pointsStatus,
      required this.errorMessage,
      required this.points});

  @override
  final PointsStatus pointsStatus;
  @override
  final String errorMessage;
  @override
  final String points;

  @override
  String toString() {
    return 'PointsState(pointsStatus: $pointsStatus, errorMessage: $errorMessage, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$pointsState &&
            const DeepCollectionEquality()
                .equals(other.pointsStatus, pointsStatus) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.points, points));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pointsStatus),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(points));

  @JsonKey(ignore: true)
  @override
  _$$pointsStateCopyWith<_$pointsState> get copyWith =>
      __$$pointsStateCopyWithImpl<_$pointsState>(this, _$identity);
}

abstract class pointsState implements PointsState {
  const factory pointsState(
      {required final PointsStatus pointsStatus,
      required final String errorMessage,
      required final String points}) = _$pointsState;

  @override
  PointsStatus get pointsStatus;
  @override
  String get errorMessage;
  @override
  String get points;
  @override
  @JsonKey(ignore: true)
  _$$pointsStateCopyWith<_$pointsState> get copyWith =>
      throw _privateConstructorUsedError;
}
