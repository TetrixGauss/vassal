// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      rel_path: json['rel_path'] as String,
      price: json['price'] as String,
      point: json['point'] as int,
      duration: json['duration'] as String,
      services: json['services'] as String,
      staffs: json['staffs'] as String,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'rel_path': instance.rel_path,
      'price': instance.price,
      'point': instance.point,
      'duration': instance.duration,
      'services': instance.services,
      'staffs': instance.staffs,
    };
