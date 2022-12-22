import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vassal/blocs/home_bloc/home_bloc.dart';
import 'package:vassal/blocs/services_bloc/services_bloc.dart';
import 'package:vassal/models/blog_model.dart';
import 'package:vassal/models/service_model.dart';

class ServiceCard extends StatelessWidget {
  final Service service;
  final Function onTap;
  final double size;
  const ServiceCard({Key? key, required this.service, required this.onTap, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        BlocProvider.of<HomeBloc>(context)
            .add(HomeEvent.goToService(service.id));
        BlocProvider.of<ServicesBloc>(context)
            .add(ServicesEvent.goToService(service));
      },
      child: Stack(
        children: [
          Container(
            height: _screenSize.height * 0.15,
            decoration: const BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.all(
                    Radius.circular(30)) //BorderRadius.all(Radius.circular(20))
            ),
            child: CachedNetworkImage(
              imageUrl: service.rel_path,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                      const Radius.circular(20)),
                  image: DecorationImage(
                      image: imageProvider, fit: BoxFit.cover),
                ),
              ),
              placeholder: (context, url) => Center(child: new CircularProgressIndicator()),
              errorWidget: (context, url, error) => Center(child: new Icon(Icons.error)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child:  Container(
                margin: EdgeInsets.only(bottom: size * 0.1, right: 5, left: 5),
                height: size * 0.2,
                width: _screenSize.width * 0.9,
                // padding: const EdgeInsets.only( right: 5, left: 5),
                decoration: BoxDecoration(
                    color: const Color(0xff000000).withOpacity(0.4),

                    borderRadius: const BorderRadius.all(
                        const Radius.circular(30)) //BorderRadius.all(Radius.circular(20))
                ),

                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                      const Radius.circular(30)),
                  child: BackdropFilter(
                    filter:  ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                        height: size * 0.2,
                        width: _screenSize.width * 0.9,
                        alignment: Alignment.center,
                        child: Text(service.title, style: const TextStyle(color: Colors.white), overflow: TextOverflow.ellipsis, maxLines: 1,)),
              ),)
            ),
          )
        ],
      ),
    );
  }
}
