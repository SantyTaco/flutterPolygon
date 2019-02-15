import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:typed_data';
class PolygonControl extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = new Path();
    var points = [Offset(0.0, 0.0), Offset(300.0, 0.0), Offset(300.0, 400.0), Offset(100.0, 400.0), Offset(100.0, 500.0), Offset(0.0, 500.0), Offset(0.0, 0.0)];
    path.addPolygon(points, true);


    Paint paint = Paint();
    /*paint.style = PaintingStyle.fill;
    paint.color = Color.fromRGBO(255, 0, 0, 1.0);
    canvas.drawPath(path, paint);*/


    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2.0;
    paint.strokeJoin = StrokeJoin.round;
    paint.color = Color.fromRGBO(150, 150, 150, 1.0);
    canvas.drawPath(path, paint);
  }


  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}