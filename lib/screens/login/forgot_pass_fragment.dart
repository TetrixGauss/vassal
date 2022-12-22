import 'package:vassal/blocs/log_in_bloc/log_in_bloc.dart';
import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/keys/locale_keys.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordFragment extends StatefulWidget {
  ForgotPasswordFragment({Key? key}) : super(key: key);

  @override
  _ForgotPasswordFragmentState createState() => _ForgotPasswordFragmentState();
}

class _ForgotPasswordFragmentState extends State<ForgotPasswordFragment> {

  late TextEditingController _emailController;

  @override
  void initState() {
    _emailController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async{
        BlocProvider.of<LogInBloc>(context).emit(LogInState.initial());
        return false;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(height: _screenSize.width * 0.15),
          Text(
            LocaleKeys.resetPassword.tr(),
            style: TextStyle(fontSize: Style.pageTitleFontSize, color: Style.secondaryColor),
          ),
          SizedBox(height: _screenSize.height * 0.07),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: TextFormField(
              style: TextStyle(color: Style.secondaryColor),
              cursorColor: Style.secondaryColor,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Style.secondaryColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Style.secondaryColor),
                ),
                border: UnderlineInputBorder(),
                labelText: LocaleKeys.email.tr(),
                labelStyle: TextStyle(
                  color: Style.secondaryColor,
                ),
                // prefixIcon: Padding(
                //   padding: EdgeInsets.only(top: 15), // add padding to adjust icon
                //   child: Icon(Icons.email, color: Colors.white,),
                // ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
              ),
              textInputAction: TextInputAction.next,
              obscureText: false,
              controller: _emailController,
            ),
          ),
          SizedBox(height: _screenSize.height * 0.1),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: _screenSize.width * 0.4,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Colors.white),
              child: TextButton(
                onPressed: () {
                  if (_emailController.text.isNotEmpty ) {
                    BlocProvider.of<LogInBloc>(context).add(LogInEvent.resetPassword(_emailController.text.toString()));
                  }
                },
                child: Text(
                  LocaleKeys.reset.tr(),
                  // LocaleKeys.login.tr(),
                  style: const TextStyle(
                      color: Style.primaryColor,
                      fontSize: Style.specialButtonsFontSize),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
