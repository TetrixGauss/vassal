import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vassal/blocs/services_bloc/services_bloc.dart';
import 'package:vassal/models/category_model.dart';
import 'package:vassal/routes/routes.dart';
import 'package:vassal/utils/app_toast.dart';
import 'package:vassal/utils/constants/style.dart';

class SpecificServiceScreen extends StatelessWidget {
  final Category category;
  const SpecificServiceScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async{

        // dashboardBloc.add(DashboardEvent.homeEvent());
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Style.secondaryColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.dashboardScreen);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff211E1E),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                // AppToast.showMessage("Θα είναι διαθέσιμο σε επόμενη εκδοση");
                Navigator.pushNamed(context, Routes.chatScreen);
              }, icon:  SvgPicture.asset(
              "assets/svg/message.svg",
              width: _screenSize.width * 0.065,
              height: _screenSize.width * 0.065,
              // color: Color(0xff211E1E),
            ),),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.profileScreen);
              }, icon:  Icon(Icons.account_circle_outlined,  color: Colors.black),)

          ],
        ),
        body: _body(context),
      ),
    );
  }

  _body(context) {

  }
}
