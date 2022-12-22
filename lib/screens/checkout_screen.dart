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
        Navigator.pushReplacementNamed(context, Routes.profileScreen);
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
              Navigator.pushReplacementNamed(context, Routes.profileScreen);
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
              },
              icon: SvgPicture.asset(
                "assets/svg/message.svg",
                width: _screenSize.width * 0.065,
                height: _screenSize.width * 0.065,
                // color: Color(0xff211E1E),
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
                color: Color(0xff211E1E),
                fontSize: 36,
                fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Style.loginBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(
                        30)) //BorderRadius.all(Radius.circular(20))
                ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(30),), //BorderRadius.all(Radius.circular(20))

                            image: DecorationImage(
                              image: AssetImage(
                                AssetKeys.loginVassal,
                              ),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.6), BlendMode.darken),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: const Text(
                                  "Paid Account Card",
                                  style: TextStyle(color: Colors.white, fontSize: 36,
                                  overflow: TextOverflow.ellipsis, fontWeight: FontWeight.w700,),
                                  maxLines: 3,
                                ),
                              ),
                              const Text("12€",
                                  style: TextStyle(color: Colors.white, fontSize: 64, fontWeight: FontWeight.w700))
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: _screenSize.height * 0.01,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              child: const Text("Χαρακτηριστικά",
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Container(
                                  // width: _screenSize.width * 0.4,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(top: 8.0, bottom: 4.0),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/svg/characteristic.svg",
                                              width: _screenSize.width * 0.05,
                                              height: _screenSize.width * 0.05,
                                              // color: Color(0xff211E1E),
                                            ),
                                            const SizedBox(width: 5),
                                            const Text("Live Chat",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(top: 4.0, bottom: 4.0),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/svg/characteristic.svg",
                                              width: _screenSize.width * 0.05,
                                              height: _screenSize.width * 0.05,
                                              // color: Color(0xff211E1E),
                                            ),
                                            const SizedBox(width: 5),
                                            const Text("Προσφορές",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(top: 4.0, bottom: 4.0),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/svg/characteristic.svg",
                                              width: _screenSize.width * 0.05,
                                              height: _screenSize.width * 0.05,
                                              // color: Color(0xff211E1E),
                                            ),
                                            const SizedBox(width: 5),
                                            Flexible(
                                              child: const Text("Premium Υπηρεσίες",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500), overflow: TextOverflow.ellipsis,),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(top: 4.0, bottom: 4.0),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/svg/characteristic.svg",
                                              width: _screenSize.width * 0.05,
                                              height: _screenSize.width * 0.05,
                                              // color: Color(0xff211E1E),
                                            ),
                                            const SizedBox(width: 5),
                                            const Text("Ραντεβού",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   width: _screenSize.width * 0.02,
                              // ),
                              Flexible(
                                child: Container(
                                  // width: _screenSize.width * 0.4,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(top: 8.0, bottom: 4.0),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/svg/characteristic.svg",
                                              width: _screenSize.width * 0.05,
                                              height: _screenSize.width * 0.05,
                                              // color: Color(0xff211E1E),
                                            ),
                                            const SizedBox(width: 5),
                                            const Text("Επιλογή Staff",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(top: 4.0, bottom: 4.0),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/svg/characteristic.svg",
                                              width: _screenSize.width * 0.05,
                                              height: _screenSize.width * 0.05,
                                              // color: Color(0xff211E1E),
                                            ),
                                            const SizedBox(width: 5),
                                            const Text("Live Chat",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(top: 4.0, bottom: 4.0),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/svg/characteristic.svg",
                                              width: _screenSize.width * 0.05,
                                              height: _screenSize.width * 0.05,
                                              // color: Color(0xff211E1E),
                                            ),
                                            const SizedBox(width: 5),
                                            const Text("Online Blog",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(top: 4.0, bottom: 4.0),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/svg/characteristic.svg",
                                              width: _screenSize.width * 0.05,
                                              height: _screenSize.width * 0.05,
                                              // color: Color(0xff211E1E),
                                            ),
                                            const SizedBox(width: 5),
                                            const Text("Εκπτώσεις",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // BlocProvider.of<ProfileBloc>(context).add(const ProfileEvent.logOut());
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size(
                        _screenSize.width * 0.9, _screenSize.height * 0.06),
                    maximumSize: Size(
                        _screenSize.width * 0.9, _screenSize.height * 0.06),
                    backgroundColor: Style.primaryColor,
                    shape: RoundedRectangleBorder(
                      //RoundedRectangleBorder
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Ασφαλής πληρωμή",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
