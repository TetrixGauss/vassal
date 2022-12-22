import 'package:vassal/dependency_injection/services/api_service.dart';
import 'package:vassal/dependency_injection/services/daos_service.dart';
import 'package:vassal/dependency_injection/setup_locator.dart';
import 'package:vassal/repositories/appointment_repo.dart';
import 'package:vassal/repositories/blog_repo.dart';
import 'package:vassal/repositories/chat_repo.dart';
import 'package:vassal/repositories/role_repo.dart';
import 'package:vassal/repositories/service_repo.dart';
import 'package:vassal/repositories/user_repo.dart';

class RepositoriesService {

  UserRepository userRepository = UserRepository(
      userDao: getIt<DaosService>().userDao,
      userApi: getIt<ApiService>().userApi);

  RoleRepository roleRepository = RoleRepository(
      roleDao: getIt<DaosService>().roleDao,
      roleApi: getIt<ApiService>().roleApi);

  BlogRepository blogRepository = BlogRepository(
      blogDao: getIt<DaosService>().blogDao,
      blogApi: getIt<ApiService>().blogApi);

  ServiceRepository serviceRepository = ServiceRepository(
  serviceApi: getIt<ApiService>().serviceApi);

  AppointmentRepository appointmentRepository = AppointmentRepository(
      appointmentApi: getIt<ApiService>().appointmentApi);

  ChatRepository chatRepository = ChatRepository(
      chatApi: getIt<ApiService>().chatApi);
}
