import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vassal/database/database.dart' as db;

part 'role_model.freezed.dart';
part 'role_model.g.dart';

@freezed
class Role with _$Role {
  factory Role({
    required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'slug') required String slug,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'created_at') required DateTime created_at,
    @JsonKey(name: 'updated_at') required DateTime updated_at,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

// factory Blog.fromDB(db.Blog user) {
//   return Blog(
//       id: user.id,
//       userHash: user.userHash,
//       firstname: user.firstname ,
//       lastname: user.lastname ,
//       secureKey: user.secureKey ,
//       userName: user.userName ,
//       approval: user.approval ,
//       email: user.email, token: user.token, hospital: user.hospital );
// }
}