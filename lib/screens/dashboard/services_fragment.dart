import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vassal/blocs/services_bloc/services_bloc.dart';
import 'package:vassal/components/card_skeleton.dart';
import 'package:vassal/components/service_card.dart';
import 'package:vassal/routes/routes.dart';
import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/status.dart';

class ServicesFragment extends StatelessWidget {
  const ServicesFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    double _heightIndi = _screenSize.height * 0.15;
    return BlocConsumer<ServicesBloc, ServicesState>(
      listener: (context, state) {
        if(state.serviceStatus == ServiceStatus.goToService) {
          Navigator.pushReplacementNamed(context, Routes.servicesScreen, arguments: state.service);
        } else if(state.serviceStatus == ServiceStatus.goToCategory) {
          Navigator.pushReplacementNamed(context, Routes.specificServiceScreen, arguments: state.category);
        }
      },
      builder: (context, state) {
        if(state.serviceStatus == ServiceStatus.servicesLoading) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                height: _screenSize.height * 0.07,
                child: const Text(
                  "Υπηρεσίες",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 0),
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          spreadRadius: 1)
                    ],
                    color: Style.loginBackgroundColor,
                    borderRadius: const BorderRadius.all(
                        const Radius.circular(30)) //BorderRadius.all(Radius.circular(20))
                ),
                height: _screenSize.height * 0.72,
                child: ListView.builder(
                  // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 2,
                  //     childAspectRatio: 1.4,
                  //     crossAxisSpacing: 10,
                  //     mainAxisSpacing: 10
                  // ),
                  itemCount: 6,
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
          );
        } else {
          return Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                height: _screenSize.height * 0.07,
                child: const Text(
                  "Υπηρεσίες",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 0),
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          spreadRadius: 1)
                    ],
                    color: Style.loginBackgroundColor,
                    borderRadius: const BorderRadius.all(
                        const Radius.circular(30)) //BorderRadius.all(Radius.circular(20))
                ),
                height: _screenSize.height * 0.72,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10
                  ),
                  itemCount: state.services.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ServiceCard(
                        service: state.services[index],
                        size: _heightIndi,
                        onTap: () {
                          BlocProvider.of<ServicesBloc>(context)
                              .add(ServicesEvent.goToService(state.services[index]));
                        });
                  },
                ),
              )
            ],
          );
        }
      },
    );
  }
}
