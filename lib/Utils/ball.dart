import 'package:flutter/material.dart';
import 'package:ludis/Utils/line.dart';

class Ball extends StatelessWidget {
  final circleOffset;

  const Ball({Key key, this.circleOffset}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Line(circleOffset),
        Draggable(
          feedback: Ball(
            circleOffset: circleOffset,
          ),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
