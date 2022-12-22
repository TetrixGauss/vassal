// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class User extends DataClass implements Insertable<User> {
  final int id;
  final String name;
  final int roleId;
  final String email;
  final String phone;
  final String coupon;
  final String points;
  final DateTime email_verified_at;
  final String remember_token;
  final DateTime created_at;
  final DateTime updated_at;
  User(
      {required this.id,
      required this.name,
      required this.roleId,
      required this.email,
      required this.phone,
      required this.coupon,
      required this.points,
      required this.email_verified_at,
      required this.remember_token,
      required this.created_at,
      required this.updated_at});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return User(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      roleId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}role_id'])!,
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email'])!,
      phone: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}phone'])!,
      coupon: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}coupon'])!,
      points: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}points'])!,
      email_verified_at: const DateTimeType().mapFromDatabaseResponse(
          data['${effectivePrefix}email_verified_at'])!,
      remember_token: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}remember_token'])!,
      created_at: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at'])!,
      updated_at: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['role_id'] = Variable<int>(roleId);
    map['email'] = Variable<String>(email);
    map['phone'] = Variable<String>(phone);
    map['coupon'] = Variable<String>(coupon);
    map['points'] = Variable<String>(points);
    map['email_verified_at'] = Variable<DateTime>(email_verified_at);
    map['remember_token'] = Variable<String>(remember_token);
    map['created_at'] = Variable<DateTime>(created_at);
    map['updated_at'] = Variable<DateTime>(updated_at);
    return map;
  }

  UserTableCompanion toCompanion(bool nullToAbsent) {
    return UserTableCompanion(
      id: Value(id),
      name: Value(name),
      roleId: Value(roleId),
      email: Value(email),
      phone: Value(phone),
      coupon: Value(coupon),
      points: Value(points),
      email_verified_at: Value(email_verified_at),
      remember_token: Value(remember_token),
      created_at: Value(created_at),
      updated_at: Value(updated_at),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      roleId: serializer.fromJson<int>(json['roleId']),
      email: serializer.fromJson<String>(json['email']),
      phone: serializer.fromJson<String>(json['phone']),
      coupon: serializer.fromJson<String>(json['coupon']),
      points: serializer.fromJson<String>(json['points']),
      email_verified_at:
          serializer.fromJson<DateTime>(json['email_verified_at']),
      remember_token: serializer.fromJson<String>(json['remember_token']),
      created_at: serializer.fromJson<DateTime>(json['created_at']),
      updated_at: serializer.fromJson<DateTime>(json['updated_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'roleId': serializer.toJson<int>(roleId),
      'email': serializer.toJson<String>(email),
      'phone': serializer.toJson<String>(phone),
      'coupon': serializer.toJson<String>(coupon),
      'points': serializer.toJson<String>(points),
      'email_verified_at': serializer.toJson<DateTime>(email_verified_at),
      'remember_token': serializer.toJson<String>(remember_token),
      'created_at': serializer.toJson<DateTime>(created_at),
      'updated_at': serializer.toJson<DateTime>(updated_at),
    };
  }

  User copyWith(
          {int? id,
          String? name,
          int? roleId,
          String? email,
          String? phone,
          String? coupon,
          String? points,
          DateTime? email_verified_at,
          String? remember_token,
          DateTime? created_at,
          DateTime? updated_at}) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        roleId: roleId ?? this.roleId,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        coupon: coupon ?? this.coupon,
        points: points ?? this.points,
        email_verified_at: email_verified_at ?? this.email_verified_at,
        remember_token: remember_token ?? this.remember_token,
        created_at: created_at ?? this.created_at,
        updated_at: updated_at ?? this.updated_at,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('roleId: $roleId, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('coupon: $coupon, ')
          ..write('points: $points, ')
          ..write('email_verified_at: $email_verified_at, ')
          ..write('remember_token: $remember_token, ')
          ..write('created_at: $created_at, ')
          ..write('updated_at: $updated_at')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, roleId, email, phone, coupon,
      points, email_verified_at, remember_token, created_at, updated_at);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.name == this.name &&
          other.roleId == this.roleId &&
          other.email == this.email &&
          other.phone == this.phone &&
          other.coupon == this.coupon &&
          other.points == this.points &&
          other.email_verified_at == this.email_verified_at &&
          other.remember_token == this.remember_token &&
          other.created_at == this.created_at &&
          other.updated_at == this.updated_at);
}

class UserTableCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> roleId;
  final Value<String> email;
  final Value<String> phone;
  final Value<String> coupon;
  final Value<String> points;
  final Value<DateTime> email_verified_at;
  final Value<String> remember_token;
  final Value<DateTime> created_at;
  final Value<DateTime> updated_at;
  const UserTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.roleId = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.coupon = const Value.absent(),
    this.points = const Value.absent(),
    this.email_verified_at = const Value.absent(),
    this.remember_token = const Value.absent(),
    this.created_at = const Value.absent(),
    this.updated_at = const Value.absent(),
  });
  UserTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int roleId,
    required String email,
    required String phone,
    required String coupon,
    required String points,
    required DateTime email_verified_at,
    required String remember_token,
    required DateTime created_at,
    required DateTime updated_at,
  })  : name = Value(name),
        roleId = Value(roleId),
        email = Value(email),
        phone = Value(phone),
        coupon = Value(coupon),
        points = Value(points),
        email_verified_at = Value(email_verified_at),
        remember_token = Value(remember_token),
        created_at = Value(created_at),
        updated_at = Value(updated_at);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? roleId,
    Expression<String>? email,
    Expression<String>? phone,
    Expression<String>? coupon,
    Expression<String>? points,
    Expression<DateTime>? email_verified_at,
    Expression<String>? remember_token,
    Expression<DateTime>? created_at,
    Expression<DateTime>? updated_at,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (roleId != null) 'role_id': roleId,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (coupon != null) 'coupon': coupon,
      if (points != null) 'points': points,
      if (email_verified_at != null) 'email_verified_at': email_verified_at,
      if (remember_token != null) 'remember_token': remember_token,
      if (created_at != null) 'created_at': created_at,
      if (updated_at != null) 'updated_at': updated_at,
    });
  }

  UserTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int>? roleId,
      Value<String>? email,
      Value<String>? phone,
      Value<String>? coupon,
      Value<String>? points,
      Value<DateTime>? email_verified_at,
      Value<String>? remember_token,
      Value<DateTime>? created_at,
      Value<DateTime>? updated_at}) {
    return UserTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      roleId: roleId ?? this.roleId,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      coupon: coupon ?? this.coupon,
      points: points ?? this.points,
      email_verified_at: email_verified_at ?? this.email_verified_at,
      remember_token: remember_token ?? this.remember_token,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (roleId.present) {
      map['role_id'] = Variable<int>(roleId.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (coupon.present) {
      map['coupon'] = Variable<String>(coupon.value);
    }
    if (points.present) {
      map['points'] = Variable<String>(points.value);
    }
    if (email_verified_at.present) {
      map['email_verified_at'] = Variable<DateTime>(email_verified_at.value);
    }
    if (remember_token.present) {
      map['remember_token'] = Variable<String>(remember_token.value);
    }
    if (created_at.present) {
      map['created_at'] = Variable<DateTime>(created_at.value);
    }
    if (updated_at.present) {
      map['updated_at'] = Variable<DateTime>(updated_at.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('roleId: $roleId, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('coupon: $coupon, ')
          ..write('points: $points, ')
          ..write('email_verified_at: $email_verified_at, ')
          ..write('remember_token: $remember_token, ')
          ..write('created_at: $created_at, ')
          ..write('updated_at: $updated_at')
          ..write(')'))
        .toString();
  }
}

class $UserTableTable extends UserTable with TableInfo<$UserTableTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _roleIdMeta = const VerificationMeta('roleId');
  @override
  late final GeneratedColumn<int?> roleId = GeneratedColumn<int?>(
      'role_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String?> phone = GeneratedColumn<String?>(
      'phone', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _couponMeta = const VerificationMeta('coupon');
  @override
  late final GeneratedColumn<String?> coupon = GeneratedColumn<String?>(
      'coupon', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _pointsMeta = const VerificationMeta('points');
  @override
  late final GeneratedColumn<String?> points = GeneratedColumn<String?>(
      'points', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _email_verified_atMeta =
      const VerificationMeta('email_verified_at');
  @override
  late final GeneratedColumn<DateTime?> email_verified_at =
      GeneratedColumn<DateTime?>('email_verified_at', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _remember_tokenMeta =
      const VerificationMeta('remember_token');
  @override
  late final GeneratedColumn<String?> remember_token = GeneratedColumn<String?>(
      'remember_token', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _created_atMeta = const VerificationMeta('created_at');
  @override
  late final GeneratedColumn<DateTime?> created_at = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _updated_atMeta = const VerificationMeta('updated_at');
  @override
  late final GeneratedColumn<DateTime?> updated_at = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        roleId,
        email,
        phone,
        coupon,
        points,
        email_verified_at,
        remember_token,
        created_at,
        updated_at
      ];
  @override
  String get aliasedName => _alias ?? 'user_table';
  @override
  String get actualTableName => 'user_table';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('role_id')) {
      context.handle(_roleIdMeta,
          roleId.isAcceptableOrUnknown(data['role_id']!, _roleIdMeta));
    } else if (isInserting) {
      context.missing(_roleIdMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('coupon')) {
      context.handle(_couponMeta,
          coupon.isAcceptableOrUnknown(data['coupon']!, _couponMeta));
    } else if (isInserting) {
      context.missing(_couponMeta);
    }
    if (data.containsKey('points')) {
      context.handle(_pointsMeta,
          points.isAcceptableOrUnknown(data['points']!, _pointsMeta));
    } else if (isInserting) {
      context.missing(_pointsMeta);
    }
    if (data.containsKey('email_verified_at')) {
      context.handle(
          _email_verified_atMeta,
          email_verified_at.isAcceptableOrUnknown(
              data['email_verified_at']!, _email_verified_atMeta));
    } else if (isInserting) {
      context.missing(_email_verified_atMeta);
    }
    if (data.containsKey('remember_token')) {
      context.handle(
          _remember_tokenMeta,
          remember_token.isAcceptableOrUnknown(
              data['remember_token']!, _remember_tokenMeta));
    } else if (isInserting) {
      context.missing(_remember_tokenMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
          _created_atMeta,
          created_at.isAcceptableOrUnknown(
              data['created_at']!, _created_atMeta));
    } else if (isInserting) {
      context.missing(_created_atMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
          _updated_atMeta,
          updated_at.isAcceptableOrUnknown(
              data['updated_at']!, _updated_atMeta));
    } else if (isInserting) {
      context.missing(_updated_atMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    return User.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UserTableTable createAlias(String alias) {
    return $UserTableTable(attachedDatabase, alias);
  }
}

class Blog extends DataClass implements Insertable<Blog> {
  final int id;
  final String title;
  final String description;
  final String rel_path;
  final String services;
  final bool status;
  final String publish_at;
  Blog(
      {required this.id,
      required this.title,
      required this.description,
      required this.rel_path,
      required this.services,
      required this.status,
      required this.publish_at});
  factory Blog.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Blog(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      rel_path: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rel_path'])!,
      services: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}services'])!,
      status: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}status'])!,
      publish_at: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}publish_at'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['rel_path'] = Variable<String>(rel_path);
    map['services'] = Variable<String>(services);
    map['status'] = Variable<bool>(status);
    map['publish_at'] = Variable<String>(publish_at);
    return map;
  }

  BlogTableCompanion toCompanion(bool nullToAbsent) {
    return BlogTableCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      rel_path: Value(rel_path),
      services: Value(services),
      status: Value(status),
      publish_at: Value(publish_at),
    );
  }

  factory Blog.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Blog(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      rel_path: serializer.fromJson<String>(json['rel_path']),
      services: serializer.fromJson<String>(json['services']),
      status: serializer.fromJson<bool>(json['status']),
      publish_at: serializer.fromJson<String>(json['publish_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'rel_path': serializer.toJson<String>(rel_path),
      'services': serializer.toJson<String>(services),
      'status': serializer.toJson<bool>(status),
      'publish_at': serializer.toJson<String>(publish_at),
    };
  }

  Blog copyWith(
          {int? id,
          String? title,
          String? description,
          String? rel_path,
          String? services,
          bool? status,
          String? publish_at}) =>
      Blog(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        rel_path: rel_path ?? this.rel_path,
        services: services ?? this.services,
        status: status ?? this.status,
        publish_at: publish_at ?? this.publish_at,
      );
  @override
  String toString() {
    return (StringBuffer('Blog(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('rel_path: $rel_path, ')
          ..write('services: $services, ')
          ..write('status: $status, ')
          ..write('publish_at: $publish_at')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, title, description, rel_path, services, status, publish_at);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Blog &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.rel_path == this.rel_path &&
          other.services == this.services &&
          other.status == this.status &&
          other.publish_at == this.publish_at);
}

class BlogTableCompanion extends UpdateCompanion<Blog> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  final Value<String> rel_path;
  final Value<String> services;
  final Value<bool> status;
  final Value<String> publish_at;
  const BlogTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.rel_path = const Value.absent(),
    this.services = const Value.absent(),
    this.status = const Value.absent(),
    this.publish_at = const Value.absent(),
  });
  BlogTableCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String description,
    required String rel_path,
    required String services,
    this.status = const Value.absent(),
    required String publish_at,
  })  : title = Value(title),
        description = Value(description),
        rel_path = Value(rel_path),
        services = Value(services),
        publish_at = Value(publish_at);
  static Insertable<Blog> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? rel_path,
    Expression<String>? services,
    Expression<bool>? status,
    Expression<String>? publish_at,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (rel_path != null) 'rel_path': rel_path,
      if (services != null) 'services': services,
      if (status != null) 'status': status,
      if (publish_at != null) 'publish_at': publish_at,
    });
  }

  BlogTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? description,
      Value<String>? rel_path,
      Value<String>? services,
      Value<bool>? status,
      Value<String>? publish_at}) {
    return BlogTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      rel_path: rel_path ?? this.rel_path,
      services: services ?? this.services,
      status: status ?? this.status,
      publish_at: publish_at ?? this.publish_at,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (rel_path.present) {
      map['rel_path'] = Variable<String>(rel_path.value);
    }
    if (services.present) {
      map['services'] = Variable<String>(services.value);
    }
    if (status.present) {
      map['status'] = Variable<bool>(status.value);
    }
    if (publish_at.present) {
      map['publish_at'] = Variable<String>(publish_at.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BlogTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('rel_path: $rel_path, ')
          ..write('services: $services, ')
          ..write('status: $status, ')
          ..write('publish_at: $publish_at')
          ..write(')'))
        .toString();
  }
}

class $BlogTableTable extends BlogTable with TableInfo<$BlogTableTable, Blog> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BlogTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _rel_pathMeta = const VerificationMeta('rel_path');
  @override
  late final GeneratedColumn<String?> rel_path = GeneratedColumn<String?>(
      'rel_path', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _servicesMeta = const VerificationMeta('services');
  @override
  late final GeneratedColumn<String?> services = GeneratedColumn<String?>(
      'services', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<bool?> status = GeneratedColumn<bool?>(
      'status', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (status IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _publish_atMeta = const VerificationMeta('publish_at');
  @override
  late final GeneratedColumn<String?> publish_at = GeneratedColumn<String?>(
      'publish_at', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, description, rel_path, services, status, publish_at];
  @override
  String get aliasedName => _alias ?? 'blog_table';
  @override
  String get actualTableName => 'blog_table';
  @override
  VerificationContext validateIntegrity(Insertable<Blog> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('rel_path')) {
      context.handle(_rel_pathMeta,
          rel_path.isAcceptableOrUnknown(data['rel_path']!, _rel_pathMeta));
    } else if (isInserting) {
      context.missing(_rel_pathMeta);
    }
    if (data.containsKey('services')) {
      context.handle(_servicesMeta,
          services.isAcceptableOrUnknown(data['services']!, _servicesMeta));
    } else if (isInserting) {
      context.missing(_servicesMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('publish_at')) {
      context.handle(
          _publish_atMeta,
          publish_at.isAcceptableOrUnknown(
              data['publish_at']!, _publish_atMeta));
    } else if (isInserting) {
      context.missing(_publish_atMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Blog map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Blog.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $BlogTableTable createAlias(String alias) {
    return $BlogTableTable(attachedDatabase, alias);
  }
}

class Role extends DataClass implements Insertable<Role> {
  final int id;
  final String name;
  final String slug;
  final String description;
  final DateTime created_at;
  final DateTime updated_at;
  Role(
      {required this.id,
      required this.name,
      required this.slug,
      required this.description,
      required this.created_at,
      required this.updated_at});
  factory Role.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Role(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      slug: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}slug'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      created_at: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at'])!,
      updated_at: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['slug'] = Variable<String>(slug);
    map['description'] = Variable<String>(description);
    map['created_at'] = Variable<DateTime>(created_at);
    map['updated_at'] = Variable<DateTime>(updated_at);
    return map;
  }

  RoleTableCompanion toCompanion(bool nullToAbsent) {
    return RoleTableCompanion(
      id: Value(id),
      name: Value(name),
      slug: Value(slug),
      description: Value(description),
      created_at: Value(created_at),
      updated_at: Value(updated_at),
    );
  }

  factory Role.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Role(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      slug: serializer.fromJson<String>(json['slug']),
      description: serializer.fromJson<String>(json['description']),
      created_at: serializer.fromJson<DateTime>(json['created_at']),
      updated_at: serializer.fromJson<DateTime>(json['updated_at']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'slug': serializer.toJson<String>(slug),
      'description': serializer.toJson<String>(description),
      'created_at': serializer.toJson<DateTime>(created_at),
      'updated_at': serializer.toJson<DateTime>(updated_at),
    };
  }

  Role copyWith(
          {int? id,
          String? name,
          String? slug,
          String? description,
          DateTime? created_at,
          DateTime? updated_at}) =>
      Role(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
        description: description ?? this.description,
        created_at: created_at ?? this.created_at,
        updated_at: updated_at ?? this.updated_at,
      );
  @override
  String toString() {
    return (StringBuffer('Role(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('slug: $slug, ')
          ..write('description: $description, ')
          ..write('created_at: $created_at, ')
          ..write('updated_at: $updated_at')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, slug, description, created_at, updated_at);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Role &&
          other.id == this.id &&
          other.name == this.name &&
          other.slug == this.slug &&
          other.description == this.description &&
          other.created_at == this.created_at &&
          other.updated_at == this.updated_at);
}

class RoleTableCompanion extends UpdateCompanion<Role> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> slug;
  final Value<String> description;
  final Value<DateTime> created_at;
  final Value<DateTime> updated_at;
  const RoleTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.slug = const Value.absent(),
    this.description = const Value.absent(),
    this.created_at = const Value.absent(),
    this.updated_at = const Value.absent(),
  });
  RoleTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String slug,
    required String description,
    required DateTime created_at,
    required DateTime updated_at,
  })  : name = Value(name),
        slug = Value(slug),
        description = Value(description),
        created_at = Value(created_at),
        updated_at = Value(updated_at);
  static Insertable<Role> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? slug,
    Expression<String>? description,
    Expression<DateTime>? created_at,
    Expression<DateTime>? updated_at,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (slug != null) 'slug': slug,
      if (description != null) 'description': description,
      if (created_at != null) 'created_at': created_at,
      if (updated_at != null) 'updated_at': updated_at,
    });
  }

  RoleTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? slug,
      Value<String>? description,
      Value<DateTime>? created_at,
      Value<DateTime>? updated_at}) {
    return RoleTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      description: description ?? this.description,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (slug.present) {
      map['slug'] = Variable<String>(slug.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (created_at.present) {
      map['created_at'] = Variable<DateTime>(created_at.value);
    }
    if (updated_at.present) {
      map['updated_at'] = Variable<DateTime>(updated_at.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RoleTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('slug: $slug, ')
          ..write('description: $description, ')
          ..write('created_at: $created_at, ')
          ..write('updated_at: $updated_at')
          ..write(')'))
        .toString();
  }
}

class $RoleTableTable extends RoleTable with TableInfo<$RoleTableTable, Role> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RoleTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _slugMeta = const VerificationMeta('slug');
  @override
  late final GeneratedColumn<String?> slug = GeneratedColumn<String?>(
      'slug', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _created_atMeta = const VerificationMeta('created_at');
  @override
  late final GeneratedColumn<DateTime?> created_at = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _updated_atMeta = const VerificationMeta('updated_at');
  @override
  late final GeneratedColumn<DateTime?> updated_at = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, slug, description, created_at, updated_at];
  @override
  String get aliasedName => _alias ?? 'role_table';
  @override
  String get actualTableName => 'role_table';
  @override
  VerificationContext validateIntegrity(Insertable<Role> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('slug')) {
      context.handle(
          _slugMeta, slug.isAcceptableOrUnknown(data['slug']!, _slugMeta));
    } else if (isInserting) {
      context.missing(_slugMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
          _created_atMeta,
          created_at.isAcceptableOrUnknown(
              data['created_at']!, _created_atMeta));
    } else if (isInserting) {
      context.missing(_created_atMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
          _updated_atMeta,
          updated_at.isAcceptableOrUnknown(
              data['updated_at']!, _updated_atMeta));
    } else if (isInserting) {
      context.missing(_updated_atMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Role map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Role.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $RoleTableTable createAlias(String alias) {
    return $RoleTableTable(attachedDatabase, alias);
  }
}

abstract class _$DatabaseHelper extends GeneratedDatabase {
  _$DatabaseHelper(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $UserTableTable userTable = $UserTableTable(this);
  late final $BlogTableTable blogTable = $BlogTableTable(this);
  late final $RoleTableTable roleTable = $RoleTableTable(this);
  late final UserDao userDao = UserDao(this as DatabaseHelper);
  late final BlogDao blogDao = BlogDao(this as DatabaseHelper);
  late final RoleDao roleDao = RoleDao(this as DatabaseHelper);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [userTable, blogTable, roleTable];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$UserDaoMixin on DatabaseAccessor<DatabaseHelper> {
  $UserTableTable get userTable => attachedDatabase.userTable;
}
mixin _$BlogDaoMixin on DatabaseAccessor<DatabaseHelper> {
  $BlogTableTable get blogTable => attachedDatabase.blogTable;
}
mixin _$RoleDaoMixin on DatabaseAccessor<DatabaseHelper> {
  $RoleTableTable get roleTable => attachedDatabase.roleTable;
}
