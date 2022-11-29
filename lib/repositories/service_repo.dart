import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:vassal/network/api/service_api.dart';
import 'package:vassal/models/service_model.dart' as model;
import 'package:vassal/models/category_model.dart' as modelCategory;

class ServiceRepository {
  final ServiceApi _serviceApi;

  ServiceRepository({ required ServiceApi serviceApi})
      : _serviceApi = serviceApi;

  getServices() async {
    SharedPreferences _sp = await SharedPreferences.getInstance();
    String bearer = _sp.getString("bearer") ?? "";
    if(bearer != "") {
      Map<String, String> body = {};
      body["Authorization"] = "Bearer $bearer";
      List<model.Service> services = [];
      Map<String, dynamic> response = await _serviceApi.getServices(body);
      if(response["message"] == "success") {

        response['data'].forEach((v) async {
          v["blogs"] = jsonEncode(v["blogs"]);
          v["categories"] = jsonEncode(v["categories"]);
          v["staffs"] = jsonEncode(v["staffs"]);

          services.add(model.Service.fromJson(v));
          // await _blogDao.storeBlog(post);
        });


        return services;

      }
    }

    return [];
  }

  getService(int id) async {
    SharedPreferences _sp = await SharedPreferences.getInstance();
    String bearer = _sp.getString("bearer") ?? "";
    if(bearer != "") {
      Map<String, String> body = {};
      body["Authorization"] = "Bearer $bearer";
      Map<String, dynamic> response = await _serviceApi.getServiceByID(id, body);
      if(response["message"] == "success") {
        Map<String, dynamic> data = response["data"];
        data["blogs"] = "";//jsonEncode(data["blogs"]);
        data["categories"] = jsonEncode(data["categories"]);
        data["staffs"] = jsonEncode(data["staffs"]);
        data["blogs_count"] = data["blogs_count"] ?? 0;
        data["categories_count"] = data["categories_count"] ?? 0;
        data["staffs_count"] = data["staffs_count"] ?? 0;

        return model.Service.fromJson(data);
      }
    }

    return model.Service.newService();
  }

  getCategory(int id) async {
    SharedPreferences _sp = await SharedPreferences.getInstance();
    String bearer = _sp.getString("bearer") ?? "";
    if(bearer != "") {
      Map<String, String> body = {};
      body["Authorization"] = "Bearer $bearer";
      Map<String, dynamic> response = await _serviceApi.getCategoryByID(id, body);
      if(response["message"] == "success") {
        Map<String, dynamic> data = response["data"];
        data["services"] = jsonEncode(data["services"]);
        data["staffs"] = jsonEncode(data["staffs"]);
        return modelCategory.Category.fromJson(data);
      }
    }

    return modelCategory.Category.newCategory();
  }

}