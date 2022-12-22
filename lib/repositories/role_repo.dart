
import 'package:vassal/database/database.dart';
import 'package:vassal/network/api/role_api.dart';

class RoleRepository {
  final RoleDao _roleDao;
  final RoleApi _roleApi;


  RoleRepository({required RoleDao roleDao, required RoleApi roleApi})
      : _roleDao = roleDao,
        _roleApi = roleApi;

}