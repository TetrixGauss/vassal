import 'package:vassal/utils/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PopupLayout extends ModalRoute {
  double? top;
  double? bottom;
  double? left;
  double? right;
  Color? bgColor;
  final Widget child;

  @override
  Duration get transitionDuration => Duration(milliseconds: 500);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color? get barrierColor =>
      bgColor == null ? Style.secondaryTextColor.withOpacity(0.7) : bgColor;

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => false;

  PopupLayout(
      {Key? key,
        required this.bgColor,
        required this.child,
        this.top,
        this.bottom,
        this.left,
        this.right});

  @override
  Widget buildPage(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      ) {
    // if (top == null) this.top = 10;
    // if (bottom == null) this.bottom = 20;
    // if (left == null) this.left = 20;
    // if (right == null) this.right = 20;

    return GestureDetector(
      onTap: () {
        // call this method here to hide soft keyboard
        SystemChannels.textInput.invokeMethod('TextInput.hide');
      },
      child: Material(
        // This makes sure that text and other content follows the material style
        type: MaterialType.transparency,
        //type: MaterialType.canvas,
        // make sure that the overlay content is not cut off
        child: SafeArea(
          bottom: true,
          child: _buildOverlayContent(context),
        ),
      ),
    );
  }

  Widget _buildOverlayContent(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: this.bottom?? 0.0,
          left: this.left?? 0.0,
          right: this.right?? 0.0,
          top: this.top?? 0.0),
      child: child,
    );
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    // You can add your own animations for the overlay content
    const begin = Offset(0.0, 1.0);
    const end = Offset.zero;
    final tween = Tween(begin: begin, end: end);
    final offsetAnimation = animation.drive(tween);
    const curve = Curves.easeInOutCubic;
    final curvedAnimation = CurvedAnimation(
      parent: animation,
      curve: curve,
    );
    return SlideTransition(
      position: tween.animate(curvedAnimation),
      child: child,
    );
    return FadeTransition(
      opacity: animation,
      child: ScaleTransition(
        scale: animation,
        child: child,
      ),
    );
  }
}
