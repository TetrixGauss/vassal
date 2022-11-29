import 'package:vassal/network/http.dart';
import 'package:vassal/utils/constants/api.dart';

class ServiceApi extends Http{

  Future<dynamic> getServices(body) async => await getHandler(Api.SERVICES_URL, body);
  Future<dynamic> getServiceByID(id, body) async => await getHandler("${Api.SERVICES_URL}/$id", body);
  Future<dynamic> getCategoryByID(id, body) async => await getHandler("${Api.CATEGORIES_URL}/$id", body);
}