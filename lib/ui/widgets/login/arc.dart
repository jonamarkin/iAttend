import 'package:flutter/material.dart';
import "dart:math" as math show pi;

import 'package:iAttend/business_logic/constants/appconstants.dart';

class MyArc extends StatelessWidget {
  final double diameter;

  const MyArc({Key? key, this.diameter = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(),
      size: Size(diameter, diameter),
    );
  }
}

// This is the Painter class
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = fontColor;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 20, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      math.pi / -2,
      math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
