import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';

part 'category_model.g.dart';

@freezed
class Category with _$Category{
  factory Category({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'rel_path') required String rel_path,
    @JsonKey(name: 'price') required String price,
    @JsonKey(name: 'point') required int point,
    @JsonKey(name: 'duration') required String duration,
    @JsonKey(name: 'services') required String services,
    @JsonKey(name: 'staffs') required String staffs,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  factory Category.newCategory() {
    return Category(
        id: 0,
        title: "",
        description: "",
        rel_path: "",
        price: "",
        point: 0,
        duration: "",
        services: "",
        staffs: "");
  }
}