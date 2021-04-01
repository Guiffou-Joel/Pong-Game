import 'package:flutter/material.dart';
import 'package:pong_game/ball.dart';
import 'package:pong_game/bat.dart';

class Pong extends StatefulWidget {
  @override
  _PongState createState() => _PongState();
}

class _PongState extends State<Pong> {
  double width;
  double height;
  double posX = 0;
  double posY = 0;
  double batWidth;
  double batheight;
  double batPosition = 0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        height = constraints.maxHeight;
        width = constraints.maxWidth;
        batWidth = width / 5;
        batheight = height / 20;
        return Stack(
          children: <Widget>[
            Positioned(child: Ball(), top: 0),
            Positioned(child: Bat(batWidth, batheight), bottom: 0)
          ],
        );
      },
    );
  }
}
