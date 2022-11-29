

import 'dart:convert';
import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:vassal/network/api/appointment_api.dart';

class AppointmentRepository {
  final AppointmentApi _appointmentApi;

  AppointmentRepository({ required AppointmentApi appointmentApi})
      : _appointmentApi = appointmentApi;

  saveAppointment(String staffId, String serviceId, String date) async {
    SharedPreferences _sp = await SharedPreferences.getInstance();
    String bearer = _sp.getString("bearer") ?? "";
    if(bearer != "") {
      Map<String, String> header = {};
      header["Authorization"] = "Bearer $bearer";

      Map<String, String> body = {};
      log("saveAppointment");
      log(staffId);
      log(serviceId);
      log(date);
      body["staff_id"] = staffId;
      body["service_id"] = serviceId;
      body["calendar_date"] = date;

      Map<String, dynamic> response = await _appointmentApi.postAppointment(header, body);

    }
  }

  getAppointments() async {
    SharedPreferences _sp = await SharedPreferences.getInstance();
    String bearer = _sp.getString("bearer") ?? "";
    if(bearer != "") {
      Map<String, String> header = {};
      header["Authorization"] = "Bearer $bearer";

      Map<String, dynamic> response = await _appointmentApi.getAppointments(header);
      return response["data"];

    }
  }
}