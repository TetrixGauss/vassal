import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityStatus {
  static Future<bool> isNetworkAvailable() async {
    ConnectivityResult connection = await (Connectivity().checkConnectivity());
    return connection == ConnectivityResult.mobile || connection == ConnectivityResult.wifi;
  }
}