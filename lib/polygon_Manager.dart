import 'package:flutter/material.dart';
import 'polygon_control.dart';
import 'dart:typed_data';
import 'dart:ui';



class PolygonManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PolygonState();
  }

}

class _PolygonState extends State<PolygonManager> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20.0),
                child: CustomPaint(
                  painter:  PolygonControl(),
                ),
              )
            ],
    );
  }
}

class Sky extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    Path path = new Path();
    var points = [Offset(0.0, 0.0), Offset(100.0, 0.0), Offset(100.0, 100.0), Offset(50.0, 100.0), Offset(50.0, 150.0), Offset(20.0, 150.0), Offset(20.0, 100.0), Offset(0.0, 100.0), Offset(0.0, 0.0)];
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
  bool shouldRepaint(Sky oldDelegate) {
    return false;
  }
}