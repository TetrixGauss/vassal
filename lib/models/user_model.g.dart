// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      name: json['name'] as String,
      roleId: json['roleId'] as int,
      email: json['email'] as String,
      phone: json['phone'] as String,
      coupon: json['coupon'] as String,
      points: json['points'] as String,
      email_verified_at: DateTime.parse(json['email_verified_at'] as String),
      remember_token: json['remember_token'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      updated_at: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'roleId': instance.roleId,
      'email': instance.email,
      'phone': instance.phone,
      'coupon': instance.coupon,
      'points': instance.points,
      'email_verified_at': instance.email_verified_at.toIso8601String(),
      'remember_token': instance.remember_token,
      'created_at': instance.created_at.toIso8601String(),
      'updated_at': instance.updated_at.toIso8601String(),
    };
