import 'dart:math';

import 'package:flutter/material.dart';

class IntroObjects extends StatelessWidget {
  const IntroObjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _MyPainter(),
      size: const Size(200, 200),
    );
  }
}

class _MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint orangePaint = Paint()..color = const Color(0xffF0B28E);
    Paint purplePaint = Paint()..color = const Color(0xffA2ABFF);
    Paint greyPaint = Paint()..color = const Color(0xffC9D5DF);
    Paint whitePaint = Paint()..color = const Color(0xffFFFFFF);

    canvas.drawRect(
        Rect.fromCenter(
          center: Offset(size.width / 2, 80),
          width: 12,
          height: size.height / 9,
        ),
        orangePaint);

    canvas.drawArc(
        Rect.fromCenter(
          center: Offset(size.width / 1.8, 80 * 1.75),
          width: 70,
          height: 70,
        ),
        -pi / 4,
        -pi,
        true,
        purplePaint);

    canvas.drawArc(
        Rect.fromCenter(
          center: Offset(size.width / 1.8, 80 * 2),
          width: 170,
          height: 170,
        ),
        pi * 0.95,
        -pi,
        true,
        greyPaint);

    canvas.drawArc(
        Rect.fromCenter(
          center: Offset(size.width / 1.8, 80 * 3.23),
          width: 25,
          height: 25,
        ),
        0,
        2 * pi,
        true,
        whitePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
