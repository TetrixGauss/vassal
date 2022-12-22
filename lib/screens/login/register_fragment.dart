import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vassal/blocs/log_in_bloc/log_in_bloc.dart';
import 'package:vassal/utils/app_toast.dart';
import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/keys/locale_keys.dart';

class RegisterFragment extends StatefulWidget {
  const RegisterFragment({Key? key}) : super(key: key);

  @override
  State<RegisterFragment> createState() => _RegisterFragmentState();
}

class _RegisterFragmentState extends State<RegisterFragment> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _firstController;
  late TextEditingController _lastController;
  late TextEditingController _phoneController;
  bool _obscureText = true;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _firstController = TextEditingController();
    _lastController = TextEditingController();
    _phoneController = TextEditingController();
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
                  height: _screenSize.height * 0.22,
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
                          child: Text("Εγγραφή",
                            //LocaleKeys.register.tr(),
                            style: TextStyle(
                                color: Color(0xff211E1E),
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
                              hintText:"Email Χρήστη", //LocaleKeys.userName.tr(),
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
                              hintText:"Κωδικός",//"password".tr(),
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

                            controller: _firstController,
                            keyboardType: TextInputType.name,
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
                              hintText:"Όνομα Χρήστη", //LocaleKeys.userName.tr(),
                              prefixIcon: Icon(
                                Icons.account_circle,
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
                              ))
                          ,
                          child: TextFormField(

                            controller: _lastController,
                            keyboardType: TextInputType.name,
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
                              hintText:"Επίθετο Χρήστη", //LocaleKeys.userName.tr(),
                              prefixIcon: Icon(
                                Icons.account_circle,
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
                              ))
                          ,
                          child: TextFormField(

                            controller: _phoneController,
                            keyboardType: TextInputType.number,
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
                              hintText:"Τηλέφωνο", //LocaleKeys.userName.tr(),
                              prefixIcon: Icon(
                                Icons.phone,
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
                              if(_emailController.text.toString() == "" || _passwordController.text.toString() == "" || _firstController.text.toString() == "" || _phoneController.text.toString() == "") {
                                if(_emailController.text.toString() == "") {
                                  AppToast.showMessage("Παρακαλώ συμπληρώστε το email σας για να συνεχίσετε!");
                                } else if(_passwordController.text.toString() == "") {
                                  AppToast.showMessage("Παρακαλώ συμπληρώστε τον κωδικό σας για να συνεχίσετε!");
                                } else if(_firstController.text.toString() == "") {
                                  AppToast.showMessage("Παρακαλώ συμπληρώστε τον όνομα σας για να συνεχίσετε!");
                                } else if(_phoneController.text.toString() == "") {
                                  AppToast.showMessage("Παρακαλώ συμπληρώστε τον τηλέφωνό σας για να συνεχίσετε!");
                                }
                              } else {
                                if(_passwordController.text.toString().characters.length >= 6) {
                                  BlocProvider.of<LogInBloc>(context).add(LogInEvent.register(_emailController.text.toString(), _passwordController.text.toString(), _firstController.text.toString(), _lastController.text.toString(), _phoneController.text.toString()));
                                } else {
                                  AppToast.showMessage("Ο κωδικός πρέπει να είναι τουλάχιστον 6 χαρακτήρες");
                                }

                              }

                            },
                            child: Text("Εγγραφή",//LocaleKeys.register.tr(),
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white)),
                          ),
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
