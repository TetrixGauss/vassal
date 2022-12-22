import 'package:vassal/models/api_response_model.dart';
import 'package:vassal/network/http.dart';
import 'package:vassal/utils/constants/api.dart';

class UserApi extends Http{

  Future<dynamic> login(body) async => await postHandler(Api.LOGIN_URL, body);
  Future<dynamic> logout(body) async => await postHandler(Api.LOGOUT_URL, body);
  Future<dynamic> register( body) async => await postHandler(Api.REGISTER_URL, body);
  Future<dynamic> resetPassword(body) async => await postHandler(Api.RESET_URL, body);
  Future<dynamic> getUser(body) async => await getHandler(Api.USER_URL, body);
  Future<dynamic> postCoupons(headers, body) async => await postHandler2(Api.COUPONS_URL, headers, body);
}