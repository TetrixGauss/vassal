import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:vassal/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:vassal/components/tab_item_custom.dart';
import 'package:vassal/main.dart';
import 'package:vassal/routes/routes.dart';
import 'package:vassal/screens/dashboard/blog_fragment.dart';
import 'package:vassal/screens/dashboard/home_fragment.dart';
import 'package:vassal/screens/dashboard/points_fragment.dart';
import 'package:vassal/screens/dashboard/services_fragment.dart';
import 'package:vassal/utils/app_toast.dart';
import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/keys/asset_keys.dart';
import 'package:vassal/utils/keys/locale_keys.dart';
import 'package:vassal/utils/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:shaped_bottom_bar/models/shaped_item_object.dart';
import 'package:shaped_bottom_bar/utils/arrays.dart';
import 'package:shaped_bottom_bar/shaped_bottom_bar.dart';

class DashboardScreen extends StatefulWidget {
  final String? from;
  DashboardScreen({Key? key, this.from}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {


  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    if(widget.from != null) {
      log("DashboardScreen");
      log(widget.from!);
      if(widget.from == "services"){
        _onItemTapped(1);
      }
    }

  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    List<ShapedItemObject> list = [
      ShapedItemObject(iconData: Icons.alarm, title: LocaleKeys.home),
      ShapedItemObject(iconData: Icons.menu_book, title: LocaleKeys.services),
      ShapedItemObject(
          iconData: Icons.verified_user_rounded, title: LocaleKeys.points),
      ShapedItemObject(iconData: Icons.login, title: LocaleKeys.blog),
    ];
    return WillPopScope(
      onWillPop: () async{
        setState(() {
          _selectedIndex = 0;
        });
        BlocProvider.of<DashboardBloc>(context).add(DashboardEvent.homeEvent());
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Style.secondaryColor,

          actions: [
            IconButton(
              onPressed: () {
                AppToast.showMessage("Θα είναι διαθέσιμο σε επόμενη εκδοση");
                // Navigator.pushNamed(context, Routes.chatScreen);
            }, icon:  SvgPicture.asset(
              "assets/svg/message.svg",
              width: _screenSize.width * 0.065,
              height: _screenSize.width * 0.065,
              // color: Colors.black,
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
    Size _screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        _mainBody(context),

        Align(
          heightFactor: _screenSize.height * 0.1,
          alignment: Alignment.bottomCenter,
          child: _customBottomNavigationBar(),
        )


      ],
    );
  }
  _mainBody(context) {
    return BlocConsumer<DashboardBloc, DashboardState>(
      listener: (context, state) {
        if (state.dashboardStatus == DashboardStatus.notifications) {
          // Navigator.pushReplacementNamed(context, Routes.notificationsScreen);
        } else if (state.dashboardStatus == DashboardStatus.notLoggedIn) {
          Navigator.pushReplacementNamed(context, Routes.loginScreen);
        } else if (state.dashboardStatus == DashboardStatus.blogFromHome) {
          _onItemTapped(3);
        } else if (state.dashboardStatus == DashboardStatus.services) {
          _onItemTapped(1);
        } else if(state.dashboardStatus == DashboardStatus.points) {
          AppToast.showMessage("Θα είναι διαθέσιμο σε επόμενη εκδοση");
        }

        // if(state.user.roleId == 0) {
        //   AppToast.showMessage(LocaleKeys.noPaidAccount.tr());
        // }
        // else if (state.loginStatus == LoginStatus.logInSuccessful) {
        //   Navigator.pushNamed(context, Routes.dashboardScreen);
        // }
      },
      builder: (context, state) {
        if (state.dashboardStatus == DashboardStatus.home) {
            return HomeFragment();
        } else if (state.dashboardStatus == DashboardStatus.services) {
          // if(state.user.roleId != 0) {
            return ServicesFragment();
          // } else {
          //   AppToast.showMessage(LocaleKeys.noPaidAccount.tr());
          // }
        } else if (state.dashboardStatus == DashboardStatus.points) {
          // if(state.user.roleId != 0) {
            return PointsFragments();
          // } else {
          //   AppToast.showMessage(LocaleKeys.noPaidAccount.tr());
          // }
        } else if (state.dashboardStatus == DashboardStatus.blog) {
          return BlogFragment();
        }
        return Container();
      },
    );
  }

  _customBottomNavigationBar() {
    Size _screenSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _bottomNavigationItem(0, "Home", "assets/svg/home-svg.svg"),
        _bottomNavigationItem(1, "Υπηρεσίες", "assets/svg/service-svg.svg"),
        _bottomNavigationItem(2, "Πόντοι", "assets/svg/points-svg.svg"),
        _bottomNavigationItem(3, "Blog", "assets/svg/blog-svg.svg"),
      ],
    );
  }

  void _onItemTapped(int index) {
    if(index != 2) {
      setState(() {
        _selectedIndex = index;
      });
    }

    switch (index) {
      case 0:
        BlocProvider.of<DashboardBloc>(context).add(DashboardEvent.homeEvent());
        break;
      case 1:
        BlocProvider.of<DashboardBloc>(context).add(DashboardEvent.servicesEvent());
        break;
      case 2:
        AppToast.showMessage("Θα είναι διαθέσιμο σε επόμενη εκδοση");
        // BlocProvider.of<DashboardBloc>(context).add(DashboardEvent.pointsEvent());
        break;
      case 3:
        BlocProvider.of<DashboardBloc>(context).add(DashboardEvent.blogEvent());
        break;
      default:
        BlocProvider.of<DashboardBloc>(context).add(DashboardEvent.homeEvent());
        break;
    }
  }

  _bottomNavigationItem(int index, String title, String svg) {
    Size _screenSize = MediaQuery.of(context).size;
    if(index == _selectedIndex) {
      return   Container(
        // height: _screenSize.height * 0.09,
        width: _screenSize.width * 0.2,
        margin: EdgeInsets.only(bottom: 8),
        child: OvalShape(
          background: Colors.black,
          size: _screenSize.width * 0.21,
          child: TextButton(onPressed: (){
            _onItemTapped(index);
          }, child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child: SvgPicture.asset(
                  svg,
                  width: _screenSize.width * 0.05,
                  height: _screenSize.width * 0.05,
                  color: Colors.white,
                ),
              ),
              Text(title, style: TextStyle(color: Colors.white, fontSize: 11),)
            ],
          )),
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.only(top: 16),
        height: _screenSize.height * 0.09,
        width: _screenSize.width * 0.2,
        child: TextButton(onPressed: (){
          _onItemTapped(index);
        }, child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 5),
              child: SvgPicture.asset(
                svg,
                width: _screenSize.width * 0.05,
                height: _screenSize.width * 0.05,
                  color: Color(0xffA6A6A6)
              ),
            ),

            Text(title, style: TextStyle(color: Color(0xffA6A6A6), fontSize: 11),)
          ],
        )),
      );
    }

  }

}
