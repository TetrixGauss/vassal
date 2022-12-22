// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'log_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LogInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginEvent,
    required TResult Function(String email, String password) facebookLoginEvent,
    required TResult Function(String email, String password) googleLoginEvent,
    required TResult Function() forgotPassword,
    required TResult Function(String email, String password, String firstName,
            String lastName, String phone)
        register,
    required TResult Function() goToRegister,
    required TResult Function(String email) resetPassword,
    required TResult Function() back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loginEvent value) loginEvent,
    required TResult Function(facebookLoginEvent value) facebookLoginEvent,
    required TResult Function(googleLoginEvent value) googleLoginEvent,
    required TResult Function(forgotPassword value) forgotPassword,
    required TResult Function(register value) register,
    required TResult Function(goToRegister value) goToRegister,
    required TResult Function(resetPassword value) resetPassword,
    required TResult Function(back value) back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInEventCopyWith<$Res> {
  factory $LogInEventCopyWith(
          LogInEvent value, $Res Function(LogInEvent) then) =
      _$LogInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogInEventCopyWithImpl<$Res> implements $LogInEventCopyWith<$Res> {
  _$LogInEventCopyWithImpl(this._value, this._then);

  final LogInEvent _value;
  // ignore: unused_field
  final $Res Function(LogInEvent) _then;
}

/// @nodoc
abstract class _$$loginEventCopyWith<$Res> {
  factory _$$loginEventCopyWith(
          _$loginEvent value, $Res Function(_$loginEvent) then) =
      __$$loginEventCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$$loginEventCopyWithImpl<$Res> extends _$LogInEventCopyWithImpl<$Res>
    implements _$$loginEventCopyWith<$Res> {
  __$$loginEventCopyWithImpl(
      _$loginEvent _value, $Res Function(_$loginEvent) _then)
      : super(_value, (v) => _then(v as _$loginEvent));

  @override
  _$loginEvent get _value => super._value as _$loginEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$loginEvent(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$loginEvent implements loginEvent {
  const _$loginEvent(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LogInEvent.loginEvent(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loginEvent &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$loginEventCopyWith<_$loginEvent> get copyWith =>
      __$$loginEventCopyWithImpl<_$loginEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginEvent,
    required TResult Function(String email, String password) facebookLoginEvent,
    required TResult Function(String email, String password) googleLoginEvent,
    required TResult Function() forgotPassword,
    required TResult Function(String email, String password, String firstName,
            String lastName, String phone)
        register,
    required TResult Function() goToRegister,
    required TResult Function(String email) resetPassword,
    required TResult Function() back,
  }) {
    return loginEvent(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
  }) {
    return loginEvent?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (loginEvent != null) {
      return loginEvent(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loginEvent value) loginEvent,
    required TResult Function(facebookLoginEvent value) facebookLoginEvent,
    required TResult Function(googleLoginEvent value) googleLoginEvent,
    required TResult Function(forgotPassword value) forgotPassword,
    required TResult Function(register value) register,
    required TResult Function(goToRegister value) goToRegister,
    required TResult Function(resetPassword value) resetPassword,
    required TResult Function(back value) back,
  }) {
    return loginEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
  }) {
    return loginEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
    required TResult orElse(),
  }) {
    if (loginEvent != null) {
      return loginEvent(this);
    }
    return orElse();
  }
}

abstract class loginEvent implements LogInEvent {
  const factory loginEvent(final String email, final String password) =
      _$loginEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$loginEventCopyWith<_$loginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$facebookLoginEventCopyWith<$Res> {
  factory _$$facebookLoginEventCopyWith(_$facebookLoginEvent value,
          $Res Function(_$facebookLoginEvent) then) =
      __$$facebookLoginEventCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$$facebookLoginEventCopyWithImpl<$Res>
    extends _$LogInEventCopyWithImpl<$Res>
    implements _$$facebookLoginEventCopyWith<$Res> {
  __$$facebookLoginEventCopyWithImpl(
      _$facebookLoginEvent _value, $Res Function(_$facebookLoginEvent) _then)
      : super(_value, (v) => _then(v as _$facebookLoginEvent));

  @override
  _$facebookLoginEvent get _value => super._value as _$facebookLoginEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$facebookLoginEvent(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$facebookLoginEvent implements facebookLoginEvent {
  const _$facebookLoginEvent(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LogInEvent.facebookLoginEvent(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$facebookLoginEvent &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$facebookLoginEventCopyWith<_$facebookLoginEvent> get copyWith =>
      __$$facebookLoginEventCopyWithImpl<_$facebookLoginEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginEvent,
    required TResult Function(String email, String password) facebookLoginEvent,
    required TResult Function(String email, String password) googleLoginEvent,
    required TResult Function() forgotPassword,
    required TResult Function(String email, String password, String firstName,
            String lastName, String phone)
        register,
    required TResult Function() goToRegister,
    required TResult Function(String email) resetPassword,
    required TResult Function() back,
  }) {
    return facebookLoginEvent(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
  }) {
    return facebookLoginEvent?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (facebookLoginEvent != null) {
      return facebookLoginEvent(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loginEvent value) loginEvent,
    required TResult Function(facebookLoginEvent value) facebookLoginEvent,
    required TResult Function(googleLoginEvent value) googleLoginEvent,
    required TResult Function(forgotPassword value) forgotPassword,
    required TResult Function(register value) register,
    required TResult Function(goToRegister value) goToRegister,
    required TResult Function(resetPassword value) resetPassword,
    required TResult Function(back value) back,
  }) {
    return facebookLoginEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
  }) {
    return facebookLoginEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
    required TResult orElse(),
  }) {
    if (facebookLoginEvent != null) {
      return facebookLoginEvent(this);
    }
    return orElse();
  }
}

abstract class facebookLoginEvent implements LogInEvent {
  const factory facebookLoginEvent(final String email, final String password) =
      _$facebookLoginEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$facebookLoginEventCopyWith<_$facebookLoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$googleLoginEventCopyWith<$Res> {
  factory _$$googleLoginEventCopyWith(
          _$googleLoginEvent value, $Res Function(_$googleLoginEvent) then) =
      __$$googleLoginEventCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$$googleLoginEventCopyWithImpl<$Res>
    extends _$LogInEventCopyWithImpl<$Res>
    implements _$$googleLoginEventCopyWith<$Res> {
  __$$googleLoginEventCopyWithImpl(
      _$googleLoginEvent _value, $Res Function(_$googleLoginEvent) _then)
      : super(_value, (v) => _then(v as _$googleLoginEvent));

  @override
  _$googleLoginEvent get _value => super._value as _$googleLoginEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$googleLoginEvent(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$googleLoginEvent implements googleLoginEvent {
  const _$googleLoginEvent(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LogInEvent.googleLoginEvent(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$googleLoginEvent &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$googleLoginEventCopyWith<_$googleLoginEvent> get copyWith =>
      __$$googleLoginEventCopyWithImpl<_$googleLoginEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginEvent,
    required TResult Function(String email, String password) facebookLoginEvent,
    required TResult Function(String email, String password) googleLoginEvent,
    required TResult Function() forgotPassword,
    required TResult Function(String email, String password, String firstName,
            String lastName, String phone)
        register,
    required TResult Function() goToRegister,
    required TResult Function(String email) resetPassword,
    required TResult Function() back,
  }) {
    return googleLoginEvent(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
  }) {
    return googleLoginEvent?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (googleLoginEvent != null) {
      return googleLoginEvent(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loginEvent value) loginEvent,
    required TResult Function(facebookLoginEvent value) facebookLoginEvent,
    required TResult Function(googleLoginEvent value) googleLoginEvent,
    required TResult Function(forgotPassword value) forgotPassword,
    required TResult Function(register value) register,
    required TResult Function(goToRegister value) goToRegister,
    required TResult Function(resetPassword value) resetPassword,
    required TResult Function(back value) back,
  }) {
    return googleLoginEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
  }) {
    return googleLoginEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
    required TResult orElse(),
  }) {
    if (googleLoginEvent != null) {
      return googleLoginEvent(this);
    }
    return orElse();
  }
}

abstract class googleLoginEvent implements LogInEvent {
  const factory googleLoginEvent(final String email, final String password) =
      _$googleLoginEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$googleLoginEventCopyWith<_$googleLoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$forgotPasswordCopyWith<$Res> {
  factory _$$forgotPasswordCopyWith(
          _$forgotPassword value, $Res Function(_$forgotPassword) then) =
      __$$forgotPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$forgotPasswordCopyWithImpl<$Res>
    extends _$LogInEventCopyWithImpl<$Res>
    implements _$$forgotPasswordCopyWith<$Res> {
  __$$forgotPasswordCopyWithImpl(
      _$forgotPassword _value, $Res Function(_$forgotPassword) _then)
      : super(_value, (v) => _then(v as _$forgotPassword));

  @override
  _$forgotPassword get _value => super._value as _$forgotPassword;
}

/// @nodoc

class _$forgotPassword implements forgotPassword {
  const _$forgotPassword();

  @override
  String toString() {
    return 'LogInEvent.forgotPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$forgotPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginEvent,
    required TResult Function(String email, String password) facebookLoginEvent,
    required TResult Function(String email, String password) googleLoginEvent,
    required TResult Function() forgotPassword,
    required TResult Function(String email, String password, String firstName,
            String lastName, String phone)
        register,
    required TResult Function() goToRegister,
    required TResult Function(String email) resetPassword,
    required TResult Function() back,
  }) {
    return forgotPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
  }) {
    return forgotPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loginEvent value) loginEvent,
    required TResult Function(facebookLoginEvent value) facebookLoginEvent,
    required TResult Function(googleLoginEvent value) googleLoginEvent,
    required TResult Function(forgotPassword value) forgotPassword,
    required TResult Function(register value) register,
    required TResult Function(goToRegister value) goToRegister,
    required TResult Function(resetPassword value) resetPassword,
    required TResult Function(back value) back,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class forgotPassword implements LogInEvent {
  const factory forgotPassword() = _$forgotPassword;
}

/// @nodoc
abstract class _$$registerCopyWith<$Res> {
  factory _$$registerCopyWith(
          _$register value, $Res Function(_$register) then) =
      __$$registerCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      String firstName,
      String lastName,
      String phone});
}

/// @nodoc
class __$$registerCopyWithImpl<$Res> extends _$LogInEventCopyWithImpl<$Res>
    implements _$$registerCopyWith<$Res> {
  __$$registerCopyWithImpl(_$register _value, $Res Function(_$register) _then)
      : super(_value, (v) => _then(v as _$register));

  @override
  _$register get _value => super._value as _$register;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$register(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$register implements register {
  const _$register(
      this.email, this.password, this.firstName, this.lastName, this.phone);

  @override
  final String email;
  @override
  final String password;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phone;

  @override
  String toString() {
    return 'LogInEvent.register(email: $email, password: $password, firstName: $firstName, lastName: $lastName, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$register &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  _$$registerCopyWith<_$register> get copyWith =>
      __$$registerCopyWithImpl<_$register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginEvent,
    required TResult Function(String email, String password) facebookLoginEvent,
    required TResult Function(String email, String password) googleLoginEvent,
    required TResult Function() forgotPassword,
    required TResult Function(String email, String password, String firstName,
            String lastName, String phone)
        register,
    required TResult Function() goToRegister,
    required TResult Function(String email) resetPassword,
    required TResult Function() back,
  }) {
    return register(email, password, firstName, lastName, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
  }) {
    return register?.call(email, password, firstName, lastName, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(email, password, firstName, lastName, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loginEvent value) loginEvent,
    required TResult Function(facebookLoginEvent value) facebookLoginEvent,
    required TResult Function(googleLoginEvent value) googleLoginEvent,
    required TResult Function(forgotPassword value) forgotPassword,
    required TResult Function(register value) register,
    required TResult Function(goToRegister value) goToRegister,
    required TResult Function(resetPassword value) resetPassword,
    required TResult Function(back value) back,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class register implements LogInEvent {
  const factory register(
      final String email,
      final String password,
      final String firstName,
      final String lastName,
      final String phone) = _$register;

  String get email;
  String get password;
  String get firstName;
  String get lastName;
  String get phone;
  @JsonKey(ignore: true)
  _$$registerCopyWith<_$register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$goToRegisterCopyWith<$Res> {
  factory _$$goToRegisterCopyWith(
          _$goToRegister value, $Res Function(_$goToRegister) then) =
      __$$goToRegisterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$goToRegisterCopyWithImpl<$Res> extends _$LogInEventCopyWithImpl<$Res>
    implements _$$goToRegisterCopyWith<$Res> {
  __$$goToRegisterCopyWithImpl(
      _$goToRegister _value, $Res Function(_$goToRegister) _then)
      : super(_value, (v) => _then(v as _$goToRegister));

  @override
  _$goToRegister get _value => super._value as _$goToRegister;
}

/// @nodoc

class _$goToRegister implements goToRegister {
  const _$goToRegister();

  @override
  String toString() {
    return 'LogInEvent.goToRegister()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$goToRegister);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginEvent,
    required TResult Function(String email, String password) facebookLoginEvent,
    required TResult Function(String email, String password) googleLoginEvent,
    required TResult Function() forgotPassword,
    required TResult Function(String email, String password, String firstName,
            String lastName, String phone)
        register,
    required TResult Function() goToRegister,
    required TResult Function(String email) resetPassword,
    required TResult Function() back,
  }) {
    return goToRegister();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
  }) {
    return goToRegister?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (goToRegister != null) {
      return goToRegister();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loginEvent value) loginEvent,
    required TResult Function(facebookLoginEvent value) facebookLoginEvent,
    required TResult Function(googleLoginEvent value) googleLoginEvent,
    required TResult Function(forgotPassword value) forgotPassword,
    required TResult Function(register value) register,
    required TResult Function(goToRegister value) goToRegister,
    required TResult Function(resetPassword value) resetPassword,
    required TResult Function(back value) back,
  }) {
    return goToRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
  }) {
    return goToRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
    required TResult orElse(),
  }) {
    if (goToRegister != null) {
      return goToRegister(this);
    }
    return orElse();
  }
}

abstract class goToRegister implements LogInEvent {
  const factory goToRegister() = _$goToRegister;
}

/// @nodoc
abstract class _$$resetPasswordCopyWith<$Res> {
  factory _$$resetPasswordCopyWith(
          _$resetPassword value, $Res Function(_$resetPassword) then) =
      __$$resetPasswordCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$$resetPasswordCopyWithImpl<$Res> extends _$LogInEventCopyWithImpl<$Res>
    implements _$$resetPasswordCopyWith<$Res> {
  __$$resetPasswordCopyWithImpl(
      _$resetPassword _value, $Res Function(_$resetPassword) _then)
      : super(_value, (v) => _then(v as _$resetPassword));

  @override
  _$resetPassword get _value => super._value as _$resetPassword;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$resetPassword(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$resetPassword implements resetPassword {
  const _$resetPassword(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'LogInEvent.resetPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$resetPassword &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$resetPasswordCopyWith<_$resetPassword> get copyWith =>
      __$$resetPasswordCopyWithImpl<_$resetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginEvent,
    required TResult Function(String email, String password) facebookLoginEvent,
    required TResult Function(String email, String password) googleLoginEvent,
    required TResult Function() forgotPassword,
    required TResult Function(String email, String password, String firstName,
            String lastName, String phone)
        register,
    required TResult Function() goToRegister,
    required TResult Function(String email) resetPassword,
    required TResult Function() back,
  }) {
    return resetPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
  }) {
    return resetPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loginEvent value) loginEvent,
    required TResult Function(facebookLoginEvent value) facebookLoginEvent,
    required TResult Function(googleLoginEvent value) googleLoginEvent,
    required TResult Function(forgotPassword value) forgotPassword,
    required TResult Function(register value) register,
    required TResult Function(goToRegister value) goToRegister,
    required TResult Function(resetPassword value) resetPassword,
    required TResult Function(back value) back,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class resetPassword implements LogInEvent {
  const factory resetPassword(final String email) = _$resetPassword;

  String get email;
  @JsonKey(ignore: true)
  _$$resetPasswordCopyWith<_$resetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$backCopyWith<$Res> {
  factory _$$backCopyWith(_$back value, $Res Function(_$back) then) =
      __$$backCopyWithImpl<$Res>;
}

/// @nodoc
class __$$backCopyWithImpl<$Res> extends _$LogInEventCopyWithImpl<$Res>
    implements _$$backCopyWith<$Res> {
  __$$backCopyWithImpl(_$back _value, $Res Function(_$back) _then)
      : super(_value, (v) => _then(v as _$back));

  @override
  _$back get _value => super._value as _$back;
}

/// @nodoc

class _$back implements back {
  const _$back();

  @override
  String toString() {
    return 'LogInEvent.back()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$back);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginEvent,
    required TResult Function(String email, String password) facebookLoginEvent,
    required TResult Function(String email, String password) googleLoginEvent,
    required TResult Function() forgotPassword,
    required TResult Function(String email, String password, String firstName,
            String lastName, String phone)
        register,
    required TResult Function() goToRegister,
    required TResult Function(String email) resetPassword,
    required TResult Function() back,
  }) {
    return back();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
  }) {
    return back?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginEvent,
    TResult Function(String email, String password)? facebookLoginEvent,
    TResult Function(String email, String password)? googleLoginEvent,
    TResult Function()? forgotPassword,
    TResult Function(String email, String password, String firstName,
            String lastName, String phone)?
        register,
    TResult Function()? goToRegister,
    TResult Function(String email)? resetPassword,
    TResult Function()? back,
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
    required TResult Function(loginEvent value) loginEvent,
    required TResult Function(facebookLoginEvent value) facebookLoginEvent,
    required TResult Function(googleLoginEvent value) googleLoginEvent,
    required TResult Function(forgotPassword value) forgotPassword,
    required TResult Function(register value) register,
    required TResult Function(goToRegister value) goToRegister,
    required TResult Function(resetPassword value) resetPassword,
    required TResult Function(back value) back,
  }) {
    return back(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
  }) {
    return back?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loginEvent value)? loginEvent,
    TResult Function(facebookLoginEvent value)? facebookLoginEvent,
    TResult Function(googleLoginEvent value)? googleLoginEvent,
    TResult Function(forgotPassword value)? forgotPassword,
    TResult Function(register value)? register,
    TResult Function(goToRegister value)? goToRegister,
    TResult Function(resetPassword value)? resetPassword,
    TResult Function(back value)? back,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back(this);
    }
    return orElse();
  }
}

abstract class back implements LogInEvent {
  const factory back() = _$back;
}

/// @nodoc
mixin _$LogInState {
  LoginStatus get loginStatus => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogInStateCopyWith<LogInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInStateCopyWith<$Res> {
  factory $LogInStateCopyWith(
          LogInState value, $Res Function(LogInState) then) =
      _$LogInStateCopyWithImpl<$Res>;
  $Res call({LoginStatus loginStatus, String errorMessage});
}

/// @nodoc
class _$LogInStateCopyWithImpl<$Res> implements $LogInStateCopyWith<$Res> {
  _$LogInStateCopyWithImpl(this._value, this._then);

  final LogInState _value;
  // ignore: unused_field
  final $Res Function(LogInState) _then;

  @override
  $Res call({
    Object? loginStatus = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      loginStatus: loginStatus == freezed
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$logInStateCopyWith<$Res>
    implements $LogInStateCopyWith<$Res> {
  factory _$$logInStateCopyWith(
          _$logInState value, $Res Function(_$logInState) then) =
      __$$logInStateCopyWithImpl<$Res>;
  @override
  $Res call({LoginStatus loginStatus, String errorMessage});
}

/// @nodoc
class __$$logInStateCopyWithImpl<$Res> extends _$LogInStateCopyWithImpl<$Res>
    implements _$$logInStateCopyWith<$Res> {
  __$$logInStateCopyWithImpl(
      _$logInState _value, $Res Function(_$logInState) _then)
      : super(_value, (v) => _then(v as _$logInState));

  @override
  _$logInState get _value => super._value as _$logInState;

  @override
  $Res call({
    Object? loginStatus = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$logInState(
      loginStatus: loginStatus == freezed
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$logInState implements logInState {
  const _$logInState({required this.loginStatus, required this.errorMessage});

  @override
  final LoginStatus loginStatus;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'LogInState(loginStatus: $loginStatus, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$logInState &&
            const DeepCollectionEquality()
                .equals(other.loginStatus, loginStatus) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loginStatus),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$logInStateCopyWith<_$logInState> get copyWith =>
      __$$logInStateCopyWithImpl<_$logInState>(this, _$identity);
}

abstract class logInState implements LogInState {
  const factory logInState(
      {required final LoginStatus loginStatus,
      required final String errorMessage}) = _$logInState;

  @override
  LoginStatus get loginStatus;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$logInStateCopyWith<_$logInState> get copyWith =>
      throw _privateConstructorUsedError;
}
