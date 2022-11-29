import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vassal/database/database.dart' as db;

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  factory User({
    required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'roleId') required int roleId,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'coupon') required String coupon,
    @JsonKey(name: 'points') required String points,
    @JsonKey(name: 'email_verified_at') required DateTime email_verified_at,
    @JsonKey(name: 'remember_token') required String remember_token,
    @JsonKey(name: 'created_at') required DateTime created_at,
    @JsonKey(name: 'updated_at') required DateTime updated_at,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.fromDB(db.User user) {
    return User(
        id: user.id,
        name: user.name,
        roleId: user.roleId,
        email: user.email,
        phone: user.phone,
        coupon: user.coupon,
        points: user.points,
        email_verified_at: user.email_verified_at,
        remember_token: user.remember_token,
        created_at: user.created_at,
        updated_at: user.updated_at);
  }

  factory User.newUser() {
    return User(
        id: 0,
        name: "",
        roleId: 0,
        email: "",
        phone: "",
        coupon: "",
        points: "",
        email_verified_at: DateTime.now(),
        remember_token: "",
        created_at: DateTime.now(),
        updated_at: DateTime.now());
  }
}