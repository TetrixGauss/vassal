import 'package:vassal/network/http.dart';
import 'package:vassal/utils/constants/api.dart';

class ChatApi extends Http{

  Future<dynamic> getConversation(header) async => await getHandler(Api.CONVERSATION_URL, header);
  Future<dynamic> sendMessage(header, body) async => await postHandler2(Api.CHAT_SEND_URL, header, body);
}