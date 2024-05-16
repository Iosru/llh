import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  final Paint _paint = Paint()
    ..color = Colors.red
    ..strokeWidth = 2.0;
  final Offset startPoint;
  final Offset endPoint;

  LinePainter({required this.startPoint, required this.endPoint});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(startPoint, endPoint, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
