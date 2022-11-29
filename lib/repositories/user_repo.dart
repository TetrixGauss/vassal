import 'dart:convert';
import 'dart:developer';

import 'package:vassal/database/database.dart';
import 'package:vassal/main.dart';
import 'package:vassal/models/api_response_model.dart';
import 'package:vassal/network/api/user_api.dart';
import 'package:vassal/network/http.dart';
import 'package:vassal/models/user_model.dart' as model;
import 'package:vassal/utils/constants/api.dart';
import 'package:vassal/utils/status.dart';
import 'package:moor/moor.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepository {
  final UserDao _userDao;
  final UserApi _userApi;

  UserRepository({required UserDao userDao, required UserApi userApi})
      : _userDao = userDao,
        _userApi = userApi;

  Future findUser() async{
    return model.User.fromDB(await _userDao.findUser);
  }

  Future<List<model.User>> getUsers() async {
    List<model.User> list = [];
    for (var element in (await _userDao.getUsers())) {
      list.add(model.User.fromDB(element));
    }
    return list;
  }

  Future<int> register(
      {required String? email,
        required String? firstName,
        required String? lastName,
      required String password,
        required String phone,
      required int provider}) async {
    log("phone");
    log(phone);
    Map<String, dynamic> body = {};
    body["name"] = "$firstName $lastName";
    body["email"] = email;
    body["password"] = password;
    body["phone"] = phone;

    body["provider"] = provider.toString();

    Map<String, dynamic> response = await _userApi.register(body);
    if (response["message"] == "success") {
      return 1;
    } else if (response["message"] == "The email has already been taken.") {
      return 0;
    }
    return -1;
  }

  Future<int> login(
      {required String? email,
      required String password,
      required int provider}) async {
    Map<String, dynamic> body = {};
    body["email"] = email;
    body["password"] = password;
    body["provider"] = provider.toString();

    Map<String, dynamic> response = await _userApi.login(body);

    if (response != null) {
      SharedPreferences _sp = await SharedPreferences.getInstance();
      // await _sp.setString('token', response.body["token"] ?? "");
      // await _sp.setString('userHash', response.body["hash"] ?? "");
      //  return 1;
      // }
      if (response["message"] == "success") {
        Map<String, dynamic> data = response["data"];
        SharedPreferences _sp = await SharedPreferences.getInstance();
        await _sp.setString('bearer', data["access_token"] ?? "");
        Map<String, dynamic> user = data["user"];
        Map<String, dynamic> role = user["role"];
        return await getUser(false);
      }
    }
    return -1;
  }

  Future<int> resetPassword({required String email}) async {
    Map<String, dynamic> body = {};
    body["username"] = email;
    body["email"] = email;
    // body["api_key"] = Api.API_KEY;

    ApiResponse? response = await _userApi.resetPassword(body);
    if (response != null) {
      if (response.status != NetworkResponseStatus.failed) {
        return 1;
      }
    }
    return -1;
  }

  Future getUser(bool update) async {
    SharedPreferences _sp = await SharedPreferences.getInstance();
    String bearer = _sp.getString("bearer") ?? "";

    if(bearer != "") {
      Map<String, String> body = {};
      body["Authorization"] = "Bearer $bearer";

      Map<String, dynamic> response = await _userApi.getUser(body);
      if(response["message"] == "success") {
        Map<String, dynamic> data = response["data"];

        Map<String, dynamic> role = data["role"];
        // if(data["name"] == null || data["name"] == "") {
        //   if(data["first_name"] != null && data["last_name"] != null){
        //     String first = data["first_name"];
        //     String last = data["last_name"];
        //     data["name"] = "$first $last";
        //   }
        // }
        if(update) {
          model.User modelUser = await getUserDB();
          var userForDB = UserTableCompanion(
            id: Value(modelUser.id),
            name: Value(data["name"]),
            roleId: Value(role["title"] == "free" ? 0 : 1),
            email: Value(data["email"]),
            phone: Value(data["phone"] ?? ""),
            email_verified_at: Value(DateTime.now()),
            coupon: Value(jsonEncode(data["coupon"])),
            points: Value(jsonEncode(data["points"])),
            // password: Value(password),
            remember_token: Value(bearer),
            created_at: Value(DateTime.now()),
            updated_at: Value(DateTime.now()),
          );
          await _userDao.updateUser(userForDB);
        } else {
          var userForDB = UserTableCompanion(
            name: Value(data["name"]),
            roleId: Value(role["title"] == "free" ? 0 : 1),
            email: Value(data["email"]),
            phone: Value(data["phone"] ?? ""),
            email_verified_at: Value(DateTime.now()),
            coupon: Value(jsonEncode(data["coupon"])),
            points: Value(jsonEncode(data["points"])),
            // password: Value(password),
            remember_token: Value(bearer),
            created_at: Value(DateTime.now()),
            updated_at: Value(DateTime.now()),
          );
          await _userDao.storeUser(userForDB);
        }
        return 1;
      }
    }

    return -1;

  }

  Future getUserDB() async {
    return model.User.fromDB(await _userDao.findUser);
  }

  Future<bool> checkToken() async {
    SharedPreferences _sp = await SharedPreferences.getInstance();
    var map = new Map<String, dynamic>();
    map["hash"] = await _sp.getString("userHash")!;
    // map["api_key"] = Api.API_KEY;
    map["token"] = await _sp.getString("token");

    // ApiResponse? response =
    // await Http().postHandler(Api.CHECK_URL, map);

    // if(response != null) {
    //   if(response.status != NetworkResponseStatus.failed) {
    //     return true;
    //   }
    // }
    return false;
  }

  Future<bool> refreshToken() async {
    SharedPreferences _sp = await SharedPreferences.getInstance();
    var map = new Map<String, dynamic>();
    map["hash"] = await _sp.getString("userHash")!;
    // map["api_key"] = Api.API_KEY;
    //
    // ApiResponse? response =
    // await Http().postHandler(Api.REFRESH_URL, map);

    // if(response != null) {
    //   if(response.status != NetworkResponseStatus.failed) {
    //     await _sp.setString("token", response.body['token']);
    //     return true;
    //   }
    // }
    return false;
  }

  Future<int> getCount() async {
    return await _userDao.getCount();
  }

  Future<void> deleteAllEntries() async {
    return await _userDao.deleteAllEntries;
  }

  // Future<model.User> findUser() async {
  //   // return model.User.fromDB(await _userDao.findUser);
  // }

  // Future<User> getLoggedInUser() async => await userDao.findUser;

  // Future<void> updateUser(model.User newUser) async {
  //   // var user = UserTableCompanion(
  //   //   userHash: Value(newUser.userHash),
  //   //   email: Value(newUser.email),
  //   //   userName: Value(newUser.userName),// Value(response.body["username"] ?? ""),
  //   //   secureKey: Value(newUser.secureKey),
  //   //   firstname: Value(newUser.firstname),
  //   //   lastname: Value(newUser.lastname),
  //   //   approval: Value(newUser.approval),
  //   //   token: Value(newUser.token),
  //   //   hospital: Value(newUser.hospital),
  //   // );
  //   return await _userDao.updateUser(user);
  // }
  //
  // Future<List<model.User>> getUsers() async{
  //   List<User> dbUsers = await _userDao.getUsers();
  //   List<model.User> users = [];
  //   dbUsers.forEach((element) {
  //     users.add(model.User.fromDB(element));
  //   });
  //   return users;
  // }

  Stream<List<User>> getLoggedInUserStream() => _userDao.getdUserStream();
}
