import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  final Offset circleOffset;
  Line(this.circleOffset);
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: StraightLine(circleOffset),
      child: Container(height: 100),
    );
  }
}

class StraightLine extends CustomPainter {
  final circleOffset;
  StraightLine(this.circleOffset);
  Paint _paint = Paint()
    ..color = Colors.blue
    ..strokeWidth = 3;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(0, 100), Offset(circleOffset.dy,0), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
