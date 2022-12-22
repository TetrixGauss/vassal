import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vassal/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:vassal/blocs/profile_bloc/profile_bloc.dart';
import 'package:vassal/routes/routes.dart';
import 'package:vassal/utils/app_toast.dart';
import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/status.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacementNamed(context, Routes.dashboardScreen);
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
            IconButton(onPressed: () {
              // AppToast.showMessage("Θα είναι διαθέσιμο σε επόμενη εκδοση");
              Navigator.pushNamed(context, Routes.chatScreen);
            }, icon:  SvgPicture.asset(
              "assets/svg/message.svg",
              width: _screenSize.width * 0.065,
              height: _screenSize.width * 0.065,
              // color: Color(0xff211E1E),
            ),),
          ],
        ),
        body: _body(context),
      ),
    );
  }

  _body(context) {
    Size _screenSize = MediaQuery.of(context).size;

    return  BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
      if(state.profileStatus == ProfileStatus.init) {
        // Navigator.pushNamed(context, Routes.blogSpecificScreen, arguments: state.blog);
      } else if(state.profileStatus == ProfileStatus.logOut) {
        Navigator.pushReplacementNamed(context, Routes.loginScreen);
      } else if(state.profileStatus == ProfileStatus.addAppointment) {
        Navigator.pushReplacementNamed(context, Routes.dashboardScreen, arguments: "appointment");
      } else if(state.profileStatus == ProfileStatus.logOutFailed) {
        AppToast.showMessage("Υπήρξε πρόβλημα κατά την αποσύνδεση. Παρακαλώ προσπαθήστε ξανά!");
      }
    },
    builder: (context, state) {
      if(state.profileStatus == ProfileStatus.init) {
        log(state.user.toString());
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 16, right: 8, bottom: 8),
              height: _screenSize.height * 0.07,
              child: Row(
                children: const [
                  Text("Το", style: TextStyle(color: Color(0xff211E1E),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),),
                  SizedBox(
                    width: 5,
                  ),
                  Text("προφίλ", style: TextStyle(color: Style.primaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 5,
                  ),
                  Text("μου", style: TextStyle(color: Color(0xff211E1E),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Container(
              width: _screenSize.width,
              height: _screenSize.height * 0.8176329787,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 0),
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        spreadRadius: 1)
                  ],
                  color: Style.loginBackgroundColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(
                          30)) //BorderRadius.all(Radius.circular(20))
              ),
              child: SingleChildScrollView(
                    child: Column(
                      // mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _appointments(context, state),
                        _previousAppointments(context, state),
                        _userDetails(context, state),
                        SizedBox(
                          height: _screenSize.height * 0.03,
                        ),
                        _logOutButton(context, state)
                      ],
                    ),
                  )

            )
          ],
        );
      }
      return Container();
    });
  }

  _appointments(context, ProfileState state) {
    Size _screenSize = MediaQuery.of(context).size;
    List<dynamic> list = [];
    for(var appointment in state.appointments){
      if(appointment["status"] == "progress") {
        list.add(appointment);
      }
    }
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Τα ραντεβού μου", style: TextStyle(color: Color(0xff211E1E), fontSize: 16, fontWeight: FontWeight.bold),),
          SizedBox(
            height: _screenSize.height * 0.02,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: _screenSize.height * 0.17,
                width: _screenSize.width * 0.6 ,
                child: list.length > 0 ? ListView.builder(
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index) {

                      return _appointmentBox(context, list, list[index]);
                    }) : _appointmentBox(context, list, null),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  BlocProvider.of<ProfileBloc>(context).add(ProfileEvent.addAppointment());
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  // margin: EdgeInsets.only(right: 8),
                  height: _screenSize.height * 0.17,
                  width: _screenSize.width * 0.29,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                          Radius.circular(20)) //BorderRadius.all(Radius.circular(20))
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add, color: Color(0xffA6A6A6), size: _screenSize.width * 0.1,),
                      Flexible(child: Text("Νέο Ραντεβού", style:TextStyle(color: Color(0xffA6A6A6), fontSize: 16), maxLines: 2,overflow: TextOverflow.ellipsis, textAlign: TextAlign.center))
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _previousAppointments(context, ProfileState state) {
    Size _screenSize = MediaQuery.of(context).size;
    log("count");
    log(state.appointments.length.toString());
    List<dynamic> list = [];
    for(var appointment in state.appointments){
      if(appointment["status"] == "completed") {
        list.add(appointment);
      }
    }
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Τα Προηγούμενα ραντεβού μου", style: TextStyle(color: Color(0xff211E1E), fontSize: 16, fontWeight: FontWeight.bold),),
          SizedBox(
            height: _screenSize.height * 0.02,
          ),
          Container(
            height: _screenSize.height * 0.17,
            child: list.length > 0 ? ListView.builder(
              physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {

                  return _appointmentBox(context, list, list[index]);
                }) : _appointmentBox(context, list, null),
          )
        ],
      ),
    );
  }

  _userDetails(context, ProfileState state) {
    Size _screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.,
        children: [
          const Text("Ο λογαριασμός μου", style: TextStyle(color: Color(0xff211E1E), fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(
            height: _screenSize.height * 0.03,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Όνομα", style: TextStyle(color: Color(0xffA6A6A6))),
                        Text(state.user!.name, style: const TextStyle(color: Color(0xff211E1E), fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: _screenSize.height * 0.03,
                  ),
                  Container(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Τηλέφωνο", style: TextStyle(color: Color(0xffA6A6A6))),
                        Text(state.user!.phone, style: TextStyle(color: Color(0xff211E1E),fontWeight: FontWeight.bold))
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                width: _screenSize.width * 0.1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Email", style: TextStyle(color: Color(0xffA6A6A6))),
                        Text(state.user!.email, style: const TextStyle(color: Color(0xff211E1E), fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: _screenSize.height * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.pushReplacementNamed(context, Routes.checkoutScreen,);
                    },
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Συνδρομή", style: TextStyle(color: Color(0xffA6A6A6))),
                          Text(state.user!.roleId == 0 ? "Free Plan" : "Premium Plan", style: const TextStyle(color: Style.primaryColor),)
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  _logOutButton(context, state) {
    Size _screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: _screenSize.width * 0.05),
      child: TextButton(onPressed: () {
        BlocProvider.of<ProfileBloc>(context).add(const ProfileEvent.logOut());
      },
        style: TextButton.styleFrom(
          minimumSize: Size(
              _screenSize.width * 0.9,
              _screenSize.height * 0.06),
          maximumSize: Size(
              _screenSize.width * 0.9,
              _screenSize.height * 0.06),
          backgroundColor: Style.loginBackgroundColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
                color: Color(0xff211E1E),
                width: 1,
                style: BorderStyle.solid
            ),//RoundedRectangleBorder
            borderRadius:
            BorderRadius.circular(20),
          ),
        ), child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/svg/logout-icon.svg",

            width: _screenSize.width * 0.05,
            height: _screenSize.width * 0.05,
            color: Color(0xff211E1E),
          ),
          SizedBox(
            width: _screenSize.width * 0.03,
          ),
          const Text( "Logout", style: TextStyle(color: Colors.black),),
        ],
      ),),
    );
  }

  _appointmentBox(context, list, appointment) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(right: 16),
      height: _screenSize.height * 0.17,
      width: _screenSize.width * 0.6,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
              Radius.circular(20)) //BorderRadius.all(Radius.circular(20))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: list.length > 0 ?
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Flexible(
                    child: Text(
                      DateFormat("EEEE,\ndd MMM", "el_GR").format(DateTime.parse(appointment["start_date"])),
                      style: TextStyle(
                          color: Color(0xffAE9A7A), fontSize: 15),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  DateFormat("HH:mm").format(DateTime.parse(appointment["start_date"])),

                  style: TextStyle(
                      color: Color(0xffA6A6A6), fontSize: 12),
                )
              ],
            ) : Container(
              child: Text("Δεν υπάρχουν ακόμα ραντεβού."),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            color: Color(0xffF6F6F6),
            width: 1.5,
            height: _screenSize.height * 0.1,
          ),
          Flexible(child: Text(list.length > 0 ? appointment["sub_service"]["name"] : "---", style:TextStyle(color: Color(0xff211E1E), fontSize: 15),maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)),
        ],
      ),);
  }
}
