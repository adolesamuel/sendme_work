import 'dart:math';

import 'package:flutter/material.dart';

class HalfSemiCircle extends StatelessWidget {
  final double diameter;
  final Color color;

  const HalfSemiCircle({
    Key? key,
    this.diameter = 200,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(color),
      size: Size(diameter, diameter),
    );
  }
}

// This is the Painter class
class MyPainter extends CustomPainter {
  final Color color;

  MyPainter(this.color);

  Color lighten(Color c, [int percent = 10]) {
    assert(1 <= percent && percent <= 100);
    var p = percent / 100;
    return Color.fromARGB(
      c.alpha,
      c.red + ((255 - c.red) * p).round(),
      c.green + ((255 - c.green) * p).round(),
      c.blue + ((255 - c.blue) * p).round(),
    );
  }

  Color darken(Color c, [int percent = 10]) {
    assert(1 <= percent && percent <= 100);
    var f = 1 - percent / 100;
    return Color.fromARGB(
      c.alpha,
      (c.red * f).round(),
      (c.green * f).round(),
      (c.blue * f).round(),
    );
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = LinearGradient(colors: [
        color,
        color.computeLuminance() > 0.5 ? darken(color, 10) : lighten(color, 10)
      ]).createShader(Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2),
        height: size.height,
        width: size.width,
      ));

    //draw one semi circle
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.width, size.height / 2),
        height: size.height,
        width: size.width,
      ),
      pi,
      pi / 2,
      true,
      paint,
    );

    //draw other semi circle
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(0, size.height / 2),
        height: size.height,
        width: size.width,
      ),
      0,
      pi / 2,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
