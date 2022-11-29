import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:vassal/models/chat_message_model.dart';
import 'package:vassal/repositories/user_repo.dart';
import 'package:vassal/utils/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.dart';

part 'chat_bloc.freezed.dart';

part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  late final UserRepository _userRepository;

  ChatBloc(this._userRepository) : super(ChatState.initial()) {
    on<ChatEvent>((event, emit) async {
      await event.when(initChat: () {
        List<ChatMessage> list = [];
        for(int i = 0; i< 20; i ++) {
          if(i % 5 == 0 || i % 2 == 0) {
            ChatMessage message = ChatMessage(id: 0, message: "messagemessagemessagemessagemessagemessagemessagemessagemessagemessage", received: true);
            list.add(message);
          } else {
            list.add(ChatMessage.newMessage());
          }
        }
        ScrollController controller = ScrollController();


        emit(state.copyWith(chatStatus: ChatStatus.showMessages, messages: list, controller: controller));

      }, sendMessage: () {  }
      );
    });
  }
}
