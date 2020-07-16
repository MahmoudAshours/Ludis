import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: StraightLine(),
      child: Container(height: 100),
    );
  }
}

class StraightLine extends CustomPainter {
  Paint _paint = Paint()
    ..color = Colors.blue
    ..strokeWidth = 3;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(0, 0), Offset(0, 100), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
