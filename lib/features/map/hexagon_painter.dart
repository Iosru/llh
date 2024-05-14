import 'package:flutter/material.dart';
import 'package:llh/features/map/hexagon.dart';
import 'package:llh/features/map/hexagon_path.dart';

//The HexagonPainter class is mainly used for making the borders around the hexagons, while the HexagonClipper makes the shape and background color.
class HexagonPainter extends CustomPainter {
  final Hexagon hexagon;

  HexagonPainter({super.repaint, required this.hexagon});

  @override
  void paint(Canvas canvas, Size size) {
    Path path = HexagonPath().build(size);
    Color borderColor;
    if (hexagon.isVisible) {
      borderColor = hexagon.borderColor;
    } else {
      borderColor = Colors.white;
    }
    Paint paint = Paint()
      ..color = borderColor.withOpacity(1.0)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = hexagon.borderWidth
      ..style = PaintingStyle.stroke;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
