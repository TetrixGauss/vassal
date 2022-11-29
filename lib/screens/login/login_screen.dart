import 'package:vassal/blocs/log_in_bloc/log_in_bloc.dart';
import 'package:vassal/components/login_background_clip.dart';
import 'package:vassal/components/tmpClip.dart';
import 'package:vassal/main.dart';
import 'package:vassal/routes/routes.dart';
import 'package:vassal/screens/login/forgot_pass_fragment.dart';
import 'package:vassal/screens/login/login_fragment.dart';
import 'package:vassal/screens/login/register_fragment.dart';
import 'package:vassal/utils/constants/style.dart';

import 'package:vassal/utils/app_toast.dart';
import 'package:vassal/utils/keys/asset_keys.dart';
import 'package:vassal/utils/status.dart';
import 'package:vassal/utils/keys/locale_keys.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        BlocProvider.of<LogInBloc>(context).add(LogInEvent.back());
        return false;
      },
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AssetKeys.loginVassal,
                ),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.darken),
              ),
            ),
          ),
          Scaffold(
              backgroundColor: Colors.transparent,
              // resizeToAvoidBottomInset: false,
              body: _mainBody(context)),
        ],
      ),
    );
  }

  _mainBody(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return BlocConsumer<LogInBloc, LogInState>(
        listener: (context, state) {
          if (state.loginStatus == LoginStatus.logInFailed) {
            AppToast.showMessage(state.errorMessage.tr());
          } else if (state.loginStatus == LoginStatus.logInSuccessful) {
            Navigator.pushNamed(navigatorKey.currentContext!, Routes.dashboardScreen);
          } else if (state.loginStatus == LoginStatus.resetPasswordSuccessful) {
            AppToast.showMessage(state.errorMessage.tr());
          } else if (state.loginStatus == LoginStatus.resetPasswordFailed) {
            AppToast.showMessage(state.errorMessage.tr());
          } else if (state.loginStatus == LoginStatus.registerFailed) {
            AppToast.showMessage(state.errorMessage.tr());
          }
        },
        builder: (context, state) {
          // if (state.loginStatus == LoginStatus.forgotPassword) {
          //   return ForgotPasswordFragment();
          // } else
            if (state.loginStatus == LoginStatus.register) {
            return RegisterFragment();
          } else {
            return LoginFragment();
          }
          return Container();
        });
  }
}
