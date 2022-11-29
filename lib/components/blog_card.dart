import 'dart:convert';
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vassal/models/blog_model.dart';
import 'package:vassal/routes/routes.dart';

class BlogCard extends StatelessWidget {
  final Blog blog;
  final Function onTap;
  const BlogCard({Key? key, required this.blog, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    String serviceTitle = "";
    jsonDecode(blog.services).forEach((v) async {
      serviceTitle = v["title"];
    });
    String locale = Locale('el', 'GR').toString();
    return GestureDetector(
      onTap: () {
        log("here");
        // onTap;
        Navigator.pushNamed(context, Routes.blogSpecificScreen, arguments: blog);
      },
      child: Container(
        height: _screenSize.height * 0.35,
        margin: EdgeInsets.only(bottom: 10, right: 10, top: 10),
        child: Column(
          children: [
            Container(
              width: _screenSize.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30))//BorderRadius.all(Radius.circular(20))
              ),
              child: Stack(
                children: [
                  Container(
                    height: _screenSize.height * 0.27,
                    decoration: BoxDecoration(
                      color: Colors.white60,
                        borderRadius: BorderRadius.all(
                            Radius.circular(30)) //BorderRadius.all(Radius.circular(20))
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
                              borderRadius: BorderRadius.all(
                                  Radius.circular(30)),
                            image: DecorationImage(
                                image: imageProvider, fit: BoxFit.cover),
                          ),
                        ),
                        placeholder: (context, url) => Center(child: new CircularProgressIndicator()),
                        errorWidget: (context, url, error) => Center(child: new Icon(Icons.error)),
                      ) : SvgPicture.asset(
                        "assets/svg/vassal-logo.svg",
                        // width: _screenSize.width * 0.065,
                        // height: _screenSize.width * 0.065,
                        // color: Colors.black,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      child: Row(
                        children: [
                          // Container(
                          //   margin: EdgeInsets.only(right: 5),
                          //   padding: EdgeInsets.all(5),
                          //   decoration: BoxDecoration(
                          //       color: Color(0xffAE9A7A),
                          //
                          //       borderRadius: BorderRadius.all(Radius.circular(30))//BorderRadius.all(Radius.circular(20))
                          //   ),
                          //   child: Text(serviceTitle, style: TextStyle(color: Colors.white)),
                          // ),
                          Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color(0xffAE9A7A),

                                  borderRadius: BorderRadius.all(Radius.circular(30))
                                       //BorderRadius.all(Radius.circular(20))
                              ),
                              child: Text(DateFormat('dd MMMM', locale).format(DateTime.parse(blog.publish_at)), style: TextStyle(color: Colors.white)))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: _screenSize.width * 0.8,
              child: Text(blog.title, style: TextStyle(color: Color(0xffAE9A7A), fontSize: 16), maxLines: 3, overflow: TextOverflow.ellipsis,),
            )
          ],
        ),
      ),
    );
  }
}
