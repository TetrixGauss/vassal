// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'blog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBlog,
    required TResult Function(Blog blog) goToBlog,
    required TResult Function() showBlog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initBlog,
    TResult Function(Blog blog)? goToBlog,
    TResult Function()? showBlog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBlog,
    TResult Function(Blog blog)? goToBlog,
    TResult Function()? showBlog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initBlogEvent value) initBlog,
    required TResult Function(goToBlogEvent value) goToBlog,
    required TResult Function(showBlogEvent value) showBlog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(initBlogEvent value)? initBlog,
    TResult Function(goToBlogEvent value)? goToBlog,
    TResult Function(showBlogEvent value)? showBlog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initBlogEvent value)? initBlog,
    TResult Function(goToBlogEvent value)? goToBlog,
    TResult Function(showBlogEvent value)? showBlog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogEventCopyWith<$Res> {
  factory $BlogEventCopyWith(BlogEvent value, $Res Function(BlogEvent) then) =
      _$BlogEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlogEventCopyWithImpl<$Res> implements $BlogEventCopyWith<$Res> {
  _$BlogEventCopyWithImpl(this._value, this._then);

  final BlogEvent _value;
  // ignore: unused_field
  final $Res Function(BlogEvent) _then;
}

/// @nodoc
abstract class _$$initBlogEventCopyWith<$Res> {
  factory _$$initBlogEventCopyWith(
          _$initBlogEvent value, $Res Function(_$initBlogEvent) then) =
      __$$initBlogEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initBlogEventCopyWithImpl<$Res> extends _$BlogEventCopyWithImpl<$Res>
    implements _$$initBlogEventCopyWith<$Res> {
  __$$initBlogEventCopyWithImpl(
      _$initBlogEvent _value, $Res Function(_$initBlogEvent) _then)
      : super(_value, (v) => _then(v as _$initBlogEvent));

  @override
  _$initBlogEvent get _value => super._value as _$initBlogEvent;
}

/// @nodoc

class _$initBlogEvent implements initBlogEvent {
  const _$initBlogEvent();

  @override
  String toString() {
    return 'BlogEvent.initBlog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initBlogEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBlog,
    required TResult Function(Blog blog) goToBlog,
    required TResult Function() showBlog,
  }) {
    return initBlog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initBlog,
    TResult Function(Blog blog)? goToBlog,
    TResult Function()? showBlog,
  }) {
    return initBlog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBlog,
    TResult Function(Blog blog)? goToBlog,
    TResult Function()? showBlog,
    required TResult orElse(),
  }) {
    if (initBlog != null) {
      return initBlog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initBlogEvent value) initBlog,
    required TResult Function(goToBlogEvent value) goToBlog,
    required TResult Function(showBlogEvent value) showBlog,
  }) {
    return initBlog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(initBlogEvent value)? initBlog,
    TResult Function(goToBlogEvent value)? goToBlog,
    TResult Function(showBlogEvent value)? showBlog,
  }) {
    return initBlog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initBlogEvent value)? initBlog,
    TResult Function(goToBlogEvent value)? goToBlog,
    TResult Function(showBlogEvent value)? showBlog,
    required TResult orElse(),
  }) {
    if (initBlog != null) {
      return initBlog(this);
    }
    return orElse();
  }
}

abstract class initBlogEvent implements BlogEvent {
  const factory initBlogEvent() = _$initBlogEvent;
}

/// @nodoc
abstract class _$$goToBlogEventCopyWith<$Res> {
  factory _$$goToBlogEventCopyWith(
          _$goToBlogEvent value, $Res Function(_$goToBlogEvent) then) =
      __$$goToBlogEventCopyWithImpl<$Res>;
  $Res call({Blog blog});

  $BlogCopyWith<$Res> get blog;
}

/// @nodoc
class __$$goToBlogEventCopyWithImpl<$Res> extends _$BlogEventCopyWithImpl<$Res>
    implements _$$goToBlogEventCopyWith<$Res> {
  __$$goToBlogEventCopyWithImpl(
      _$goToBlogEvent _value, $Res Function(_$goToBlogEvent) _then)
      : super(_value, (v) => _then(v as _$goToBlogEvent));

  @override
  _$goToBlogEvent get _value => super._value as _$goToBlogEvent;

  @override
  $Res call({
    Object? blog = freezed,
  }) {
    return _then(_$goToBlogEvent(
      blog == freezed
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as Blog,
    ));
  }

  @override
  $BlogCopyWith<$Res> get blog {
    return $BlogCopyWith<$Res>(_value.blog, (value) {
      return _then(_value.copyWith(blog: value));
    });
  }
}

/// @nodoc

class _$goToBlogEvent implements goToBlogEvent {
  const _$goToBlogEvent(this.blog);

  @override
  final Blog blog;

  @override
  String toString() {
    return 'BlogEvent.goToBlog(blog: $blog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$goToBlogEvent &&
            const DeepCollectionEquality().equals(other.blog, blog));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(blog));

  @JsonKey(ignore: true)
  @override
  _$$goToBlogEventCopyWith<_$goToBlogEvent> get copyWith =>
      __$$goToBlogEventCopyWithImpl<_$goToBlogEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBlog,
    required TResult Function(Blog blog) goToBlog,
    required TResult Function() showBlog,
  }) {
    return goToBlog(blog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initBlog,
    TResult Function(Blog blog)? goToBlog,
    TResult Function()? showBlog,
  }) {
    return goToBlog?.call(blog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBlog,
    TResult Function(Blog blog)? goToBlog,
    TResult Function()? showBlog,
    required TResult orElse(),
  }) {
    if (goToBlog != null) {
      return goToBlog(blog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initBlogEvent value) initBlog,
    required TResult Function(goToBlogEvent value) goToBlog,
    required TResult Function(showBlogEvent value) showBlog,
  }) {
    return goToBlog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(initBlogEvent value)? initBlog,
    TResult Function(goToBlogEvent value)? goToBlog,
    TResult Function(showBlogEvent value)? showBlog,
  }) {
    return goToBlog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initBlogEvent value)? initBlog,
    TResult Function(goToBlogEvent value)? goToBlog,
    TResult Function(showBlogEvent value)? showBlog,
    required TResult orElse(),
  }) {
    if (goToBlog != null) {
      return goToBlog(this);
    }
    return orElse();
  }
}

abstract class goToBlogEvent implements BlogEvent {
  const factory goToBlogEvent(final Blog blog) = _$goToBlogEvent;

  Blog get blog;
  @JsonKey(ignore: true)
  _$$goToBlogEventCopyWith<_$goToBlogEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$showBlogEventCopyWith<$Res> {
  factory _$$showBlogEventCopyWith(
          _$showBlogEvent value, $Res Function(_$showBlogEvent) then) =
      __$$showBlogEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$showBlogEventCopyWithImpl<$Res> extends _$BlogEventCopyWithImpl<$Res>
    implements _$$showBlogEventCopyWith<$Res> {
  __$$showBlogEventCopyWithImpl(
      _$showBlogEvent _value, $Res Function(_$showBlogEvent) _then)
      : super(_value, (v) => _then(v as _$showBlogEvent));

  @override
  _$showBlogEvent get _value => super._value as _$showBlogEvent;
}

/// @nodoc

class _$showBlogEvent implements showBlogEvent {
  const _$showBlogEvent();

  @override
  String toString() {
    return 'BlogEvent.showBlog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$showBlogEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initBlog,
    required TResult Function(Blog blog) goToBlog,
    required TResult Function() showBlog,
  }) {
    return showBlog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initBlog,
    TResult Function(Blog blog)? goToBlog,
    TResult Function()? showBlog,
  }) {
    return showBlog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initBlog,
    TResult Function(Blog blog)? goToBlog,
    TResult Function()? showBlog,
    required TResult orElse(),
  }) {
    if (showBlog != null) {
      return showBlog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initBlogEvent value) initBlog,
    required TResult Function(goToBlogEvent value) goToBlog,
    required TResult Function(showBlogEvent value) showBlog,
  }) {
    return showBlog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(initBlogEvent value)? initBlog,
    TResult Function(goToBlogEvent value)? goToBlog,
    TResult Function(showBlogEvent value)? showBlog,
  }) {
    return showBlog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initBlogEvent value)? initBlog,
    TResult Function(goToBlogEvent value)? goToBlog,
    TResult Function(showBlogEvent value)? showBlog,
    required TResult orElse(),
  }) {
    if (showBlog != null) {
      return showBlog(this);
    }
    return orElse();
  }
}

abstract class showBlogEvent implements BlogEvent {
  const factory showBlogEvent() = _$showBlogEvent;
}

/// @nodoc
mixin _$BlogState {
  BlogStatus get blogStatus => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  Blog? get blog => throw _privateConstructorUsedError;
  List<Blog> get blogs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlogStateCopyWith<BlogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogStateCopyWith<$Res> {
  factory $BlogStateCopyWith(BlogState value, $Res Function(BlogState) then) =
      _$BlogStateCopyWithImpl<$Res>;
  $Res call(
      {BlogStatus blogStatus,
      String errorMessage,
      Blog? blog,
      List<Blog> blogs});

  $BlogCopyWith<$Res>? get blog;
}

/// @nodoc
class _$BlogStateCopyWithImpl<$Res> implements $BlogStateCopyWith<$Res> {
  _$BlogStateCopyWithImpl(this._value, this._then);

  final BlogState _value;
  // ignore: unused_field
  final $Res Function(BlogState) _then;

  @override
  $Res call({
    Object? blogStatus = freezed,
    Object? errorMessage = freezed,
    Object? blog = freezed,
    Object? blogs = freezed,
  }) {
    return _then(_value.copyWith(
      blogStatus: blogStatus == freezed
          ? _value.blogStatus
          : blogStatus // ignore: cast_nullable_to_non_nullable
              as BlogStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      blog: blog == freezed
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as Blog?,
      blogs: blogs == freezed
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
    ));
  }

  @override
  $BlogCopyWith<$Res>? get blog {
    if (_value.blog == null) {
      return null;
    }

    return $BlogCopyWith<$Res>(_value.blog!, (value) {
      return _then(_value.copyWith(blog: value));
    });
  }
}

/// @nodoc
abstract class _$$blogStateCopyWith<$Res> implements $BlogStateCopyWith<$Res> {
  factory _$$blogStateCopyWith(
          _$blogState value, $Res Function(_$blogState) then) =
      __$$blogStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlogStatus blogStatus,
      String errorMessage,
      Blog? blog,
      List<Blog> blogs});

  @override
  $BlogCopyWith<$Res>? get blog;
}

/// @nodoc
class __$$blogStateCopyWithImpl<$Res> extends _$BlogStateCopyWithImpl<$Res>
    implements _$$blogStateCopyWith<$Res> {
  __$$blogStateCopyWithImpl(
      _$blogState _value, $Res Function(_$blogState) _then)
      : super(_value, (v) => _then(v as _$blogState));

  @override
  _$blogState get _value => super._value as _$blogState;

  @override
  $Res call({
    Object? blogStatus = freezed,
    Object? errorMessage = freezed,
    Object? blog = freezed,
    Object? blogs = freezed,
  }) {
    return _then(_$blogState(
      blogStatus: blogStatus == freezed
          ? _value.blogStatus
          : blogStatus // ignore: cast_nullable_to_non_nullable
              as BlogStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      blog: blog == freezed
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as Blog?,
      blogs: blogs == freezed
          ? _value._blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
    ));
  }
}

/// @nodoc

class _$blogState implements blogState {
  const _$blogState(
      {required this.blogStatus,
      required this.errorMessage,
      required this.blog,
      required final List<Blog> blogs})
      : _blogs = blogs;

  @override
  final BlogStatus blogStatus;
  @override
  final String errorMessage;
  @override
  final Blog? blog;
  final List<Blog> _blogs;
  @override
  List<Blog> get blogs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blogs);
  }

  @override
  String toString() {
    return 'BlogState(blogStatus: $blogStatus, errorMessage: $errorMessage, blog: $blog, blogs: $blogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$blogState &&
            const DeepCollectionEquality()
                .equals(other.blogStatus, blogStatus) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.blog, blog) &&
            const DeepCollectionEquality().equals(other._blogs, _blogs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(blogStatus),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(blog),
      const DeepCollectionEquality().hash(_blogs));

  @JsonKey(ignore: true)
  @override
  _$$blogStateCopyWith<_$blogState> get copyWith =>
      __$$blogStateCopyWithImpl<_$blogState>(this, _$identity);
}

abstract class blogState implements BlogState {
  const factory blogState(
      {required final BlogStatus blogStatus,
      required final String errorMessage,
      required final Blog? blog,
      required final List<Blog> blogs}) = _$blogState;

  @override
  BlogStatus get blogStatus;
  @override
  String get errorMessage;
  @override
  Blog? get blog;
  @override
  List<Blog> get blogs;
  @override
  @JsonKey(ignore: true)
  _$$blogStateCopyWith<_$blogState> get copyWith =>
      throw _privateConstructorUsedError;
}
