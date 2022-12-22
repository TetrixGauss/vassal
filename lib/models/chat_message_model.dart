import 'package:freezed_annotation/freezed_annotation.dart';


part 'chat_message_model.freezed.dart';
part 'chat_message_model.g.dart';

@freezed
class ChatMessage with _$ChatMessage{
  factory ChatMessage({
    required int id,
    required String message,
    required String date,
    required int role_id
}) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) => _$ChatMessageFromJson(json);

  factory ChatMessage.newMessage() {
    return ChatMessage(id: 0, message: "", date: DateTime.now().toString(), role_id: 0);
  }

}