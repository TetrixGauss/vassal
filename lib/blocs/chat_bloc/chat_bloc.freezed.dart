// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initChat,
    required TResult Function() sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initChat,
    TResult Function()? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initChat,
    TResult Function()? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initChatEvent value) initChat,
    required TResult Function(sendMessageEvent value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(initChatEvent value)? initChat,
    TResult Function(sendMessageEvent value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initChatEvent value)? initChat,
    TResult Function(sendMessageEvent value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class _$$initChatEventCopyWith<$Res> {
  factory _$$initChatEventCopyWith(
          _$initChatEvent value, $Res Function(_$initChatEvent) then) =
      __$$initChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initChatEventCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$$initChatEventCopyWith<$Res> {
  __$$initChatEventCopyWithImpl(
      _$initChatEvent _value, $Res Function(_$initChatEvent) _then)
      : super(_value, (v) => _then(v as _$initChatEvent));

  @override
  _$initChatEvent get _value => super._value as _$initChatEvent;
}

/// @nodoc

class _$initChatEvent implements initChatEvent {
  const _$initChatEvent();

  @override
  String toString() {
    return 'ChatEvent.initChat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initChatEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initChat,
    required TResult Function() sendMessage,
  }) {
    return initChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initChat,
    TResult Function()? sendMessage,
  }) {
    return initChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initChat,
    TResult Function()? sendMessage,
    required TResult orElse(),
  }) {
    if (initChat != null) {
      return initChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initChatEvent value) initChat,
    required TResult Function(sendMessageEvent value) sendMessage,
  }) {
    return initChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(initChatEvent value)? initChat,
    TResult Function(sendMessageEvent value)? sendMessage,
  }) {
    return initChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initChatEvent value)? initChat,
    TResult Function(sendMessageEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (initChat != null) {
      return initChat(this);
    }
    return orElse();
  }
}

abstract class initChatEvent implements ChatEvent {
  const factory initChatEvent() = _$initChatEvent;
}

/// @nodoc
abstract class _$$sendMessageEventCopyWith<$Res> {
  factory _$$sendMessageEventCopyWith(
          _$sendMessageEvent value, $Res Function(_$sendMessageEvent) then) =
      __$$sendMessageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$sendMessageEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$$sendMessageEventCopyWith<$Res> {
  __$$sendMessageEventCopyWithImpl(
      _$sendMessageEvent _value, $Res Function(_$sendMessageEvent) _then)
      : super(_value, (v) => _then(v as _$sendMessageEvent));

  @override
  _$sendMessageEvent get _value => super._value as _$sendMessageEvent;
}

/// @nodoc

class _$sendMessageEvent implements sendMessageEvent {
  const _$sendMessageEvent();

  @override
  String toString() {
    return 'ChatEvent.sendMessage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$sendMessageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initChat,
    required TResult Function() sendMessage,
  }) {
    return sendMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initChat,
    TResult Function()? sendMessage,
  }) {
    return sendMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initChat,
    TResult Function()? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(initChatEvent value) initChat,
    required TResult Function(sendMessageEvent value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(initChatEvent value)? initChat,
    TResult Function(sendMessageEvent value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(initChatEvent value)? initChat,
    TResult Function(sendMessageEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class sendMessageEvent implements ChatEvent {
  const factory sendMessageEvent() = _$sendMessageEvent;
}

/// @nodoc
mixin _$ChatState {
  ChatStatus get chatStatus => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  ScrollController get controller => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
  $Res call(
      {ChatStatus chatStatus,
      String errorMessage,
      List<ChatMessage> messages,
      ScrollController controller});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;

  @override
  $Res call({
    Object? chatStatus = freezed,
    Object? errorMessage = freezed,
    Object? messages = freezed,
    Object? controller = freezed,
  }) {
    return _then(_value.copyWith(
      chatStatus: chatStatus == freezed
          ? _value.chatStatus
          : chatStatus // ignore: cast_nullable_to_non_nullable
              as ChatStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ));
  }
}

/// @nodoc
abstract class _$$chatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$chatStateCopyWith(
          _$chatState value, $Res Function(_$chatState) then) =
      __$$chatStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ChatStatus chatStatus,
      String errorMessage,
      List<ChatMessage> messages,
      ScrollController controller});
}

/// @nodoc
class __$$chatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$$chatStateCopyWith<$Res> {
  __$$chatStateCopyWithImpl(
      _$chatState _value, $Res Function(_$chatState) _then)
      : super(_value, (v) => _then(v as _$chatState));

  @override
  _$chatState get _value => super._value as _$chatState;

  @override
  $Res call({
    Object? chatStatus = freezed,
    Object? errorMessage = freezed,
    Object? messages = freezed,
    Object? controller = freezed,
  }) {
    return _then(_$chatState(
      chatStatus: chatStatus == freezed
          ? _value.chatStatus
          : chatStatus // ignore: cast_nullable_to_non_nullable
              as ChatStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      messages: messages == freezed
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ));
  }
}

/// @nodoc

class _$chatState implements chatState {
  const _$chatState(
      {required this.chatStatus,
      required this.errorMessage,
      required final List<ChatMessage> messages,
      required this.controller})
      : _messages = messages;

  @override
  final ChatStatus chatStatus;
  @override
  final String errorMessage;
  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final ScrollController controller;

  @override
  String toString() {
    return 'ChatState(chatStatus: $chatStatus, errorMessage: $errorMessage, messages: $messages, controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$chatState &&
            const DeepCollectionEquality()
                .equals(other.chatStatus, chatStatus) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality()
                .equals(other.controller, controller));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chatStatus),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(controller));

  @JsonKey(ignore: true)
  @override
  _$$chatStateCopyWith<_$chatState> get copyWith =>
      __$$chatStateCopyWithImpl<_$chatState>(this, _$identity);
}

abstract class chatState implements ChatState {
  const factory chatState(
      {required final ChatStatus chatStatus,
      required final String errorMessage,
      required final List<ChatMessage> messages,
      required final ScrollController controller}) = _$chatState;

  @override
  ChatStatus get chatStatus;
  @override
  String get errorMessage;
  @override
  List<ChatMessage> get messages;
  @override
  ScrollController get controller;
  @override
  @JsonKey(ignore: true)
  _$$chatStateCopyWith<_$chatState> get copyWith =>
      throw _privateConstructorUsedError;
}
