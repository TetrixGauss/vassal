// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String filter) showNotifications,
    required TResult Function(String hash) deleteNotification,
    required TResult Function() clearAll,
    required TResult Function() back,
    required TResult Function(String patientHash) notificationPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String filter)? showNotifications,
    TResult Function(String hash)? deleteNotification,
    TResult Function()? clearAll,
    TResult Function()? back,
    TResult Function(String patientHash)? notificationPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String filter)? showNotifications,
    TResult Function(String hash)? deleteNotification,
    TResult Function()? clearAll,
    TResult Function()? back,
    TResult Function(String patientHash)? notificationPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(showNotificationsEvent value) showNotifications,
    required TResult Function(deleteNotificationEvent value) deleteNotification,
    required TResult Function(clearAllEvent value) clearAll,
    required TResult Function(backEvent value) back,
    required TResult Function(notificationPressedEvent value)
        notificationPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(showNotificationsEvent value)? showNotifications,
    TResult Function(deleteNotificationEvent value)? deleteNotification,
    TResult Function(clearAllEvent value)? clearAll,
    TResult Function(backEvent value)? back,
    TResult Function(notificationPressedEvent value)? notificationPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(showNotificationsEvent value)? showNotifications,
    TResult Function(deleteNotificationEvent value)? deleteNotification,
    TResult Function(clearAllEvent value)? clearAll,
    TResult Function(backEvent value)? back,
    TResult Function(notificationPressedEvent value)? notificationPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  final NotificationsEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationsEvent) _then;
}

/// @nodoc
abstract class _$$showNotificationsEventCopyWith<$Res> {
  factory _$$showNotificationsEventCopyWith(_$showNotificationsEvent value,
          $Res Function(_$showNotificationsEvent) then) =
      __$$showNotificationsEventCopyWithImpl<$Res>;
  $Res call({String filter});
}

/// @nodoc
class __$$showNotificationsEventCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements _$$showNotificationsEventCopyWith<$Res> {
  __$$showNotificationsEventCopyWithImpl(_$showNotificationsEvent _value,
      $Res Function(_$showNotificationsEvent) _then)
      : super(_value, (v) => _then(v as _$showNotificationsEvent));

  @override
  _$showNotificationsEvent get _value =>
      super._value as _$showNotificationsEvent;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$showNotificationsEvent(
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$showNotificationsEvent implements showNotificationsEvent {
  const _$showNotificationsEvent(this.filter);

  @override
  final String filter;

  @override
  String toString() {
    return 'NotificationsEvent.showNotifications(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$showNotificationsEvent &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$$showNotificationsEventCopyWith<_$showNotificationsEvent> get copyWith =>
      __$$showNotificationsEventCopyWithImpl<_$showNotificationsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String filter) showNotifications,
    required TResult Function(String hash) deleteNotification,
    required TResult Function() clearAll,
    required TResult Function() back,
    required TResult Function(String patientHash) notificationPressed,
  }) {
    return showNotifications(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String filter)? showNotifications,
    TResult Function(String hash)? deleteNotification,
    TResult Function()? clearAll,
    TResult Function()? back,
    TResult Function(String patientHash)? notificationPressed,
  }) {
    return showNotifications?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String filter)? showNotifications,
    TResult Function(String hash)? deleteNotification,
    TResult Function()? clearAll,
    TResult Function()? back,
    TResult Function(String patientHash)? notificationPressed,
    required TResult orElse(),
  }) {
    if (showNotifications != null) {
      return showNotifications(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(showNotificationsEvent value) showNotifications,
    required TResult Function(deleteNotificationEvent value) deleteNotification,
    required TResult Function(clearAllEvent value) clearAll,
    required TResult Function(backEvent value) back,
    required TResult Function(notificationPressedEvent value)
        notificationPressed,
  }) {
    return showNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(showNotificationsEvent value)? showNotifications,
    TResult Function(deleteNotificationEvent value)? deleteNotification,
    TResult Function(clearAllEvent value)? clearAll,
    TResult Function(backEvent value)? back,
    TResult Function(notificationPressedEvent value)? notificationPressed,
  }) {
    return showNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(showNotificationsEvent value)? showNotifications,
    TResult Function(deleteNotificationEvent value)? deleteNotification,
    TResult Function(clearAllEvent value)? clearAll,
    TResult Function(backEvent value)? back,
    TResult Function(notificationPressedEvent value)? notificationPressed,
    required TResult orElse(),
  }) {
    if (showNotifications != null) {
      return showNotifications(this);
    }
    return orElse();
  }
}

abstract class showNotificationsEvent implements NotificationsEvent {
  const factory showNotificationsEvent(final String filter) =
      _$showNotificationsEvent;

  String get filter;
  @JsonKey(ignore: true)
  _$$showNotificationsEventCopyWith<_$showNotificationsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$deleteNotificationEventCopyWith<$Res> {
  factory _$$deleteNotificationEventCopyWith(_$deleteNotificationEvent value,
          $Res Function(_$deleteNotificationEvent) then) =
      __$$deleteNotificationEventCopyWithImpl<$Res>;
  $Res call({String hash});
}

/// @nodoc
class __$$deleteNotificationEventCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements _$$deleteNotificationEventCopyWith<$Res> {
  __$$deleteNotificationEventCopyWithImpl(_$deleteNotificationEvent _value,
      $Res Function(_$deleteNotificationEvent) _then)
      : super(_value, (v) => _then(v as _$deleteNotificationEvent));

  @override
  _$deleteNotificationEvent get _value =>
      super._value as _$deleteNotificationEvent;

  @override
  $Res call({
    Object? hash = freezed,
  }) {
    return _then(_$deleteNotificationEvent(
      hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$deleteNotificationEvent implements deleteNotificationEvent {
  const _$deleteNotificationEvent(this.hash);

  @override
  final String hash;

  @override
  String toString() {
    return 'NotificationsEvent.deleteNotification(hash: $hash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deleteNotificationEvent &&
            const DeepCollectionEquality().equals(other.hash, hash));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(hash));

  @JsonKey(ignore: true)
  @override
  _$$deleteNotificationEventCopyWith<_$deleteNotificationEvent> get copyWith =>
      __$$deleteNotificationEventCopyWithImpl<_$deleteNotificationEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String filter) showNotifications,
    required TResult Function(String hash) deleteNotification,
    required TResult Function() clearAll,
    required TResult Function() back,
    required TResult Function(String patientHash) notificationPressed,
  }) {
    return deleteNotification(hash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String filter)? showNotifications,
    TResult Function(String hash)? deleteNotification,
    TResult Function()? clearAll,
    TResult Function()? back,
    TResult Function(String patientHash)? notificationPressed,
  }) {
    return deleteNotification?.call(hash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String filter)? showNotifications,
    TResult Function(String hash)? deleteNotification,
    TResult Function()? clearAll,
    TResult Function()? back,
    TResult Function(String patientHash)? notificationPressed,
    required TResult orElse(),
  }) {
    if (deleteNotification != null) {
      return deleteNotification(hash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(showNotificationsEvent value) showNotifications,
    required TResult Function(deleteNotificationEvent value) deleteNotification,
    required TResult Function(clearAllEvent value) clearAll,
    required TResult Function(backEvent value) back,
    required TResult Function(notificationPressedEvent value)
        notificationPressed,
  }) {
    return deleteNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(showNotificationsEvent value)? showNotifications,
    TResult Function(deleteNotificationEvent value)? deleteNotification,
    TResult Function(clearAllEvent value)? clearAll,
    TResult Function(backEvent value)? back,
    TResult Function(notificationPressedEvent value)? notificationPressed,
  }) {
    return deleteNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(showNotificationsEvent value)? showNotifications,
    TResult Function(deleteNotificationEvent value)? deleteNotification,
    TResult Function(clearAllEvent value)? clearAll,
    TResult Function(backEvent value)? back,
    TResult Function(notificationPressedEvent value)? notificationPressed,
    required TResult orElse(),
  }) {
    if (deleteNotification != null) {
      return deleteNotification(this);
    }
    return orElse();
  }
}

abstract class deleteNotificationEvent implements NotificationsEvent {
  const factory deleteNotificationEvent(final String hash) =
      _$deleteNotificationEvent;

  String get hash;
  @JsonKey(ignore: true)
  _$$deleteNotificationEventCopyWith<_$deleteNotificationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$clearAllEventCopyWith<$Res> {
  factory _$$clearAllEventCopyWith(
          _$clearAllEvent value, $Res Function(_$clearAllEvent) then) =
      __$$clearAllEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$clearAllEventCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements _$$clearAllEventCopyWith<$Res> {
  __$$clearAllEventCopyWithImpl(
      _$clearAllEvent _value, $Res Function(_$clearAllEvent) _then)
      : super(_value, (v) => _then(v as _$clearAllEvent));

  @override
  _$clearAllEvent get _value => super._value as _$clearAllEvent;
}

/// @nodoc

class _$clearAllEvent implements clearAllEvent {
  const _$clearAllEvent();

  @override
  String toString() {
    return 'NotificationsEvent.clearAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$clearAllEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String filter) showNotifications,
    required TResult Function(String hash) deleteNotification,
    required TResult Function() clearAll,
    required TResult Function() back,
    required TResult Function(String patientHash) notificationPressed,
  }) {
    return clearAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String filter)? showNotifications,
    TResult Function(String hash)? deleteNotification,
    TResult Function()? clearAll,
    TResult Function()? back,
    TResult Function(String patientHash)? notificationPressed,
  }) {
    return clearAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String filter)? showNotifications,
    TResult Function(String hash)? deleteNotification,
    TResult Function()? clearAll,
    TResult Function()? back,
    TResult Function(String patientHash)? notificationPressed,
    required TResult orElse(),
  }) {
    if (clearAll != null) {
      return clearAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(showNotificationsEvent value) showNotifications,
    required TResult Function(deleteNotificationEvent value) deleteNotification,
    required TResult Function(clearAllEvent value) clearAll,
    required TResult Function(backEvent value) back,
    required TResult Function(notificationPressedEvent value)
        notificationPressed,
  }) {
    return clearAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(showNotificationsEvent value)? showNotifications,
    TResult Function(deleteNotificationEvent value)? deleteNotification,
    TResult Function(clearAllEvent value)? clearAll,
    TResult Function(backEvent value)? back,
    TResult Function(notificationPressedEvent value)? notificationPressed,
  }) {
    return clearAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(showNotificationsEvent value)? showNotifications,
    TResult Function(deleteNotificationEvent value)? deleteNotification,
    TResult Function(clearAllEvent value)? clearAll,
    TResult Function(backEvent value)? back,
    TResult Function(notificationPressedEvent value)? notificationPressed,
    required TResult orElse(),
  }) {
    if (clearAll != null) {
      return clearAll(this);
    }
    return orElse();
  }
}

abstract class clearAllEvent implements NotificationsEvent {
  const factory clearAllEvent() = _$clearAllEvent;
}

/// @nodoc
abstract class _$$backEventCopyWith<$Res> {
  factory _$$backEventCopyWith(
          _$backEvent value, $Res Function(_$backEvent) then) =
      __$$backEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$backEventCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements _$$backEventCopyWith<$Res> {
  __$$backEventCopyWithImpl(
      _$backEvent _value, $Res Function(_$backEvent) _then)
      : super(_value, (v) => _then(v as _$backEvent));

  @override
  _$backEvent get _value => super._value as _$backEvent;
}

/// @nodoc

class _$backEvent implements backEvent {
  const _$backEvent();

  @override
  String toString() {
    return 'NotificationsEvent.back()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$backEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String filter) showNotifications,
    required TResult Function(String hash) deleteNotification,
    required TResult Function() clearAll,
    required TResult Function() back,
    required TResult Function(String patientHash) notificationPressed,
  }) {
    return back();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String filter)? showNotifications,
    TResult Function(String hash)? deleteNotification,
    TResult Function()? clearAll,
    TResult Function()? back,
    TResult Function(String patientHash)? notificationPressed,
  }) {
    return back?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String filter)? showNotifications,
    TResult Function(String hash)? deleteNotification,
    TResult Function()? clearAll,
    TResult Function()? back,
    TResult Function(String patientHash)? notificationPressed,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(showNotificationsEvent value) showNotifications,
    required TResult Function(deleteNotificationEvent value) deleteNotification,
    required TResult Function(clearAllEvent value) clearAll,
    required TResult Function(backEvent value) back,
    required TResult Function(notificationPressedEvent value)
        notificationPressed,
  }) {
    return back(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(showNotificationsEvent value)? showNotifications,
    TResult Function(deleteNotificationEvent value)? deleteNotification,
    TResult Function(clearAllEvent value)? clearAll,
    TResult Function(backEvent value)? back,
    TResult Function(notificationPressedEvent value)? notificationPressed,
  }) {
    return back?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(showNotificationsEvent value)? showNotifications,
    TResult Function(deleteNotificationEvent value)? deleteNotification,
    TResult Function(clearAllEvent value)? clearAll,
    TResult Function(backEvent value)? back,
    TResult Function(notificationPressedEvent value)? notificationPressed,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back(this);
    }
    return orElse();
  }
}

abstract class backEvent implements NotificationsEvent {
  const factory backEvent() = _$backEvent;
}

/// @nodoc
abstract class _$$notificationPressedEventCopyWith<$Res> {
  factory _$$notificationPressedEventCopyWith(_$notificationPressedEvent value,
          $Res Function(_$notificationPressedEvent) then) =
      __$$notificationPressedEventCopyWithImpl<$Res>;
  $Res call({String patientHash});
}

/// @nodoc
class __$$notificationPressedEventCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements _$$notificationPressedEventCopyWith<$Res> {
  __$$notificationPressedEventCopyWithImpl(_$notificationPressedEvent _value,
      $Res Function(_$notificationPressedEvent) _then)
      : super(_value, (v) => _then(v as _$notificationPressedEvent));

  @override
  _$notificationPressedEvent get _value =>
      super._value as _$notificationPressedEvent;

  @override
  $Res call({
    Object? patientHash = freezed,
  }) {
    return _then(_$notificationPressedEvent(
      patientHash == freezed
          ? _value.patientHash
          : patientHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$notificationPressedEvent implements notificationPressedEvent {
  const _$notificationPressedEvent(this.patientHash);

  @override
  final String patientHash;

  @override
  String toString() {
    return 'NotificationsEvent.notificationPressed(patientHash: $patientHash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$notificationPressedEvent &&
            const DeepCollectionEquality()
                .equals(other.patientHash, patientHash));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(patientHash));

  @JsonKey(ignore: true)
  @override
  _$$notificationPressedEventCopyWith<_$notificationPressedEvent>
      get copyWith =>
          __$$notificationPressedEventCopyWithImpl<_$notificationPressedEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String filter) showNotifications,
    required TResult Function(String hash) deleteNotification,
    required TResult Function() clearAll,
    required TResult Function() back,
    required TResult Function(String patientHash) notificationPressed,
  }) {
    return notificationPressed(patientHash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String filter)? showNotifications,
    TResult Function(String hash)? deleteNotification,
    TResult Function()? clearAll,
    TResult Function()? back,
    TResult Function(String patientHash)? notificationPressed,
  }) {
    return notificationPressed?.call(patientHash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String filter)? showNotifications,
    TResult Function(String hash)? deleteNotification,
    TResult Function()? clearAll,
    TResult Function()? back,
    TResult Function(String patientHash)? notificationPressed,
    required TResult orElse(),
  }) {
    if (notificationPressed != null) {
      return notificationPressed(patientHash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(showNotificationsEvent value) showNotifications,
    required TResult Function(deleteNotificationEvent value) deleteNotification,
    required TResult Function(clearAllEvent value) clearAll,
    required TResult Function(backEvent value) back,
    required TResult Function(notificationPressedEvent value)
        notificationPressed,
  }) {
    return notificationPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(showNotificationsEvent value)? showNotifications,
    TResult Function(deleteNotificationEvent value)? deleteNotification,
    TResult Function(clearAllEvent value)? clearAll,
    TResult Function(backEvent value)? back,
    TResult Function(notificationPressedEvent value)? notificationPressed,
  }) {
    return notificationPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(showNotificationsEvent value)? showNotifications,
    TResult Function(deleteNotificationEvent value)? deleteNotification,
    TResult Function(clearAllEvent value)? clearAll,
    TResult Function(backEvent value)? back,
    TResult Function(notificationPressedEvent value)? notificationPressed,
    required TResult orElse(),
  }) {
    if (notificationPressed != null) {
      return notificationPressed(this);
    }
    return orElse();
  }
}

abstract class notificationPressedEvent implements NotificationsEvent {
  const factory notificationPressedEvent(final String patientHash) =
      _$notificationPressedEvent;

  String get patientHash;
  @JsonKey(ignore: true)
  _$$notificationPressedEventCopyWith<_$notificationPressedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationsState {
  NotificationsStatus get notificationsStatus =>
      throw _privateConstructorUsedError;
  List<Notification> get notifications => throw _privateConstructorUsedError;
  String get colorFilter => throw _privateConstructorUsedError;
  String get patient => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationsStateCopyWith<NotificationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res>;
  $Res call(
      {NotificationsStatus notificationsStatus,
      List<Notification> notifications,
      String colorFilter,
      String patient,
      String errorMessage});
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  final NotificationsState _value;
  // ignore: unused_field
  final $Res Function(NotificationsState) _then;

  @override
  $Res call({
    Object? notificationsStatus = freezed,
    Object? notifications = freezed,
    Object? colorFilter = freezed,
    Object? patient = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      notificationsStatus: notificationsStatus == freezed
          ? _value.notificationsStatus
          : notificationsStatus // ignore: cast_nullable_to_non_nullable
              as NotificationsStatus,
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notification>,
      colorFilter: colorFilter == freezed
          ? _value.colorFilter
          : colorFilter // ignore: cast_nullable_to_non_nullable
              as String,
      patient: patient == freezed
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$notificationsStateCopyWith<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  factory _$$notificationsStateCopyWith(_$notificationsState value,
          $Res Function(_$notificationsState) then) =
      __$$notificationsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {NotificationsStatus notificationsStatus,
      List<Notification> notifications,
      String colorFilter,
      String patient,
      String errorMessage});
}

/// @nodoc
class __$$notificationsStateCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements _$$notificationsStateCopyWith<$Res> {
  __$$notificationsStateCopyWithImpl(
      _$notificationsState _value, $Res Function(_$notificationsState) _then)
      : super(_value, (v) => _then(v as _$notificationsState));

  @override
  _$notificationsState get _value => super._value as _$notificationsState;

  @override
  $Res call({
    Object? notificationsStatus = freezed,
    Object? notifications = freezed,
    Object? colorFilter = freezed,
    Object? patient = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$notificationsState(
      notificationsStatus: notificationsStatus == freezed
          ? _value.notificationsStatus
          : notificationsStatus // ignore: cast_nullable_to_non_nullable
              as NotificationsStatus,
      notifications: notifications == freezed
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notification>,
      colorFilter: colorFilter == freezed
          ? _value.colorFilter
          : colorFilter // ignore: cast_nullable_to_non_nullable
              as String,
      patient: patient == freezed
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$notificationsState implements notificationsState {
  const _$notificationsState(
      {required this.notificationsStatus,
      required final List<Notification> notifications,
      required this.colorFilter,
      required this.patient,
      required this.errorMessage})
      : _notifications = notifications;

  @override
  final NotificationsStatus notificationsStatus;
  final List<Notification> _notifications;
  @override
  List<Notification> get notifications {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  final String colorFilter;
  @override
  final String patient;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'NotificationsState(notificationsStatus: $notificationsStatus, notifications: $notifications, colorFilter: $colorFilter, patient: $patient, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$notificationsState &&
            const DeepCollectionEquality()
                .equals(other.notificationsStatus, notificationsStatus) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            const DeepCollectionEquality()
                .equals(other.colorFilter, colorFilter) &&
            const DeepCollectionEquality().equals(other.patient, patient) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(notificationsStatus),
      const DeepCollectionEquality().hash(_notifications),
      const DeepCollectionEquality().hash(colorFilter),
      const DeepCollectionEquality().hash(patient),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$notificationsStateCopyWith<_$notificationsState> get copyWith =>
      __$$notificationsStateCopyWithImpl<_$notificationsState>(
          this, _$identity);
}

abstract class notificationsState implements NotificationsState {
  const factory notificationsState(
      {required final NotificationsStatus notificationsStatus,
      required final List<Notification> notifications,
      required final String colorFilter,
      required final String patient,
      required final String errorMessage}) = _$notificationsState;

  @override
  NotificationsStatus get notificationsStatus;
  @override
  List<Notification> get notifications;
  @override
  String get colorFilter;
  @override
  String get patient;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$notificationsStateCopyWith<_$notificationsState> get copyWith =>
      throw _privateConstructorUsedError;
}
