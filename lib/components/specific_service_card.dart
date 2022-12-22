import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vassal/blocs/services_bloc/services_bloc.dart';
import 'package:vassal/components/screen_arguments.dart';
import 'package:vassal/models/category_model.dart';
import 'package:vassal/models/service_model.dart';
import 'package:vassal/routes/routes.dart';

class SpecificServiceCard extends StatelessWidget {
  final Category category;
  final Service service;
  final Widget? widget;

  const SpecificServiceCard(
      {Key? key, required this.category, required this.service, this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery
        .of(context)
        .size;
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, Routes.  serviceScreen, arguments: ScreenArguments(
          service,
          category,
        ),);

        BlocProvider.of<ServicesBloc>(context)
            .add(ServicesEvent.goToCategory(category, service));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                category.rel_path != "" ?
                CachedNetworkImage(
                  imageUrl: category.rel_path,
                  fit: BoxFit.cover,
                  imageBuilder: (context, imageProvider) =>
                      Container(
                        width: _screenSize.width * 0.4,
                        height: _screenSize.height * 0.16,
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(const Radius.circular(15)),
                          image:
                          DecorationImage(image: imageProvider, fit: BoxFit.cover),
                        ),
                      ),
                ) : SvgPicture.asset(
                  "assets/svg/vassal-logo.svg",
                  width: _screenSize.width * 0.4,
                  height: _screenSize.height * 0.16,
                  // color: Color(0xff211E1E),
                ),
                const SizedBox(
                  width: 10
                ),
                Expanded(
                  child: Container(
                    height: _screenSize.height * 0.16,
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          category.title, style: const TextStyle(color: Color(0xffAE9A7A), overflow: TextOverflow.ellipsis), maxLines: 2,),
                        const SizedBox(
                            height: 5
                        ),
                        // Row(
                        //   children: [
                        //   SvgPicture.asset(
                        //     "assets/svg/points-specific-svg.svg",
                        //     width: _screenSize.width * 0.05,
                        //     height: _screenSize.width * 0.05,
                        //     // color: Color(0xff211E1E),
                        //   ),
                        //     const SizedBox(
                        //         width: 5
                        //     ),
                        //   Text(category.point.toString() + " πόντοι")
                        // ],),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: Row(children: [
                            SvgPicture.asset(
                              "assets/svg/price-svg.svg",
                              width: _screenSize.width * 0.04,
                              height: _screenSize.width * 0.04,
                              // color: Color(0xff211E1E),
                            ),
                            const SizedBox(
                                width: 5
                            ),
                            Flexible(child: Text(category.price.toString()))
                          ],),
                        ),
                        Row(children: [
                          SvgPicture.asset(
                            "assets/svg/time-svg.svg",
                            width: _screenSize.width * 0.05,
                            height: _screenSize.width * 0.05,
                            // color: Color(0xff211E1E),
                          ),
                          const SizedBox(
                              width: 5
                          ),
                          Flexible(child: Text(category.duration))
                        ],)
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
                height: 10
            ),
            Text(
              category.description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            GestureDetector(onTap: () {
              Navigator.pushNamed(context, Routes.  serviceScreen, arguments: ScreenArguments(
                service,
                category,
              ),);

              BlocProvider.of<ServicesBloc>(context)
                  .add(ServicesEvent.goToCategory(category, service));
            },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text("Δείτε περισσότερα", style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color(0xffAE9A7A)),),
                )),
            widget ?? Container()
          ],
        ),
      ),
    );
  }

  _getDurationString(int duration) {
    int durationMod = duration % 60;

    if (durationMod > 0) {
      if (duration > 60) {
        return "${((duration - durationMod) ~/ 60).toString()}h ${durationMod
            .toString()}min";
      } else {
        return "${duration.toString()}min";
      }
    } else {
      return "${(duration ~/ 60).toString()}h";
    }
  }
}
