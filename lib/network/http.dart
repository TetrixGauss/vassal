import 'dart:convert';
import 'dart:developer';

import 'package:vassal/models/api_response_model.dart';
import 'package:vassal/utils/status.dart';
import 'package:http/http.dart' as http;

class Http {

  Future<Map<String, dynamic>> getHandler(String url, dynamic headers) async {

      log("getHandler");
      var data = await http.get(Uri.parse(url), headers: headers);
      log("data.body.toString()");
      log(data.body.toString());
      Map<String, dynamic> dataDecoded = jsonDecode(data.body);
      // log(dataDecoded["status"]);

    return dataDecoded;
  }

  Future<Map<String, dynamic>> postHandler(String url, dynamic body) async {
      var data = await http.post(Uri.parse(url), body: body);
      log("data.body.toString()");
      log(data.body.toString());
      Map<String, dynamic> dataDecoded = {};
      try{
      dataDecoded = jsonDecode(data.body);
    } catch(e) {
        dataDecoded["message"] = "internal error";
      }
    return dataDecoded;
  }

  Future<Map<String, dynamic>> postHandler2(String url, Map<String, String> header, dynamic body) async {
    var data = await http.post(Uri.parse(url), headers: header, body: body);
    log("data.body.toString()");
    log(data.body.toString());
    Map<String, dynamic> dataDecoded = jsonDecode(data.body);
    return dataDecoded;
  }

  Future<ApiResponse?> putHandler(String url, dynamic body) async {
    ApiResponse? response;
    try {
      var data = await http.post(Uri.parse(url), body: body);
      Map<String, dynamic> dataDecoded = jsonDecode(data.body);
      if (data.statusCode == 200 && dataDecoded["status"] == "OK") {
        response = ApiResponse(
            statusCode: data.statusCode,
            status: NetworkResponseStatus.success,
            message: dataDecoded["response"],
            body: dataDecoded,
            errorCode: '');
      } else {
        response = ApiResponse(
            statusCode: data.statusCode,
            status: NetworkResponseStatus.failed,
            errorCode: dataDecoded["error_code"]??"",
            message: dataDecoded["response"]??"",
            body: {});
      }
    } catch (e) {
      log(e.toString());
      response = ApiResponse(
          statusCode: 0,
          status: NetworkResponseStatus.failed,
          message: "",
          body: {},
          errorCode: '');
    }
    return response;
  }
}
