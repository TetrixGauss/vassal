part of 'package:vassal/database/database.dart';


@UseDao(tables: [RoleTable])
class RoleDao extends DatabaseAccessor<DatabaseHelper> with _$UserDaoMixin{
  RoleDao(DatabaseHelper attachedDatabase) : super(attachedDatabase);

}