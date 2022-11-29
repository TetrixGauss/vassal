
import 'package:vassal/utils/status.dart';
import 'package:moor/moor.dart';

class ApiResponse{

  final int statusCode;
  final String errorCode;
  final NetworkResponseStatus status;
  final String message;
  final Map<String,dynamic> body;

  ApiResponse({required this.statusCode,required this.status,required this.message,required this.body,required this.errorCode});

}