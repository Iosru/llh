import 'dart:math';
import 'package:flutter/material.dart';

class HexagonPath {
  Path build(Size size) {
    List<Point> corners = calculateCorners(size);
    Path path = Path();
    corners.asMap().forEach((index, point) {
      if (index == 0) {
        path.moveTo(point.x.toDouble(), point.y.toDouble());
      } else {
        path.lineTo(point.x.toDouble(), point.y.toDouble());
      }
    });
    path.close();
    return path;
  }

  List<Point> calculateCorners(Size size) {
    List<Point> corners = [];
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.height / 2;
    final multipliers = [3, 5, 7, 9, 11, 1, 3];
    double x;
    double y;
    for (int i = 0; i < 7; i++) {
      x = radius * cos(pi * 2 * (multipliers[i] * 30 / 360)) + center.dx;
      y = radius * sin(pi * 2 * (multipliers[i] * 30 / 360)) + center.dy;
      corners.add(Point(x, y));
    }
    return corners;
  }
}
