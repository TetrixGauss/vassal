import 'package:shimmer/shimmer.dart';
import 'package:vassal/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:vassal/blocs/home_bloc/home_bloc.dart';
import 'package:vassal/components/blog_card.dart';
import 'package:vassal/components/card_skeleton.dart';
import 'package:vassal/components/service_card.dart';
import 'package:vassal/components/skeleton.dart';

import 'package:vassal/routes/routes.dart';
import 'package:vassal/utils/app_toast.dart';
import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/keys/asset_keys.dart';
import 'package:vassal/utils/keys/locale_keys.dart';
import 'package:vassal/utils/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.homeStatus == HomeStatus.goToBlog) {
          Navigator.pushNamed(context, Routes.blogSpecificScreen,
              arguments: state.blog);
        } else if (state.homeStatus == HomeStatus.goToService) {
          Navigator.pushNamed(context, Routes.servicesScreen,
              arguments: state.service);
        }
      },
      builder: (context, state) {
        if (state.homeStatus == HomeStatus.homeLoading) {
          return Column(
            children: [
              _headerLoading(
                context,
              ),
              SingleChildScrollView(
                  child: _dashboardLoading(context, state.paidUser, state)),
            ],
          );
        } else {
          return Column(
            children: [
              _header(context, state),
              SingleChildScrollView(
                  child: _dashboard(context, state.paidUser, state)),
            ],
          );
        }

        // _emptyFieldHome(_screenSize, context);
      },
    );
  }

  _header(context, HomeState state) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(8),
      width: _screenSize.width,
      height: _screenSize.height * 0.1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Γεία σου,",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(
            state.user.name,
            style: TextStyle(
                color: Color(0xffAE9A7A),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  _headerLoading(context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(8),
      width: _screenSize.width,
      height: _screenSize.height * 0.1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Γεία σου,",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Shimmer.fromColors(
              baseColor: Style.primaryColor,
              highlightColor: Style.primaryColor.withOpacity(0.4),
              child: Skeleton(
                  width: _screenSize.width * 0.7,
                  height: _screenSize.height * 0.04,
                  color: Style.primaryColor))
        ],
      ),
    );
  }

  _dashboard(BuildContext context, bool paidUser, HomeState state) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      height: _screenSize.height * 0.68,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 5,
                spreadRadius: 1)
          ],
          color: Style.loginBackgroundColor,
          borderRadius: BorderRadius.all(
              Radius.circular(30)) //BorderRadius.all(Radius.circular(20))
          ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            _banner(),
            paidUser
                ? Column(
                    children: [
                      // _appointments(context, state),
                      _services(context, state),
                      _blogs(context, state)
                    ],
                  )
                : _blogs(context, state)
          ],
        ),
      ),
    );
  }

  _dashboardLoading(BuildContext context, bool paidUser, HomeState state) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      height: _screenSize.height * 0.68,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 5,
                spreadRadius: 1)
          ],
          color: Style.loginBackgroundColor,
          borderRadius: BorderRadius.all(
              Radius.circular(30)) //BorderRadius.all(Radius.circular(20))
          ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            // _appointmentsLoading(context, state),
            _servicesLoading(context, state),
            _blogsLoading(context, state)
          ],
        ),
      ),
    );
  }

  _banner() {
    return Container();
  }

  _appointments(context, HomeState state) {
    Size _screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Τα ραντεβού μου",
            style: TextStyle(color: Color(0xff211E1E), fontSize: 16),
          ),
          SizedBox(
            height: _screenSize.height * 0.03,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: _screenSize.height * 0.17,
                  width: _screenSize.width * 0.6,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(
                          20)) //BorderRadius.all(Radius.circular(20))
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: state.appointments.length > 0 ?
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Flexible(
                                child: Text(
                                  DateFormat("EEEE,\ndd MMM", "el_GR").format(DateTime.parse(state.appointments[0]["start_date"])),
                                  style: TextStyle(
                                      color: Color(0xffAE9A7A), fontSize: 15),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              DateFormat("HH:mm").format(DateTime.parse(state.appointments[0]["start_date"])),

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
                      Flexible(child: Text(state.appointments.length > 0 ? state.appointments[0]["sub_service"]["title"] : "---", style:TextStyle(color: Color(0xff211E1E), fontSize: 15),maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  BlocProvider.of<DashboardBloc>(context)
                      .add(DashboardEvent.servicesEvent());
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: _screenSize.height * 0.17,
                  width: _screenSize.width * 0.3,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(
                          20)) //BorderRadius.all(Radius.circular(20))
                      ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Color(0xffA6A6A6),
                        size: _screenSize.width * 0.1,
                      ),
                      Flexible(
                          child: Text("Νέο Ραντεβού",
                              style: TextStyle(
                                  color: Color(0xffA6A6A6), fontSize: 16),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center))
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

  _appointmentsLoading(context, HomeState state) {
    Size _screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Τα ραντεβού μου",
            style: TextStyle(color: Color(0xff211E1E), fontSize: 16),
          ),
          SizedBox(
            height: _screenSize.height * 0.03,
          ),
          Shimmer.fromColors(
            baseColor: Style.primaryColor,
            highlightColor: Style.primaryColor.withOpacity(0.4),
            child: CardSkeleton(),
          )
        ],
      ),
    );
  }

  _services(context, HomeState state) {
    Size _screenSize = MediaQuery.of(context).size;
    double _heightIndi = _screenSize.height * 0.15;
    double _heightGen = 0;
    if (state.services.length % 2 == 0) {
      _heightGen = (state.services.length / 2) *
          (_heightIndi + _screenSize.height * 0.02);
    } else {
      _heightGen = ((state.services.length - 1) / 2) *
          (_heightIndi + _screenSize.height * 0.02);
    }
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Υπηρεσίες",
            style: TextStyle(color: Color(0xff211E1E), fontSize: 16),
          ),
          SizedBox(
            height: _screenSize.height * 0.03,
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: _heightGen,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: state.services.length,
              itemBuilder: (BuildContext context, int index) {
                return ServiceCard(
                    service: state.services[index],
                    size: _heightIndi,
                    onTap: () {
                      // BlocProvider.of<HomeBloc>(context)
                      //     .add(HomeEvent.goToService(state.services[index].id));
                    });
              },
            ),
          )
        ],
      ),
    );
  }

  _servicesLoading(context, HomeState state) {
    Size _screenSize = MediaQuery.of(context).size;
    double _heightIndi = _screenSize.height * 0.15;
    double _heightGen = 0;
    if (state.services.length % 2 == 0) {
      _heightGen = (state.services.length / 2) *
          (_heightIndi + _screenSize.height * 0.02);
    } else {
      _heightGen = ((state.services.length - 1) / 2) *
          (_heightIndi + _screenSize.height * 0.02);
    }
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Υπηρεσίες",
            style: TextStyle(color: Color(0xff211E1E), fontSize: 16),
          ),
          SizedBox(
            height: _screenSize.height * 0.03,
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: _heightIndi * 2.5,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2,
              //     childAspectRatio: 1.4,
              //     crossAxisSpacing: 10,
              //     mainAxisSpacing: 10
              // ),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Shimmer.fromColors(
                  baseColor: Style.primaryColor,
                  highlightColor: Style.primaryColor.withOpacity(0.4),
                  child: CardSkeleton(),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  _blogs(BuildContext context, HomeState state) {
    Size _screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Το Blog μας",
                style: TextStyle(color: Color(0xff211E1E), fontSize: 16),
              ),
              TextButton(
                onPressed: () {
                  BlocProvider.of<DashboardBloc>(context)
                      .add(DashboardEvent.blogFromHomeEvent());
                },
                child: Text("Δείτε περισσότερα"),
              )
            ],
          ),
          Container(
            height: _screenSize.height * 0.43,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: state.blogs.length,
                itemBuilder: (BuildContext context, int index) {
                  return BlogCard(
                    blog: state.blogs[index],
                    onTap: () {
                      BlocProvider.of<HomeBloc>(context)
                          .add(HomeEvent.goToBlog(state.blogs[index]));
                    },
                  );
                }),
          )
        ],
      ),
    );
  }

  _blogsLoading(BuildContext context, HomeState state) {
    Size _screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          Text(
            "Το Blog μας",
            style: TextStyle(color: Color(0xff211E1E), fontSize: 16),
          ),
          //   TextButton(
          //     onPressed: () {
          //       BlocProvider.of<DashboardBloc>(context)
          //           .add(DashboardEvent.blogFromHomeEvent());
          //     },
          //     child: Text("Δείτε περισσότερα"),
          //   )
          // ],
          // ),
          SizedBox(
            height: _screenSize.height * 0.03,
          ),
          Container(
            height: _screenSize.height * 0.43,
            child: ListView.builder(
                // scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Shimmer.fromColors(
                    baseColor: Style.primaryColor,
                    highlightColor: Style.primaryColor.withOpacity(0.4),
                    child: CardSkeleton(),
                  );
                }),
          )
        ],
      ),
    );
  }
}
