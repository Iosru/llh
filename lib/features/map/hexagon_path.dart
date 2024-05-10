import 'dart:math';

import 'package:flutter/material.dart';

class HexagonPath {
  Path build(Size size, double radius) {
    final path = Path();
    final center = Offset(size.width / 2, size.height / 2);

    for (int i = 0; i < 6; i++) {
      final angle = pi * i / 3 + pi / 6;
      double x = center.dx + radius * cos(angle);
      x = num.parse(x.toStringAsFixed(3)).toDouble();
      double y = center.dy + radius * sin(angle);
      y = num.parse(y.toStringAsFixed(3)).toDouble();
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();
    return path;
  }
}
//TODO: Fix the fuzziness on hexagons generated towards the latter half of the map.