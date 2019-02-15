import 'package:flutter/material.dart';

import 'polygon_Manager.dart';

void main() => runApp(Polygon());

class Polygon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Polygon"),
        ),
        body: PolygonManager(),
      ),
    );
  }
}

