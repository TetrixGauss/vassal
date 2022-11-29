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
            color: Colors.black,
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
            // color: Colors.black,
          ),
        ),
        const Text("Vassal", style: TextStyle(color: Colors.black),),
      ],
    );
  }

  _mainBody(context) {
    Size _screenSize = MediaQuery.of(context).size;


    return BlocConsumer<ChatBloc, ChatState>(
      listener: (context, state) {
        if(state.chatStatus == ChatStatus.showMessages){
          state.controller.jumpTo(state.controller.position.maxScrollExtent);
        }
      },
      builder: (context, state) {

        return Container(
          // height: _screenSize.height,
          padding: const EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 8),
          decoration: const BoxDecoration(
              color: Color(0xffEDEDED),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: _screenSize.height * 0.78 ,
                  child: ListView.builder(
                    controller: state.controller,
                      physics: const ScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: state.messages.length,
                      itemBuilder: (BuildContext context, int index) {

                        if(!state.messages[index].received) {
                          return _myMessage(context, state.messages[index]);
                        } else {
                          return _vassalMessage(context, state.messages[index]);
                        }
                      }),
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
              AppToast.showMessage("Send");
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

  _myMessage(context, ChatMessage message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [

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
            "assets/svg/message.svg",
            width: _screenSize.width * 0.07,
            height: _screenSize.width * 0.07,
            // color: Colors.black,
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
