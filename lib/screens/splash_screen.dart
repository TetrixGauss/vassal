import 'dart:developer';
import 'dart:io';

import 'package:vassal/blocs/splash_bloc/splash_bloc.dart';
import 'package:vassal/components/login_background_clip.dart';
import 'package:vassal/main.dart';
import 'package:vassal/routes/routes.dart';
import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/keys/asset_keys.dart';
import 'package:vassal/utils/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.primaryColor,
      body: _mainBody2(context),
    );
  }

  _mainBody2(context) {
    Size _screenSize = MediaQuery.of(context).size;

    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state.splashStatus == SplashStatus.logIn) {
          Navigator.pushNamedAndRemoveUntil(context, Routes.loginScreen, (route) => false);
        } else if (state.splashStatus == SplashStatus.dashboard) {
          Navigator.pushNamedAndRemoveUntil(context, Routes.dashboardScreen, (route) => false);
        }
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Align(
            alignment: Alignment.center,
            child: //Image.asset(AssetKeys.emmaLogo,
                SvgPicture.asset(
              AssetKeys.vassalLogoSVG,
              width: _screenSize.width * 0.5,
              height: _screenSize.width * 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
