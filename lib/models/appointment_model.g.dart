// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Appointment _$$_AppointmentFromJson(Map<String, dynamic> json) =>
    _$_Appointment(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      rel_path: json['rel_path'] as String,
      blogs_count: json['blogs_count'] as int,
      categories_count: json['categories_count'] as int,
      staffs_count: json['staffs_count'] as int,
      blogs: json['blogs'] as String,
      categories: json['categories'] as String,
      staffs: json['staffs'] as String,
    );

Map<String, dynamic> _$$_AppointmentToJson(_$_Appointment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'rel_path': instance.rel_path,
      'blogs_count': instance.blogs_count,
      'categories_count': instance.categories_count,
      'staffs_count': instance.staffs_count,
      'blogs': instance.blogs,
      'categories': instance.categories,
      'staffs': instance.staffs,
    };
