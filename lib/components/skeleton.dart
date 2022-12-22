import 'package:flutter/material.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({Key? key, this.height, this.width, this.color}) : super(key: key);

  final double? height, width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color!.withOpacity(0.5) ?? Colors.black.withOpacity(0.4),
        borderRadius: const BorderRadius.all(Radius.circular(16))
      ),
    );
  }
}
