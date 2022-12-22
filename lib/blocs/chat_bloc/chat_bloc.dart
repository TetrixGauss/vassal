import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vassal/models/chat_message_model.dart';
import 'package:vassal/models/user_model.dart';
import 'package:vassal/repositories/chat_repo.dart';
import 'package:vassal/repositories/user_repo.dart';
import 'package:vassal/utils/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.dart';

part 'chat_bloc.freezed.dart';

part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  late final UserRepository _userRepository;
  late final ChatRepository _chatRepository;

  ChatBloc(this._userRepository, this._chatRepository)
      : super(ChatState.initial()) {
    on<ChatEvent>((event, emit) async {
      await event.when(initChat: () async {
        // await emit.forEach<List<ChatMessage>>(
        //     _chatRepository.watchConversation(), onData: (chat) {
        //   ScrollController controller = ScrollController();
        //   return state.copyWith(
        //       chatStatus: ChatStatus.showMessages,
        //       messages: chat,
        //       controller: controller);
        // });
        SharedPreferences _sp = await SharedPreferences.getInstance();
        await _sp.setBool("new_notification", false);
        ScrollController controller = ScrollController();
        List<ChatMessage> chat = await _getChat();
        log(chat.toString());
        emit(state.copyWith(
            chatStatus: ChatStatus.showMessages,
            messages: await _getChat(),
            controller: controller,
        stream: _chatRepository.watchConversation() ));
      }, sendMessage: (String message) async {
        User user = await _getUser();
        log("message");
        log(message);
        log(user.roleId.toString());
        List<ChatMessage> chat = await _getChat();
        ChatMessage chatMessage = ChatMessage.newMessage();
        chatMessage = chatMessage.copyWith(message: message, role_id: 4);
        chat.add(chatMessage);

        if (await _sendMessage(message) == 1) {
          emit(state.copyWith(
              chatStatus: ChatStatus.showMessages, messages: chat));
        } else {
          emit(state.copyWith(
              chatStatus: ChatStatus.messageFailed, messages: chat));
        }
      });
    });
  }

  _getUser() async {
    return await _userRepository.findUser();
  }

  _getChat() async {
    return await _chatRepository.getConversation();
  }

  _sendMessage(String message) async {
    return await _chatRepository.sendMessage(message);
  }
}
