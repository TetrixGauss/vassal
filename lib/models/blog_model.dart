import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vassal/database/database.dart' as db;

part 'blog_model.freezed.dart';
part 'blog_model.g.dart';

@freezed
class Blog with _$Blog {
  factory Blog({
    // required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'rel_path') required String rel_path,
    @JsonKey(name: 'services') required String services,
    @JsonKey(name: 'publish_at') required String publish_at,
    // @JsonKey(name: 'created_at') required DateTime created_at,
    // @JsonKey(name: 'updated_at') required DateTime updated_at,
  }) = _Blog;

  factory Blog.fromJson(Map<String, dynamic> json) => _$BlogFromJson(json);

  factory Blog.fromDB(db.Blog blog) {
    return Blog(
        // id: blog.id,
        title: blog.title,
        description: blog.description ,
        rel_path: blog.rel_path ,
        services: blog.services ,
        publish_at: blog.publish_at);
        // created_at: blog.created_at ,
        // updated_at: blog.updated_at );
  }
}