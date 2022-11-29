import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:vassal/blocs/services_bloc/services_bloc.dart';
import 'package:vassal/components/pop_up_component/pop_up.dart';
import 'package:vassal/components/pop_up_component/pop_up_content.dart';
import 'package:vassal/models/category_model.dart';
import 'package:vassal/models/service_model.dart';
import 'package:vassal/models/staff_model.dart';
import 'package:vassal/routes/routes.dart';
import 'package:vassal/utils/app_toast.dart';
import 'package:vassal/utils/constants/general.dart';
import 'package:vassal/utils/constants/style.dart';

class ServiceScreen extends StatefulWidget {
  final Category category;
  final Service service;

  const ServiceScreen({Key? key, required this.category, required this.service})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {

  List<int> staffsIndex = [];
  late DateTime selectedTime;
  StreamController staffController = StreamController<int>.broadcast();
  int time = 0;

  @override
  void initState() {
    super.initState();
    staffController.sink.add(0);
    staffsIndex.add(0);
    selectedTime = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  }

  @override
  Widget build(BuildContext context) {
    List<Staff> staffList = [];
    var staffs = jsonDecode(widget.service.staffs);
    log(widget.service.staffs.toString());
    log("staffs.toString()");
    log(staffs.toString());
    if (staffs != null) {
      log("staffs.toString()");
      log(staffs.toString());

      for (var element in staffs) {
        staffList.add(Staff.fromJson(element));
      }

      log(staffList.toString());
    }

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
              Navigator.pushNamed(context, Routes.servicesScreen,
                  arguments: widget.service);
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
        body: _body(context, staffList),
      ),
    );
  }

  _body(context, staffList) {
    return Stack(
      children: [
        _mainBody(context),
        Align(
          alignment: Alignment.bottomCenter,
          child: _createAppointmentButton(context, staffList),
        )
      ],
    );
  }

  _mainBody(context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
          height: _screenSize.height * 0.07,
          child: Text(
            widget.category.title,
            style: const TextStyle(
                color: Color(0xffAE9A7A),
                fontSize: 24,
                fontWeight: FontWeight.bold),
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
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(
                        30)) //BorderRadius.all(Radius.circular(20))
                ),
            child: Column(
              children: [ widget.category.rel_path != "" ?
                CachedNetworkImage(
                  imageUrl: widget.category.rel_path,
                  fit: BoxFit.cover,
                  imageBuilder: (context, imageProvider) => Container(
                    width: _screenSize.width * 0.9,
                    height: _screenSize.height * 0.23,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover),
                    ),
                  ),
                ) : SvgPicture.asset(
                "assets/svg/vassal-logo.svg",
                width: _screenSize.width * 0.9,
                height: _screenSize.height * 0.23,
                // color: Colors.black,
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/svg/points-specific-svg.svg",
                          width: _screenSize.width * 0.05,
                          height: _screenSize.width * 0.05,
                          // color: Colors.black,
                        ),
                        const SizedBox(width: 5),
                        Text("${widget.category.point} πόντοι")
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/svg/price-svg.svg",
                            width: _screenSize.width * 0.04,
                            height: _screenSize.width * 0.04,
                            // color: Colors.black,
                          ),
                          const SizedBox(width: 5),
                          Text(widget.category.price)
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/svg/time-svg.svg",
                          width: _screenSize.width * 0.05,
                          height: _screenSize.width * 0.05,
                          // color: Colors.black,
                        ),
                        const SizedBox(width: 5),
                        Text(widget.category.duration)
                      ],
                    )
                  ],
                ),
                Flexible(
                  child: Container(
                    width: _screenSize.width * 0.9,
                    // height: _screenSize.height * 0.7,
                    margin: EdgeInsets.only(bottom:
                    _screenSize.height * 0.06),
                    child:
                    SingleChildScrollView(
                      child: Text(
                        widget.category.description,
                        maxLines: 100,
                        style: const TextStyle(
                          fontSize: 16,
                          overflow: TextOverflow.ellipsis,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  _createAppointmentButton(BuildContext context, staffList) {
    Size _screenSize = MediaQuery.of(context).size;
    return TextButton(
        style: TextButton.styleFrom(
            minimumSize: Size(_screenSize.width, _screenSize.height * 0.07),
            backgroundColor: Colors.white,
            shadowColor: Colors.grey.withOpacity(0.7),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)))),
        onPressed: () {
          _showPopup(context, _popUpWidget(context, staffList));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.add,
              color: Color(0xffAE9A7A),
            ),
            Text("Κλείσε Ραντεβού", style: TextStyle(color: Colors.black))
          ],
        ));
  }

  _stafContainer(BuildContext context, String avatar, String name, bool selected, int index) {
    Size _screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        staffController.sink.add(index);
        setState(() {
          staffsIndex.clear();
          staffsIndex.add(index);
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16.0, top: 8.0),
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: CachedNetworkImage(
                    imageUrl: avatar,
                    fit: BoxFit.cover,
                    imageBuilder: (context, imageProvider) => Container(
                      width: _screenSize.width * 0.13,
                      height: _screenSize.width * 0.13,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                        border: selected ? Border.all(color: Style.primaryColor, width: 4)
                          : null,
                      ),
                    ),
                  ),
                ),
                selected ? Container(
                  width: _screenSize.width * 0.13,
                  height: _screenSize.width * 0.13,
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    "assets/svg/selected-icon.svg",
                    // color: Colors.black,
                  ),
                ) : Container()
              ],
            ),
            Text(
              name,
              style: TextStyle(color: selected ? Colors.black : Style.primaryColor),
            )
          ],
        ),
      ),
    );
  }

  _getDurationString(int duration) {
    int durationMod = duration % 60;

    if (durationMod > 0) {
      if (duration > 60) {
        return "${((duration - durationMod) ~/ 60).toString()}h ${durationMod.toString()}min";
      } else {
        return "${duration.toString()}min";
      }
    } else {
      return "${(duration ~/ 60).toString()}h";
    }
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
            staffsIndex.clear();
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
              StreamBuilder(
                stream: staffController.stream.asBroadcastStream(),
                initialData: 0,
                builder: (context, snapshot) {
                  return Container(
                    height: _screenSize.height * 0.1,
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: stafs.length,
                        itemBuilder: (BuildContext context, int index) {
                          bool selected = false;
                          if(snapshot.data != null) {
                            if( snapshot.data == index) {
                              selected = true;

                            }
                          }
                          return _stafContainer(
                              context, stafs[index].avatar, stafs[index].firstName, selected, index);
                        }),
                  );
                }
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
                  weekDays: const ['Δ', 'Τ', 'Τ', 'Π', 'Π', 'Σ', 'Κ'],
                  events: {},
                  onRangeSelected: (range) {

                  },
                  onDateSelected: (date) {
                    setState(() {
                      selectedTime = date;
                    });
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
                      color: Colors.black,
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
                        itemCount: General().times.length,
                        itemBuilder: (BuildContext context, int index) {
                          Color text = Colors.black;
                          Color bg = Color(0xffF6F6F6);
                          if(snapshot.data! == index) {
                            text = Colors.white;
                            bg = Style.primaryColor;
                          }
                          String hour = General().times[index].hour.toString();
                          String minutes = "";
                          if(General().times[index].minute != null && General().times[index].minute != 0) {
                            minutes = General().times[index].minute.toString();
                          }
                          return GestureDetector(
                            onTap: () {
                              timeController.sink.add(index);
                              setState(() {
                                time = index;
                              });
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
                              child: Text("$hour $minutes", style: TextStyle(fontWeight: FontWeight.bold, color: text),),
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
                  onPressed: () async {
                    log("(await staffController.stream.first).toString()");
                    log(stafs[staffsIndex[0]].id.toString());
                    log(widget.service.id.toString());
                    // log(selectedTime.toString());

                    int index = time;
                    int minutes = 0;
                    if(General().times[index].minute != null && General().times[index].minute != 0) {
                      minutes = General().times[index].minute;
                    }
                    int hours = General().times[index].hour;
                    selectedTime = selectedTime.add(Duration(hours: hours, minutes: minutes));
                    log(selectedTime.toString());
                    BlocProvider.of<ServicesBloc>(context)
                        .add(ServicesEvent.addAppointment((stafs[staffsIndex[0]].id).toString(), widget.category.id.toString(), selectedTime.toString()));
                    AppToast.showMessage("Το ραντεβού σας στάλθηκε με επιτυχία! Θα ενημερωθείτε για την εξελιξη της κρατησής σας.");
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
