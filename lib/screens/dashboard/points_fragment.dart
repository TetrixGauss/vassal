import 'dart:async';
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:vassal/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:vassal/blocs/points_bloc/points_bloc.dart';
import 'package:vassal/components/pop_up_component/pop_up.dart';
import 'package:vassal/components/pop_up_component/pop_up_content.dart';
import 'package:vassal/models/staff_model.dart';
import 'package:vassal/utils/app_toast.dart';
import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/status.dart';

class PointsFragments extends StatelessWidget {
  const PointsFragments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TextEditingController controller = TextEditingController();
    // controller.value.copyWith(text: )
    StreamController<String> _streamController = StreamController<String>.broadcast();
    Size _screenSize = MediaQuery.of(context).size;
    return BlocConsumer<PointsBloc, PointsState>(
      listener: (context, state){
        if(state.pointsStatus == PointsStatus.reedemPoints) {
          AppToast.showMessage("Συγχαρητήρια! Οι πόντοις σας εξαργυρώθηκαν επιτυχώς. Θα λάβετε email σχετικά με τον κωδικό σας!");
          _streamController.sink.add("");
        } else if(state.pointsStatus == PointsStatus.reedemPointsFailed) {
          AppToast.showMessage("Υπήρξε κάποιο πρόβλημα με την εξαργύρωση σας! Παρακαλώ προσπαθήστε ξανά!");
        }
      },
      builder: (context, state){

        double percent = (int.parse(state.points.toString()) / 550) * 100;
        if(percent > 100) {
          percent = 100;
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: _screenSize.width,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
              height: _screenSize.height * 0.07,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("Οι", style: TextStyle(color: Color(0xff211E1E), fontSize: 24, fontWeight: FontWeight.bold),),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Πόντοι", style: TextStyle(color: Style.primaryColor, fontSize: 24, fontWeight: FontWeight.bold) ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("μου", style: TextStyle(color: Color(0xff211E1E), fontSize: 24, fontWeight: FontWeight.bold) ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //       offset: const Offset(0, 0),
                  //       color: Colors.grey.withOpacity(0.5),
                  //       blurRadius: 5,
                  //       spreadRadius: 1)
                  // ],
                  color: Style.loginBackgroundColor,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(30)) //BorderRadius.all(Radius.circular(20))
              ),
              height: _screenSize.height * 0.72,
              alignment: Alignment.center,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 8, right: 8, bottom: 8, top: _screenSize.height * 0.03),
                    // height: _screenSize.height * 0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(state.points, style: TextStyle(color: Style.primaryColor, fontSize: 40, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    // height: _screenSize.height * 0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Vasal Points", style: TextStyle(color: Style.primaryColor, fontSize: 14, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: _screenSize.height * 0.03,
                  ),

                  Stack(
                    children: [
                      LinearPercentIndicator(
                        width: _screenSize.width,
                        lineHeight: _screenSize.height * 0.05,
                        percent: percent / 100,
                        // progressColor: Colors.red,
                        linearGradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xff211E1E), Color(0xffAE9A7A)],
                        ),
                        backgroundColor: Color(0xffFFFFFF),
                        barRadius: Radius.circular(20),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _screenSize.height * 0.025 - _screenSize.width * 0.01,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // SizedBox(
                            //     width: 10 + _screenSize.width * 0.02
                            // ),
                            Container(
                                width: _screenSize.width * 0.02,
                                height: _screenSize.width * 0.02,
                                // margin: EdgeInsets.symmetric(horizontal: _screenSize.width * 0.08  ),
                                decoration: BoxDecoration(
                                    color: int.parse(state.points.toString()) >= 100
                                        ? const Color(0xffFFFFFF)
                                        : Color(0xffAE9A7A),
                                    shape: BoxShape.circle
                                )),
                            Container(
                                width: _screenSize.width * 0.02,
                                height: _screenSize.width * 0.02,
                                // margin: EdgeInsets.symmetric(horizontal: _screenSize.width * 0.08   ),
                                decoration: BoxDecoration(
                                    color: int.parse(state.points.toString()) >= 200
                                        ? const Color(0xffFFFFFF)
                                        : Color(0xffAE9A7A),
                                    shape: BoxShape.circle
                                )),
                            Container(
                                width: _screenSize.width * 0.02,
                                height: _screenSize.width * 0.02,
                                // margin: EdgeInsets.symmetric(horizontal: _screenSize.width * 0.08  ),
                                decoration: BoxDecoration(
                                    color: int.parse(state.points.toString()) >= 300
                                        ? const Color(0xffFFFFFF)
                                        : Color(0xffAE9A7A),
                                    shape: BoxShape.circle
                                )),
                            Container(
                                width: _screenSize.width * 0.02,
                                height: _screenSize.width * 0.02,
                                // margin: EdgeInsets.symmetric(horizontal: _screenSize.width * 0.08 ),
                                decoration: BoxDecoration(
                                    color: int.parse(state.points.toString()) >= 400
                                        ? const Color(0xffFFFFFF)
                                        : Color(0xffAE9A7A),
                                    shape: BoxShape.circle
                                )),
                            Container(
                                width: _screenSize.width * 0.02,
                                height: _screenSize.width * 0.02,
                                // margin: EdgeInsets.symmetric(horizontal: _screenSize.width * 0.08 ),
                                decoration: BoxDecoration(
                                    color: int.parse(state.points.toString()) >= 500
                                        ? const Color(0xffFFFFFF)
                                        : Color(0xffAE9A7A),
                                    shape: BoxShape.circle
                                )),
                            // SizedBox(
                            //     width: 10 + _screenSize.width * 0.02
                            // ),


                          ],
                        ),
                      ),
                    ],

                  ),
                  Container(
                    margin: EdgeInsets.only(top: _screenSize.height * 0.025 - _screenSize.width * 0.01,),
                    width: _screenSize.width * 0.95,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Container(
                            width: _screenSize.width * 0.07,
                            // height: _screenSize.width * 0.0,
                            // margin: EdgeInsets.symmetric(horizontal: _screenSize.width * 0.045  ),
                            child: Text("100", style: TextStyle(fontSize: 11, color: Color(0xffAE9A7A)))
                        ),
                        Container(
                            width: _screenSize.width * 0.07,
                            // height: _screenSize.width * 0.0,
                            // margin: EdgeInsets.symmetric(horizontal: _screenSize.width * 0.045  ),
                            child: Text("200", style: TextStyle(fontSize: 11, color: Color(0xffAE9A7A)))
                        ),
                        Container(
                            width: _screenSize.width * 0.07,
                            // height: _screenSize.width * 0.0,
                            // margin: EdgeInsets.symmetric(horizontal: _screenSize.width * 0.045 ),
                            child: Text("300", style: TextStyle(fontSize: 11, color: Color(0xffAE9A7A)))
                        ),
                        Container(
                            width: _screenSize.width * 0.07,
                            // height: _screenSize.width * 0.0,
                            // margin: EdgeInsets.symmetric(horizontal: _screenSize.width * 0.045  ),
                            child: Text("400", style: TextStyle(fontSize: 11, color: Color(0xffAE9A7A)))
                        ),
                        Container(
                            width: _screenSize.width * 0.07,
                            // height: _screenSize.width * 0.0,
                            // margin: EdgeInsets.symmetric(horizontal: _screenSize.width * 0.045  ),
                            child: Text("500",style: TextStyle(fontSize: 11, color: Color(0xffAE9A7A)),)
                        ),


                      ],
                    ),
                  ),
                  SizedBox(
                    height: _screenSize.height * 0.03,
                  ),
                  Container(
                    width: _screenSize.width,
                    padding: EdgeInsets.all(16),
                    child: Text("Κερδισμένα κουπόνια", style: TextStyle(color: Color(0xff211E1E), fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),

                  Container(
                    width: _screenSize.width,
                    height: _screenSize.height * 0.17,
                    margin: EdgeInsets.symmetric(horizontal: _screenSize.width * 0.02),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {

                          return _pointsContainer(context, index, state, _streamController);
                        }),
                  ),
                  SizedBox(
                    height: _screenSize.height * 0.07,
                  ),
                  _redeemPointsButton(context, state)
                ],
              )
            )
          ],
        );
      },
    );
  }


  _pointsContainer(BuildContext context, int index, PointsState state, StreamController<String> _streamController) {

    // if(int.parse(state.points) >= 100 && int.parse(state.points) < 200) {
    //   streamController.sink.add("100");
    // }
    Size _screenSize = MediaQuery.of(context).size;
    String points = "";
    String price = "€";
    String euro = "€";
    Color bulletColor = Color(0xffAE9A7A);
    Color textColor = Color(0xff211E1E);
    if(index == 0) {
      points = "100";
      price = "3€";
      if(int.parse(state.points) < 100 ) {
        bulletColor = Color(0xff211E1E).withOpacity(0.5);
        textColor = Color(0xff211E1E).withOpacity(0.5);
      }
    } else if(index == 1) {
      points = "200";
      price = "6€";
      if(int.parse(state.points) < 200 ) {
        bulletColor = Color(0xff211E1E).withOpacity(0.5);
        textColor = Color(0xff211E1E).withOpacity(0.5);
      }
    } else if(index == 2) {
      points = "300";
      price = "9€";
      if(int.parse(state.points) < 300 ) {
        bulletColor = Color(0xff211E1E).withOpacity(0.5);
        textColor = Color(0xff211E1E).withOpacity(0.5);
      }
    } else if(index == 3) {
      points = "400";
      price = "12€";
      if(int.parse(state.points) < 400 ) {
        bulletColor = Color(0xff211E1E).withOpacity(0.5);
        textColor = Color(0xff211E1E).withOpacity(0.5);
      }
    } else if(index == 4) {
      points = "500";
      price = "20€";
      if(int.parse(state.points) < 500 ) {
        bulletColor = Color(0xff211E1E).withOpacity(0.5);
        textColor = Color(0xff211E1E).withOpacity(0.5);
      }
    }
    return StreamBuilder<String>(
      initialData: "",
      stream: _streamController.stream.asBroadcastStream(),
      builder: (context, snapshot) {
        log(snapshot.data!);
        return GestureDetector(
          onTap: () async {
            if(int.parse(state.points) >= int.parse(points)) {
              if(snapshot.data! != ""){
                if(snapshot.data! == points) {

                  _streamController.sink.add("");
                } else {
                  if(await _streamController.stream.length > 0){
                    _streamController.sink.add("");
                    _streamController.sink.add(points);
                    state.controller.value = state.controller.value.copyWith(text: points);
                  }
                  // list.clear();
                  // streamController.sink.add([]);
                  // list.add(points);

                }
              }else {
                // list.add(points);
                _streamController.sink.add(points);
                state.controller.value = state.controller.value.copyWith(text: points);
              }
            }
            log(state.controller.text.toString());
            // state.controller.text = points; // = state.controller.value.copyWith(text: points);
          },
          child: Container(
            width: _screenSize.width * 0.3,
            height: _screenSize.height * 0.1,
            margin: EdgeInsets.symmetric(horizontal: _screenSize.width * 0.02),
            decoration: BoxDecoration(
                color:  Style.secondaryColor,
                borderRadius: const BorderRadius.all(
                    Radius.circular(15)), //BorderRadius.all(Radius.circular(20))
                border: Border.all(
                  color: snapshot.data!.toString() != points ? Style.secondaryColor : Color(0xffAE9A7A),
                  // color: state.controller.text.toString() == "" && state.controller.text.toString() != points ? Style.secondaryColor : Color(0xffAE9A7A),
                  width: 5,
                )
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    child: Text(price, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: bulletColor,),textAlign: TextAlign.center,)),
                Container(
                    width:_screenSize.width * 0.25,
                child: Text("Εξαργύρωση $points πόντων" ,style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: textColor ),textAlign: TextAlign.center,)),
                Container(
                    width: _screenSize.width * 0.02,
                    height: _screenSize.width * 0.02,
                    // margin: EdgeInsets.symmetric(horizontal: _screenSize.width * 0.08 ),
                    decoration: BoxDecoration(
                        color: bulletColor,
                        shape: BoxShape.circle
                    )),
              ],
            ),
          ),
        );
      }
    );
  }

  _redeemPointsButton(BuildContext context, PointsState state) {
    Size _screenSize = MediaQuery.of(context).size;
    return TextButton(onPressed: () {
      BlocProvider.of<PointsBloc>(context)
          .add(PointsEvent.reedemPoints(state.controller.text.toString()));
    }, style: TextButton.styleFrom(
        minimumSize: Size(
            _screenSize.width * 0.43, _screenSize.height * 0.07),
        maximumSize: Size(
            _screenSize.width * 0.9, _screenSize.height * 0.07),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
              color: Style.primaryTextColor,
              width: 1,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(25),
        )), child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Εξαργύρωσε πόντους", style: TextStyle(color: Style.primaryTextColor,),),
          ],
        ));
  }

  _stafContainer(BuildContext context, String avatar, String name) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 16.0, top: 8.0),
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: avatar,
            fit: BoxFit.cover,
            imageBuilder: (context, imageProvider) => Container(
              width: _screenSize.width * 0.13,
              height: _screenSize.width * 0.13,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
          ),
          Text(
            name,
            style: const TextStyle(color: Style.primaryColor),
          )
        ],
      ),
    );
  }

  _showPopup(BuildContext context, Widget widget) {
    Size _screenSize = MediaQuery.of(context).size;
    Navigator.push(
      context,
      PopupLayout(
        top: _screenSize.height * 0.03,
        left: null,
        right: null,
        bottom: null,
        child: PopupContent(content: widget),
        bgColor: null,
      ),
    );
  }

  _popUpWidget(BuildContext context, List<Staff> stafs) {
    Size _screenSize = MediaQuery.of(context).size;
    double popUpHeight = _screenSize.height * 0.83;
    double popUpWidth = _screenSize.width;
    StreamController timeController = StreamController<int>.broadcast();
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            height: _screenSize.width * 0.15,
            width: _screenSize.width * 0.15,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: const Icon(
              Icons.close,
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(
          height: _screenSize.height * 0.03,
        ),
        Container(
          width: popUpWidth,
          height: popUpHeight,
          // padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          decoration: const BoxDecoration(
              color: Style.secondaryColor,
              borderRadius: BorderRadius.only(topRight:Radius.circular(25), topLeft: Radius.circular(25))),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
                child: Text(
                  "Επιλέξτε προσωπικό",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
              Container(
                height: _screenSize.height * 0.1,
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: stafs.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _stafContainer(
                          context, stafs[index].avatar, stafs[index].firstName);
                    }),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                child: Text("Επιλέξτε ημερομηνία",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              ),
              Container(
                height: _screenSize.height * 0.4,
                child: Calendar(
                  startOnMonday: true,
                  weekDays: ['Δ', 'Τ', 'Τ', 'Π', 'Π', 'Σ', 'Κ'],
                  events: {},
                  onRangeSelected: (range) {

                  },
                  onDateSelected: (date) {
                    // _handleNewDate(date);
                  },
                  isExpandable: false,
                  isExpanded: true,
                  eventDoneColor: Colors.green,
                  todayColor: Style.primaryColor,
                  selectedColor: Style.primaryColor,
                  // todayColor: Colors.blue,
                  eventColor: Colors.grey,
                  locale: 'el_GR',
                  todayButtonText: '',
                  expandableDateFormat: 'EEEE, dd. MMMM yyyy',
                  dayOfWeekStyle: const TextStyle(
                      color: Color(0xff211E1E),
                      fontWeight: FontWeight.w800,
                      fontSize: 11),
                  hideBottomBar: true,
                  hideArrows: true,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0, bottom: 8),
                child: Text("Επιλέξτε ώρα",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              ),
              Container(
                height: _screenSize.height * 0.1,
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: StreamBuilder(
                  stream: timeController.stream.asBroadcastStream(),
                  initialData: 0,
                  builder: (context, snapshot) {
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: stafs.length,
                        itemBuilder: (BuildContext context, int index) {
                          Color text = Colors.black;
                          Color bg = Color(0xffF6F6F6);
                          if(snapshot.data! == index) {
                            text = Colors.white;
                            bg = Style.primaryColor;
                          }
                          return GestureDetector(
                            onTap: () {
                              timeController.sink.add(index);
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              height: _screenSize.height * 0.05,
                              width: _screenSize.width * 0.17,

                              decoration: BoxDecoration(
                                  color: bg,
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              alignment: Alignment.center,
                              child: Text("9πμ", style: TextStyle(fontWeight: FontWeight.bold, color: text),),
                            ),
                          );
                        });
                  },

                ),
              ),
              SizedBox(height: _screenSize.height * 0.04,),
              TextButton(
                  style: TextButton.styleFrom(
                      minimumSize:
                      Size(_screenSize.width, _screenSize.height * 0.07),
                      backgroundColor: const Color(0xffF6F6F6),
                      shadowColor: Colors.grey.withOpacity(0.7),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)))),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.check,
                        color: Color(0xffAE9A7A),
                      ),
                      Text("Αποστολή Ραντεβού",
                          style: TextStyle(color: Colors.black))
                    ],
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
