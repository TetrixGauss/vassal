import 'dart:convert';
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart' as html;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vassal/blocs/blog_bloc/blog_bloc.dart';
import 'package:vassal/models/blog_model.dart';
import 'package:vassal/routes/routes.dart';
import 'package:vassal/utils/app_toast.dart';
import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/status.dart';

class BlogSpecificScreen extends StatelessWidget {
  final Blog blog;

  const BlogSpecificScreen({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Style.secondaryColor,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
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
              }, icon:  SvgPicture.asset(
              "assets/svg/message.svg",
              width: _screenSize.width * 0.065,
              height: _screenSize.width * 0.065,
              // color: Color(0xff211E1E),
            ),),
            IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.profileScreen);
              },
              icon: const Icon(Icons.account_circle_outlined, color: Colors.black),
            )
          ],
        ),
        body: _body(context),
      ),
    );
  }

  _body(context) {
    Size _screenSize = MediaQuery.of(context).size;
    String serviceTitle = "";
    jsonDecode(blog.services).forEach((v) async {
      serviceTitle = v["title"];
    });

    String locale = Locale('el', 'GR').toString();
    return BlocConsumer<BlogBloc, BlogState>(listener: (context, state) {
      if (state.blogStatus == BlogStatus.initBlog) {
        log("blog_specific_screen");
      }
    }, builder: (context, state) {
      return Container(
        // height: ,
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 0),
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 5,
                  spreadRadius: 1)
            ],
            color: Style.loginBackgroundColor,
            borderRadius: const BorderRadius.only(topLeft:
                Radius.circular(30) , topRight: Radius.circular(30)) //BorderRadius.all(Radius.circular(20))
            ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: _screenSize.height * 0.25,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 0),
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        spreadRadius: 1)
                  ],
                  color: Style.loginBackgroundColor,
                  borderRadius: const BorderRadius.all(Radius.circular(
                      30)) //BorderRadius.all(Radius.circular(20))
                  ),
              child: Center(
                child:
                blog.rel_path != "" ?
                CachedNetworkImage(
                  imageUrl: blog.rel_path,
                  fit: BoxFit.cover,
                  imageBuilder: (context, imageProvider) => Container(
                    // width: 80.0,
                    // height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(const Radius.circular(30)),
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover),
                    ),
                  ),
                  placeholder: (context, url) =>
                      Center(child: new CircularProgressIndicator()),
                  errorWidget: (context, url, error) =>
                      Center(child: new Icon(Icons.error)),
                ) : SvgPicture.asset(
                  "assets/svg/vassal-logo.svg",
                  // width: _screenSize.width * 0.065,
                  // height: _screenSize.width * 0.065,
                  // color: Color(0xff211E1E),
                ),
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  blog.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                  style: const TextStyle(color: Style.primaryColor, fontSize: 18),
                )),
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  serviceTitle != "" ?
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        color: const Color(0xffAE9A7A),
                        borderRadius: const BorderRadius.all(Radius.circular(
                            30)) //BorderRadius.all(Radius.circular(20))
                        ),
                    child: Text(serviceTitle,
                        style: const TextStyle(color: Colors.white)),
                  ): Container(),
                  Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          color: const Color(0xffAE9A7A),
                          borderRadius: const BorderRadius.all(Radius.circular(30))
                          //BorderRadius.all(Radius.circular(20))
                          ),
                      child: Text(
                          DateFormat('dd MMMM', locale).format(DateTime.parse(blog.publish_at)),
                          style: const TextStyle(color: Colors.white)))
                ],
              ),
            ),
            Flexible(
              child: SingleChildScrollView(
                child: html.Html(
                  data: blog.description,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
