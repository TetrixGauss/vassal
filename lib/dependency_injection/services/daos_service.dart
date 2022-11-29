import 'package:vassal/database/database.dart';
import 'package:vassal/dependency_injection/setup_locator.dart';

import 'database_service.dart';

class DaosService{

  UserDao userDao = UserDao(getIt<DatabaseService>().db);
  RoleDao roleDao = RoleDao(getIt<DatabaseService>().db);
  BlogDao blogDao = BlogDao(getIt<DatabaseService>().db);

}