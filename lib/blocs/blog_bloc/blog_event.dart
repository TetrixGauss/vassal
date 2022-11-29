part of 'blog_bloc.dart';

@freezed
class BlogEvent with _$BlogEvent {
  const factory BlogEvent.initBlog() = initBlogEvent;

  const factory BlogEvent.goToBlog(Blog blog) = goToBlogEvent;

  const factory BlogEvent.showBlog() = showBlogEvent;

}