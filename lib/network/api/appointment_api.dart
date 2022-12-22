import 'package:vassal/network/http.dart';
import 'package:vassal/utils/constants/api.dart';

class AppointmentApi extends Http{

  Future<dynamic> getAppointments(header) async => await getHandler(Api.APPOINTMENTS_URL, header);
  Future<dynamic> postAppointment(header, body) async => await postHandler2(Api.SAVE_APPOINTMENTS_URL, header,  body,);
}