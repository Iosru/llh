import 'dart:math';
import 'package:flutter/material.dart';

class HexagonPainter extends CustomPainter {
  final double radius;
  // final double elevation; //TODO: Implement elevation into our hexagon painter.

  HexagonPainter({super.repaint, required this.radius});

  @override
  void paint(Canvas canvas, Size size) {
    Paint hexagon = Paint()
      ..isAntiAlias = true
      ..color = Colors.white.withOpacity(1.0)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;
    final center =
        Offset(size.width / 2, size.height / 2); //Should one of them be height?
    final multipliers = [1, 3, 5, 7, 9, 11, 1];
    for (int i = 0; i < 6; i++) {
      canvas.drawLine(
          Offset(
            radius * cos(pi * 2 * (multipliers[i] * 30 / 360)) + center.dx,
            radius * sin(pi * 2 * (multipliers[i] * 30 / 360)) + center.dy,
          ),
          Offset(
            radius * cos(pi * 2 * (multipliers[i + 1] * 30 / 360)) + center.dx,
            radius * sin(pi * 2 * (multipliers[i + 1] * 30 / 360)) + center.dy,
          ),
          hexagon);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
