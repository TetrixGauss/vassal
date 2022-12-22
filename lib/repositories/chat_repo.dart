import 'dart:convert';
import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:vassal/models/chat_message_model.dart';
import 'package:vassal/network/api/appointment_api.dart';
import 'package:vassal/network/api/chat_api.dart';

class ChatRepository {
  final ChatApi _chatApi;

  ChatRepository({ required ChatApi chatApi})
      : _chatApi = chatApi;

  sendMessage(String message) async {
    SharedPreferences _sp = await SharedPreferences.getInstance();
    String bearer = _sp.getString("bearer") ?? "";
    if(bearer != "") {
      Map<String, String> header = {};
      header["Authorization"] = "Bearer $bearer";

      Map<String, String> body = {};
      log("sendMessage");
      log(message);

      body["message"] = message;

      Map<String, dynamic> response = await _chatApi.sendMessage(header, body);

      if(response != null) {
        if(response["message"] == "success") {
          return 1;
        }
      }

    }
    return 0;
  }

  getConversation() async {
    SharedPreferences _sp = await SharedPreferences.getInstance();
    String bearer = _sp.getString("bearer") ?? "";

    List<ChatMessage> chat = [];
    if(bearer != "") {
      Map<String, String> header = {};
      header["Authorization"] = "Bearer $bearer";

      Map<String, dynamic> response = await _chatApi.getConversation(header);
      if(response != null) {
        if(response["message"] == "success") {
          log(response["data"].toString());
          for(var message in response["data"]) {
            chat.add(ChatMessage.fromJson(message));
          }
          log("chat.toString()");
          log(chat.toString());
        }
      }
    }
    return chat;
  }

  Stream<List<ChatMessage>> watchConversation() async*{
    yield* Stream.periodic(Duration(seconds: 5), (_) {
      return getConversation();
    }).asyncMap((event) async => await event);
  }
}