// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'blog_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Blog _$BlogFromJson(Map<String, dynamic> json) {
  return _Blog.fromJson(json);
}

/// @nodoc
mixin _$Blog {
// required int id,
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'rel_path')
  String get rel_path => throw _privateConstructorUsedError;
  @JsonKey(name: 'services')
  String get services => throw _privateConstructorUsedError;
  @JsonKey(name: 'publish_at')
  String get publish_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogCopyWith<Blog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogCopyWith<$Res> {
  factory $BlogCopyWith(Blog value, $Res Function(Blog) then) =
      _$BlogCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'rel_path') String rel_path,
      @JsonKey(name: 'services') String services,
      @JsonKey(name: 'publish_at') String publish_at});
}

/// @nodoc
class _$BlogCopyWithImpl<$Res> implements $BlogCopyWith<$Res> {
  _$BlogCopyWithImpl(this._value, this._then);

  final Blog _value;
  // ignore: unused_field
  final $Res Function(Blog) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? rel_path = freezed,
    Object? services = freezed,
    Object? publish_at = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rel_path: rel_path == freezed
          ? _value.rel_path
          : rel_path // ignore: cast_nullable_to_non_nullable
              as String,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as String,
      publish_at: publish_at == freezed
          ? _value.publish_at
          : publish_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BlogCopyWith<$Res> implements $BlogCopyWith<$Res> {
  factory _$$_BlogCopyWith(_$_Blog value, $Res Function(_$_Blog) then) =
      __$$_BlogCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'rel_path') String rel_path,
      @JsonKey(name: 'services') String services,
      @JsonKey(name: 'publish_at') String publish_at});
}

/// @nodoc
class __$$_BlogCopyWithImpl<$Res> extends _$BlogCopyWithImpl<$Res>
    implements _$$_BlogCopyWith<$Res> {
  __$$_BlogCopyWithImpl(_$_Blog _value, $Res Function(_$_Blog) _then)
      : super(_value, (v) => _then(v as _$_Blog));

  @override
  _$_Blog get _value => super._value as _$_Blog;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? rel_path = freezed,
    Object? services = freezed,
    Object? publish_at = freezed,
  }) {
    return _then(_$_Blog(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rel_path: rel_path == freezed
          ? _value.rel_path
          : rel_path // ignore: cast_nullable_to_non_nullable
              as String,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as String,
      publish_at: publish_at == freezed
          ? _value.publish_at
          : publish_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Blog implements _Blog {
  _$_Blog(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'rel_path') required this.rel_path,
      @JsonKey(name: 'services') required this.services,
      @JsonKey(name: 'publish_at') required this.publish_at});

  factory _$_Blog.fromJson(Map<String, dynamic> json) => _$$_BlogFromJson(json);

// required int id,
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'rel_path')
  final String rel_path;
  @override
  @JsonKey(name: 'services')
  final String services;
  @override
  @JsonKey(name: 'publish_at')
  final String publish_at;

  @override
  String toString() {
    return 'Blog(title: $title, description: $description, rel_path: $rel_path, services: $services, publish_at: $publish_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Blog &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.rel_path, rel_path) &&
            const DeepCollectionEquality().equals(other.services, services) &&
            const DeepCollectionEquality()
                .equals(other.publish_at, publish_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(rel_path),
      const DeepCollectionEquality().hash(services),
      const DeepCollectionEquality().hash(publish_at));

  @JsonKey(ignore: true)
  @override
  _$$_BlogCopyWith<_$_Blog> get copyWith =>
      __$$_BlogCopyWithImpl<_$_Blog>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlogToJson(
      this,
    );
  }
}

abstract class _Blog implements Blog {
  factory _Blog(
      {@JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'description') required final String description,
      @JsonKey(name: 'rel_path') required final String rel_path,
      @JsonKey(name: 'services') required final String services,
      @JsonKey(name: 'publish_at') required final String publish_at}) = _$_Blog;

  factory _Blog.fromJson(Map<String, dynamic> json) = _$_Blog.fromJson;

  @override // required int id,
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'rel_path')
  String get rel_path;
  @override
  @JsonKey(name: 'services')
  String get services;
  @override
  @JsonKey(name: 'publish_at')
  String get publish_at;
  @override
  @JsonKey(ignore: true)
  _$$_BlogCopyWith<_$_Blog> get copyWith => throw _privateConstructorUsedError;
}
