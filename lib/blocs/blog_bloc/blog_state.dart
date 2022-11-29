part of 'blog_bloc.dart';

@freezed
class BlogState with _$BlogState {
  factory BlogState.initial() {
    return BlogState(blogStatus: BlogStatus.showBlogs, errorMessage: "", blog: null, blogs: [],);
  }

  const factory BlogState({
    required BlogStatus blogStatus,
    required String errorMessage,
    required Blog? blog,
    required List<Blog> blogs,
  }) = blogState;
}