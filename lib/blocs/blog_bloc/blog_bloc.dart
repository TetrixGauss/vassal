import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vassal/models/blog_model.dart';
import 'package:vassal/repositories/blog_repo.dart';
import 'package:vassal/utils/status.dart';

part 'blog_event.dart';

part 'blog_bloc.freezed.dart';

part 'blog_state.dart';

class BlogBloc extends Bloc<BlogEvent, BlogState> {
  late final BlogRepository _blogRepository;
  int takes = 100000000000000;

  BlogBloc(this._blogRepository) : super(BlogState.initial()) {
    //this._patientRepository, this._wearableRepository

    on<BlogEvent>((event, emit) async {
      await event.when(initBlog: () async{
        emit(state.copyWith(blogStatus: BlogStatus.blogLoading));
        emit(state.copyWith(blogStatus: BlogStatus.showBlogs, blogs: await _getBlogs()));

        }, goToBlog: (Blog blog) {
        emit(state.copyWith(blogStatus: BlogStatus.goToBlog, blog: blog));
      }, showBlog: () {
        emit(state.copyWith(blogStatus: BlogStatus.initBlog));
      }
      );
    });
  }


  _getBlogs() async {
    return await _blogRepository.getBlogs();
  }
}