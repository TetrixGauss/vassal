import 'package:vassal/utils/keys/asset_keys.dart';
import 'package:flutter/material.dart';

import 'dart:ui' as ui;

import 'package:flutter/services.dart';

class LoginBackgroundClip extends CustomPainter {
  final Size size;

  LoginBackgroundClip({required this.size});

  @override
  void paint(Canvas canvas, Size size) async {
    size = this.size;
    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*0.03792135,size.height*0.3626761), Offset(size.width*0.8932584,size.height*0.8896714), [Color(0xff258D98).withOpacity(1),Color(0xff00858F).withOpacity(1)], [0,1]);

    Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
    paint_1_fill.shader = ui.Gradient.linear(Offset(size.width*0.7398031,size.height*0.1778190), Offset(size.width*-15.55100,size.height*-0.5283122), [Color(0xffED6B00).withOpacity(1),Color(0xffB47C4F).withOpacity(1)], [0,0.695266]);

    canvas.drawOval(Rect.fromCenter(center:Offset(size.width/5, -2 * size.height/10),width:size.width*1.3,height:size.width*1.23*3/2),paint_1_fill);
    canvas.drawOval(Rect.fromCenter(center:Offset(size.width*1.1, -1.5 * size.height/10),width:size.width*1.3,height:size.width*1.23*3/2),paint_0_fill);
    canvas.drawOval(Rect.fromCenter(center:Offset(size.width/5,size.height/1.2),width:size.width*3/2,height:size.width*1.06*3/2),paint_0_fill);

    // ui.Image image = (await loadImageAsset(AssetKeys.emmaLogo));
    // canvas.drawImage(image, Offset(0,0), Paint()..style=PaintingStyle.fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    // throw UnimplementedError();
    return true;
  }

  Future<ui.Image> loadImageAsset(String assetName) async {
    final data = await rootBundle.load(assetName);
    return decodeImageFromList(data.buffer.asUint8List());
  }

}