import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vassal/blocs/services_bloc/services_bloc.dart';
import 'package:vassal/components/specific_service_card.dart';
import 'package:vassal/models/category_model.dart';
import 'package:vassal/models/service_model.dart';
import 'package:vassal/routes/routes.dart';
import 'package:vassal/utils/app_toast.dart';
import 'package:vassal/utils/constants/style.dart';

class ServicesScreen extends StatelessWidget {
  final Service service;

  const ServicesScreen({Key? key, required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
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
              Navigator.pushReplacementNamed(context, Routes.dashboardScreen, arguments: "services");
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                AppToast.showMessage("Θα είναι διαθέσιμο σε επόμενη εκδοση");
                // Navigator.pushNamed(context, Routes.chatScreen);
              },
              icon: SvgPicture.asset(
                "assets/svg/message.svg",
                width: _screenSize.width * 0.065,
                height: _screenSize.width * 0.065,
                // color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.profileScreen);
              },
              icon: const Icon(Icons.account_circle_outlined, color: Colors.black),
            )
          ],
        ),
        body: _body(context),
      ),
    );
  }

  _body(context) {
    List<Category> list = [];
    jsonDecode(service.categories).forEach((v) {
      v["services"] = v["services"] ?? "";
      v["staffs"] = v["staffs"] ?? "";
      list.add(Category.fromJson(v));
    });
    Size _screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
          height: _screenSize.height * 0.07,
          child: Text(
            service.title,
            style: const TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Container(

            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 0),
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      spreadRadius: 1)
                ],
                color: Style.loginBackgroundColor,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(
                    30), topRight: Radius.circular(
                    30)) //BorderRadius.all(Radius.circular(20))
                ),
            child: SingleChildScrollView(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                  // scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SpecificServiceCard(
                      category: list[index],
                      service: service,
                      widget: index != list.length - 1 ? _divider(context) : null,
                    );
                  }),
            ),
          ),
        )
      ],
    );
  }

  _divider(context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 15),
      color: const Color(0xffDEDEDE),
      width: _screenSize.width * 0.9,
      height: 1.5,
    );
  }
}
