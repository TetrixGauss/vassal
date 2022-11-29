part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  factory ChatState.initial() {
    return ChatState(chatStatus: ChatStatus.init, errorMessage: "", messages: [], controller: ScrollController());
  }

  const factory ChatState({
    required ChatStatus chatStatus,
    required String errorMessage,
    required List<ChatMessage> messages,
    required ScrollController controller
  }) = chatState;
}
