part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {

  const factory ChatEvent.initChat() = initChatEvent;

  const factory ChatEvent.sendMessage(String message) = sendMessageEvent;
}
