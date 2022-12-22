import 'package:vassal/network/api/appointment_api.dart';
import 'package:vassal/network/api/blog_api.dart';
import 'package:vassal/network/api/chat_api.dart';
import 'package:vassal/network/api/role_api.dart';
import 'package:vassal/network/api/service_api.dart';
import 'package:vassal/network/api/user_api.dart';

class ApiService{

  UserApi userApi = UserApi();
  RoleApi roleApi = RoleApi();
  BlogApi blogApi = BlogApi();
  ServiceApi serviceApi = ServiceApi();
  AppointmentApi appointmentApi = AppointmentApi();
  ChatApi chatApi = ChatApi();
}