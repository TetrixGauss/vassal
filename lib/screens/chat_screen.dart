import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vassal/blocs/chat_bloc/chat_bloc.dart';
import 'package:vassal/models/chat_message_model.dart';
import 'package:vassal/routes/routes.dart';
import 'package:vassal/utils/app_toast.dart';
import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/status.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Style.secondaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Routes.dashboardScreen,);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff211E1E),
          ),
        ),
        title: _title(context),
      ),
      body: _mainBody(context),
    );
  }

  _title(context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: _screenSize.width * 0.01),
          decoration: const BoxDecoration(
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset(
            "assets/svg/message.svg",
            width: _screenSize.width * 0.07,
            height: _screenSize.width * 0.07,
            // color: Color(0xff211E1E),
          ),
        ),
        const Text("Vasal", style: TextStyle(color: Colors.black),),
      ],
    );
  }

  _mainBody(context) {
    Size _screenSize = MediaQuery.of(context).size;


    return BlocConsumer<ChatBloc, ChatState>(
      listener: (context, state) {
        if(state.chatStatus == ChatStatus.showMessages){
          if(state.messages.length > 0) {
            log("state.messages.toString()");
            log(state.messages.toString());
            if(state.controller.positions.isNotEmpty){
              state.controller.jumpTo(state.controller.position.maxScrollExtent);
            }

          }

        }
      },
      builder: (context, state) {
        if(state.controller.positions.isNotEmpty){
          state.controller.jumpTo(state.controller.position.maxScrollExtent);
        }
        List<ChatMessage> chat = [];
        return Container(
          // height: _screenSize.height,
          padding: const EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 8),
          decoration: const BoxDecoration(
              color: Color(0xffEDEDED),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
          ),
          child: SafeArea(
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  // height: _screenSize.height * 0.78 ,
                  child: StreamBuilder<List<ChatMessage>>(
                    initialData: state.messages,
                    stream: state.stream,
                    builder: (context, snapshot) {
                      if(state.controller.positions.isNotEmpty){
                        state.controller.jumpTo(state.controller.position.maxScrollExtent);
                      }
                      if (state.messages.length > snapshot.data!.length) {
                        chat.clear();
                        chat.addAll(state.messages);
                      } else {
                        chat.clear();
                        chat.addAll(snapshot.data!);
                      }
                      return chat.length > 0 ? ListView.builder(
                        controller: state.controller,
                          physics: const ScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: chat.length,
                          itemBuilder: (BuildContext context, int index) {

                            if(chat[index].role_id != 1) {
                              if(state.chatStatus == ChatStatus.messageFailed) {
                                if(chat[index] == chat.last){
                                  return _myMessage(context, chat[index], true);
                                } else {
                                  return _myMessage(context, chat[index], false);
                                }
                              }else {
                                return _myMessage(context, chat[index], false);
                              }

                            } else {
                              return _vassalMessage(context, chat[index]);
                            }
                          }) : Center(child: Text("No messages yet..."),);
                    }
                  ),
                ),
                _sendMessage(context)

              ],
            ),
          ),
        );
      },
    );

  }

  _sendMessage(context) {
    TextEditingController textEditingController = TextEditingController();
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      width: _screenSize.width * 0.9,
      // height: _screenSize.height * 0.07,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: _screenSize.width * 0.8,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: "Send message",
                fillColor: Style.secondaryColor,
                filled: true,
                border: InputBorder.none,
                counterText: "",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              cursorColor: Style.primaryColor,
              controller: textEditingController,
              onChanged: (value) {
                final val = TextSelection.collapsed(offset: textEditingController.text.length);
                textEditingController.selection = val;
              },
              onSubmitted: (value) {

              },
              maxLines: null,
              style: const TextStyle(
                  fontSize: Style.textFontSize, color: Style.primaryTextColor),
            ),
          ),
          GestureDetector(
            onTap: () {
              log("textEditingController.text.toString()");
              log(textEditingController.text.toString());
              BlocProvider.of<ChatBloc>(context).add(ChatEvent.sendMessage(textEditingController.text.toString()));
              // AppToast.showMessage("Send");
            },
            child: SvgPicture.asset(
              "assets/svg/send-button.svg",
              width: _screenSize.width * 0.05,
              height: _screenSize.width * 0.05,
              color: const Color(0xffA6A6A6),
            ),
          )
        ],
      ),
    );
  }

  _myMessage(context, ChatMessage message, bool failed) {
    return GestureDetector(
      onTap: () {
        if(failed) {
          BlocProvider.of<ChatBloc>(context).add(ChatEvent.sendMessage(message.message));
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          failed ? Icon(CupertinoIcons.exclamationmark_circle_fill, color: Colors.redAccent,) : Container(),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(bottom: 8),
              decoration: const BoxDecoration(
                  color: Style.primaryColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10), bottomLeft: Radius.circular(10))
              ),
              child: Text(message.message, style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }

  _vassalMessage(context, ChatMessage message) {
    Size _screenSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
              shape: BoxShape.circle
          ),
          child: SvgPicture.asset(
            "assets/svg/vassal-logo.svg",
            width: _screenSize.width * 0.08,
            height: _screenSize.width * 0.08,
            // color: Color(0xff211E1E),
          ),
        ),
        SizedBox(width: _screenSize.width * 0.01,),
        Flexible(
          child: Container(
            margin: const EdgeInsets.only(bottom: 8),
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Color(0xffE4E4E4),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10), bottomRight: Radius.circular(10))
            ),
            child: Text(message.message, style: TextStyle(color: Colors.black),),
          ),
        ),
      ],
    );
  }
}
