import 'package:flutter_svg/flutter_svg.dart';
import 'package:vassal/blocs/log_in_bloc/log_in_bloc.dart';
import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/keys/asset_keys.dart';
import 'package:vassal/utils/keys/locale_keys.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginFragment extends StatefulWidget {
  LoginFragment({Key? key}) : super(key: key);

  @override
  _LoginFragmentState createState() => _LoginFragmentState();
}

class _LoginFragmentState extends State<LoginFragment> {


  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool _obscureText = true;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraint) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraint.maxHeight),
          child: IntrinsicHeight(
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: _screenSize.height * 0.18,
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: _screenSize.height * 0.1,
                    ),
                    padding: EdgeInsets.only(
                        left: _screenSize.width * 0.05,
                        right: _screenSize.width * 0.05),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 0),
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 5,
                              spreadRadius: 1)
                        ],
                        color: Style.loginBackgroundColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(
                                20)) //BorderRadius.all(Radius.circular(20))
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              0.0,
                              _screenSize.width * 0.05,
                              0.0,
                              _screenSize.width * 0.01),
                          alignment: Alignment.center,
                          child: Text(
                            "Καλώς ήρθατε!",
                           // LocaleKeys.welcome.tr(),
                            style: TextStyle(
                                color: Style.primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              0.0,
                              _screenSize.width * 0.03,
                              0.0,
                              _screenSize.width * 0.1),
                          alignment: Alignment.center,
                          child: Text(
                            LocaleKeys.login.tr(),
                            style: TextStyle(
                                color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                                ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Style.textFieldColor.withOpacity(0.1),
                                  spreadRadius: 0.1,
                                  blurRadius: 5,
                                  offset: Offset(0, 0), // changes position of shadow
                                ),
                              ],
                              color: Style.secondaryColor,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ))
                          ,
                          child: TextFormField(
                            
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(

                              // labelText: LocaleKeys.userName.tr(),
                              // labelStyle: const TextStyle(
                              //     color: Style.textFieldColor),
                              border: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide.none,
                              ),
                              fillColor: Colors.white,
                              hintText: "Email Χρήστη",//LocaleKeys.userName.tr(),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Style.textFieldColor,
                              ),
                              // focusedBorder: UnderlineInputBorder(
                              //   borderSide: BorderSide(
                              //     color: Style.textFieldColor,
                              //   ),
                              // ),
                              enabledBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            // onFieldSubmitted: (v) {
                            //   FocusScope.of(context)
                            //       .requestFocus(passFocus);
                            // },
                          ),
                        ),
                        // Spacer(flex:1),
                        SizedBox(
                          height: _screenSize.height * 0.03,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Style.textFieldColor.withOpacity(0.1),
                                    spreadRadius: 0.1,
                                    blurRadius: 5,
                                    offset: Offset(0, 0), // changes position of shadow
                                  ),
                                ],
                                color: Style.secondaryColor,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                )),
                          child: TextFormField(
                            cursorColor: Theme.of(context).primaryColor,
                            obscureText: _obscureText,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.done,
                            controller: _passwordController,
                            // focusNode: passFocus,
                            decoration: InputDecoration(
                              // labelText: "password".tr(),
                              // labelStyle: TextStyle(
                              //     color: Style.textFieldColor),
                              hintText: "Κωδικός",//"password".tr(),
                              border: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide.none,
                              ),
                              fillColor: Colors.white,
                              suffixIcon: IconButton(
                                icon: Icon(
                                  Icons.remove_red_eye,
                                  color: Style.textFieldColor,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Style.textFieldColor,
                              ),
                              enabledBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            // onFieldSubmitted: (v) {
                            //   FocusScope.of(context)
                            //       .requestFocus(passFocus);
                            // },
                          ),
                        ),
                        // Spacer(flex: 1),
                        SizedBox(
                          height: _screenSize.height * 0.03,
                        ),
                        ButtonTheme(
                          minWidth: _screenSize.width * 0.4,
                          height: _screenSize.height * 0.05,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                minimumSize: Size(
                                    _screenSize.width * 0.5,
                                    _screenSize.height * 0.05),
                                backgroundColor: Style.primaryColor,
                                shape: RoundedRectangleBorder(

                                  borderRadius:
                                  BorderRadius.circular(20),
                                )),
                            onPressed: () {
                              BlocProvider.of<LogInBloc>(context).add(LogInEvent.loginEvent(_emailController.text.toString(), _passwordController.text.toString()));
                            },
                            child: Text( "Σύνδεση",//LocaleKeys.connect.tr(),
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white)),
                          ),
                        ),
                        // Align(
                        //   alignment: Alignment.bottomCenter,
                        //   child: new GestureDetector(
                        //       onTap: () {
                        //         BlocProvider.of<LogInBloc>(context).add(LogInEvent.forgotPassword());
                        //       },
                        //       child: Text(
                        //        "Ξεχάσατε τον κωδικό σας;",// "forgot_password".tr(),
                        //         style: TextStyle(
                        //             color: Style.textFieldColor,
                        //             fontSize: 13),
                        //       )),
                        // ),
                        // Spacer(flex: 1),
                        SizedBox(
                          height: _screenSize.height * 0.05,
                        ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Flexible(
                             child: Container(
                               height: 1,
                               // margin: EdgeInsets.only(top: 20),
                               width: _screenSize.width * 0.3,
                               color: Style.secondaryTextColor.withOpacity(0.2),
                             ),
                           ),
                           Text( "ή Σύνδεση με", style: TextStyle(color: Colors.grey.withOpacity(0.5), fontSize: 12)),
                           Flexible(
                             child: Container(
                               height: 1,
                               // margin: EdgeInsets.only(top: 20),
                               width: _screenSize.width * 0.3,
                               color: Style.secondaryTextColor.withOpacity(0.2),
                             ),
                           ),
                         ],
                       ),
                        // Spacer(flex: 1),
                        SizedBox(
                          height: _screenSize.height * 0.03,
                        ),
                        Container(
                          width: _screenSize.width * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(onPressed: () {
                                BlocProvider.of<LogInBloc>(context).add(LogInEvent.googleLoginEvent("", ""));
                              }, child: Container(
                                decoration: BoxDecoration(
                                    color: Style.gmailColor,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    )),
                                child: Container(
                                  width: _screenSize.width * 0.4,
                                  height: _screenSize.height * 0.05,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        AssetKeys.gmailSvg,
                                        width: _screenSize.width * 0.05,
                                        height: _screenSize.width * 0.05,
                                      ),
                                      SizedBox(
                                        width: _screenSize.width * 0.03,
                                      ),
                                      Text("Gmail", style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                ),
                              )),
                              TextButton(onPressed: () {
                                BlocProvider.of<LogInBloc>(context).add(LogInEvent.facebookLoginEvent("",""));
                              }, child: Container(
                                decoration: BoxDecoration(
                                    color: Style.facebookColor,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    )),
                                child: Container(
                                  width: _screenSize.width * 0.4,
                                  height: _screenSize.height * 0.05,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        AssetKeys.facebookSvg,
                                        width: _screenSize.width * 0.05,
                                        height: _screenSize.width * 0.05,
                                      ),
                                      SizedBox(
                                        width: _screenSize.width * 0.03,
                                      ),
                                      Text("Facebook", style: TextStyle(color: Colors.white))
                                    ],
                                  ),
                                ),
                              ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: _screenSize.height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Δεν έχετε λογαριασμό" + "; ",
                              style: TextStyle(
                                  color: Style.textFieldColor,
                                  fontSize: 14),
                            ),
                            new GestureDetector(
                                onTap: () {
                                  BlocProvider.of<LogInBloc>(context).add(LogInEvent.goToRegister());
                                },
                                child: Text(
                                  "Εγγραφή τώρα",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Style.textFieldColor ,
                                      fontSize:14),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: _screenSize.height * 0.03,
                        )
                        // Spacer(flex: 2),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }


}
