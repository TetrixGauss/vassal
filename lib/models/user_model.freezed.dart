// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'roleId')
  int get roleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon')
  String get coupon => throw _privateConstructorUsedError;
  @JsonKey(name: 'points')
  String get points => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  DateTime get email_verified_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'remember_token')
  String get remember_token => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'roleId') int roleId,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'coupon') String coupon,
      @JsonKey(name: 'points') String points,
      @JsonKey(name: 'email_verified_at') DateTime email_verified_at,
      @JsonKey(name: 'remember_token') String remember_token,
      @JsonKey(name: 'created_at') DateTime created_at,
      @JsonKey(name: 'updated_at') DateTime updated_at});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? roleId = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? coupon = freezed,
    Object? points = freezed,
    Object? email_verified_at = freezed,
    Object? remember_token = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: roleId == freezed
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      coupon: coupon == freezed
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String,
      email_verified_at: email_verified_at == freezed
          ? _value.email_verified_at
          : email_verified_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remember_token: remember_token == freezed
          ? _value.remember_token
          : remember_token // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'roleId') int roleId,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'coupon') String coupon,
      @JsonKey(name: 'points') String points,
      @JsonKey(name: 'email_verified_at') DateTime email_verified_at,
      @JsonKey(name: 'remember_token') String remember_token,
      @JsonKey(name: 'created_at') DateTime created_at,
      @JsonKey(name: 'updated_at') DateTime updated_at});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? roleId = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? coupon = freezed,
    Object? points = freezed,
    Object? email_verified_at = freezed,
    Object? remember_token = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: roleId == freezed
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      coupon: coupon == freezed
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String,
      email_verified_at: email_verified_at == freezed
          ? _value.email_verified_at
          : email_verified_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remember_token: remember_token == freezed
          ? _value.remember_token
          : remember_token // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'roleId') required this.roleId,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'coupon') required this.coupon,
      @JsonKey(name: 'points') required this.points,
      @JsonKey(name: 'email_verified_at') required this.email_verified_at,
      @JsonKey(name: 'remember_token') required this.remember_token,
      @JsonKey(name: 'created_at') required this.created_at,
      @JsonKey(name: 'updated_at') required this.updated_at});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'roleId')
  final int roleId;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'coupon')
  final String coupon;
  @override
  @JsonKey(name: 'points')
  final String points;
  @override
  @JsonKey(name: 'email_verified_at')
  final DateTime email_verified_at;
  @override
  @JsonKey(name: 'remember_token')
  final String remember_token;
  @override
  @JsonKey(name: 'created_at')
  final DateTime created_at;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updated_at;

  @override
  String toString() {
    return 'User(id: $id, name: $name, roleId: $roleId, email: $email, phone: $phone, coupon: $coupon, points: $points, email_verified_at: $email_verified_at, remember_token: $remember_token, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.roleId, roleId) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.coupon, coupon) &&
            const DeepCollectionEquality().equals(other.points, points) &&
            const DeepCollectionEquality()
                .equals(other.email_verified_at, email_verified_at) &&
            const DeepCollectionEquality()
                .equals(other.remember_token, remember_token) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(roleId),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(coupon),
      const DeepCollectionEquality().hash(points),
      const DeepCollectionEquality().hash(email_verified_at),
      const DeepCollectionEquality().hash(remember_token),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(updated_at));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {required final int id,
      @JsonKey(name: 'name')
          required final String name,
      @JsonKey(name: 'roleId')
          required final int roleId,
      @JsonKey(name: 'email')
          required final String email,
      @JsonKey(name: 'phone')
          required final String phone,
      @JsonKey(name: 'coupon')
          required final String coupon,
      @JsonKey(name: 'points')
          required final String points,
      @JsonKey(name: 'email_verified_at')
          required final DateTime email_verified_at,
      @JsonKey(name: 'remember_token')
          required final String remember_token,
      @JsonKey(name: 'created_at')
          required final DateTime created_at,
      @JsonKey(name: 'updated_at')
          required final DateTime updated_at}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'roleId')
  int get roleId;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'coupon')
  String get coupon;
  @override
  @JsonKey(name: 'points')
  String get points;
  @override
  @JsonKey(name: 'email_verified_at')
  DateTime get email_verified_at;
  @override
  @JsonKey(name: 'remember_token')
  String get remember_token;
  @override
  @JsonKey(name: 'created_at')
  DateTime get created_at;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
