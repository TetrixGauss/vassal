import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vassal/routes/routes.dart';
import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/keys/asset_keys.dart';
import 'package:vassal/utils/app_toast.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

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
              // Navigator.pushNamed(context, Routes.servicesScreen,
              //     arguments: widget.service);
              // Navigator.of(context).pop;
              // Navigator.pushReplacementNamed(context, Routes.servicesScreen, arguments: "services");
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
              icon: const Icon(Icons.account_circle_outlined,
                  color: Colors.black),
            )
          ],
        ),
        body: _body(context),
      ),
    );
  }

  _body(context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
          height: _screenSize.height * 0.07,
          child: const Text(
            "Checkout",
            style: TextStyle(
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
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              AssetKeys.loginVassal,
                            ),
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.6), BlendMode.darken),
                          ),
                          borderRadius:  BorderRadius.all(Radius.circular(
                              25)) //
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Paid Account Card", style: TextStyle(color: Colors.white, fontSize:  30),),
                        Text("12€", style: TextStyle(color: Colors.white, fontSize:  30))
                      ],
                    )
                  ],
                ),

                SizedBox(height: _screenSize.height * 0.04,),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text("Χαρακτηριστικά"),
                ),
                Row(
                  children: [
                    Container (
                      width: _screenSize.width * 0.4,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/svg/characteristic.svg",
                                  width: _screenSize.width * 0.05,
                                  height: _screenSize.width * 0.05,
                                  // color: Colors.black,
                                ),
                                SizedBox(width: 5),
                                Text("Live Chat"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/svg/characteristic.svg",
                                  width: _screenSize.width * 0.05,
                                  height: _screenSize.width * 0.05,
                                  // color: Colors.black,
                                ),
                                SizedBox(width: 5),
                                Text("Προσφορές"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/svg/characteristic.svg",
                                  width: _screenSize.width * 0.05,
                                  height: _screenSize.width * 0.05,
                                  // color: Colors.black,
                                ),
                                SizedBox(width: 5),
                                Text("Premium Υπηρεσίες"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/svg/characteristic.svg",
                                  width: _screenSize.width * 0.05,
                                  height: _screenSize.width * 0.05,
                                  // color: Colors.black,
                                ),
                                SizedBox(width: 5),
                                Text("Ραντεβού"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: _screenSize.width * 0.03,
                    ),
                    Container(
                      width: _screenSize.width * 0.4,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/svg/characteristic.svg",
                                  width: _screenSize.width * 0.05,
                                  height: _screenSize.width * 0.05,
                                  // color: Colors.black,
                                ),
                                SizedBox(width: 5),
                                Text("Επιλογή Staff"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/svg/characteristic.svg",
                                  width: _screenSize.width * 0.05,
                                  height: _screenSize.width * 0.05,
                                  // color: Colors.black,
                                ),
                                SizedBox(width: 5),
                                Text("Live Chat"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/svg/characteristic.svg",
                                  width: _screenSize.width * 0.05,
                                  height: _screenSize.width * 0.05,
                                  // color: Colors.black,
                                ),
                                SizedBox(width: 5),
                                Text("Online Blog"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/svg/characteristic.svg",
                                  width: _screenSize.width * 0.05,
                                  height: _screenSize.width * 0.05,
                                  // color: Colors.black,
                                ),
                                SizedBox(width: 5),
                                Text("Εκπτώσεις"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
