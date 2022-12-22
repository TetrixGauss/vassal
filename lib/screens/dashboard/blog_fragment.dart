import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vassal/blocs/blog_bloc/blog_bloc.dart';
import 'package:vassal/components/blog_card.dart';
import 'package:vassal/components/card_skeleton.dart';
import 'package:vassal/routes/routes.dart';
import 'package:vassal/utils/constants/style.dart';
import 'package:vassal/utils/status.dart';

class BlogFragment extends StatelessWidget {
  const BlogFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return BlocConsumer<BlogBloc, BlogState>(
      listener: (context, state) {
        if(state.blogStatus == BlogStatus.goToBlog) {
          Navigator.pushNamed(context, Routes.blogSpecificScreen, arguments: state.blog);
        }
      },
      builder: (context, state) {
        if(state.blogStatus == BlogStatus.blogLoading) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 16, right: 8, bottom: 8),
                height: _screenSize.height * 0.07,
                child: Row(
                  children: const [
                    Text("Vasal", style: TextStyle(color: Color(0xff211E1E), fontSize: 24, fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Blog", style: TextStyle(color: Style.primaryColor, fontSize: 24, fontWeight: FontWeight.bold) ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
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
            children: [
              Container(
                padding: const EdgeInsets.only(left: 16, right: 8, bottom: 8),
                height: _screenSize.height * 0.07,
                child: Row(
                  children: const [
                    Text("Vasal", style: TextStyle(color: Color(0xff211E1E), fontSize: 24, fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Blog", style: TextStyle(color: Style.primaryColor, fontSize: 24, fontWeight: FontWeight.bold) ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Style.loginBackgroundColor,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(30)) //BorderRadius.all(Radius.circular(20))
                ),
                height: _screenSize.height * 0.72,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: state.blogs.length,
                    itemBuilder: (BuildContext context, int index) {
                      return BlogCard(
                        blog: state.blogs[index],
                        onTap: () {
                          BlocProvider.of<BlogBloc>(context)
                              .add(BlogEvent.goToBlog(state.blogs[index]));
                        },
                      );
                    }),
              )
            ],
          );
        }
      },
    );
  }
}
