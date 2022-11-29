import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_model.freezed.dart';

part 'service_model.g.dart';

@freezed
class Service with _$Service {
  factory Service({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    // @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'rel_path') required String rel_path,
    @JsonKey(name: 'blogs_count') required int? blogs_count,
    @JsonKey(name: 'categories_count') required int? categories_count,
    @JsonKey(name: 'staffs_count') required int? staffs_count,
    @JsonKey(name: 'blogs') required String blogs,
    @JsonKey(name: 'categories') required String categories,
    @JsonKey(name: 'staffs') required String staffs,
  }) = _Service;

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);

  // factory Service.fromDB(db.User user) {
  //   return Service(
  //       id: user.id,
  //       name: user.name,
  //       roleId: user.roleId ,
  //       email: user.email ,
  //       coupon: user.coupon ,
  //       points: user.points ,
  //       email_verified_at: user.email_verified_at ,
  //       remember_token: user.remember_token ,
  //       created_at: user.created_at, updated_at: user.updated_at);
  // }

  factory Service.newService() {
    return Service(
        id: 0,
        title: "",
        // description: "",
        rel_path: "",
        blogs_count: 0,
        categories_count: 0,
        staffs_count: 0,
        blogs: "",
        categories: "",
        staffs: "");
  }
}
