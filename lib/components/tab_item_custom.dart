import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:shaped_bottom_bar/models/shaped_item_object.dart';

class OvalShape extends StatelessWidget {
  final double size;
  final Color? background;
  final Widget child;

  OvalShape(
      {required this.child,this.background = Colors.white, this.size = 50}); //required this.child,

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: size * 0.8,
      height: size * 1.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.elliptical(90, 90)),
          color: background),
      child: child,
    );
  }
}
