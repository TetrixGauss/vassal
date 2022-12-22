// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Blog _$$_BlogFromJson(Map<String, dynamic> json) => _$_Blog(
      title: json['title'] as String,
      description: json['description'] as String,
      rel_path: json['rel_path'] as String,
      services: json['services'] as String,
      publish_at: json['publish_at'] as String,
    );

Map<String, dynamic> _$$_BlogToJson(_$_Blog instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'rel_path': instance.rel_path,
      'services': instance.services,
      'publish_at': instance.publish_at,
    };
