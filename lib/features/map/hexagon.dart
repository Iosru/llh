import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hexagon.freezed.dart';

@unfreezed
abstract class Hexagon with _$Hexagon {
  const Hexagon._();

  factory Hexagon({
    @Default(0) int x,
    @Default(0) int y,
    @Default(24) double radius,
    @Default(Offset(0, 0)) Offset offset,
    @Default(Colors.blue) Color color,
    @Default(75.0) double chance,
  }) = _Hexagon;

  Hexagon setCoordinates(int x, int y) {
    return copyWith(x: x, y: y);
  }

  Hexagon generateOffset(
      double x, double y, double gridZoom, Offset gridOffset) {
    double spacingFactor = 0.9;
    double scalingFactor = 1.025;
    double offsetX = 0;
    double offsetY = 0;

    offsetY = ((((radius * 2) * (spacingFactor - 0.11)) * y) * scalingFactor +
            (radius / 8)) +
        radius;
    offsetX = (y % 2 == 0)
        ? ((((radius * 2) * spacingFactor - 0.1) * x) * scalingFactor -
                radius) +
            radius
        : (((((radius * 2) * spacingFactor) * x)) * scalingFactor + radius) -
            (radius / 8.25);

    double centerX = offsetX + gridOffset.dx * gridZoom;
    double centerY = offsetY + gridOffset.dy * gridZoom;

    return copyWith(offset: Offset(centerX, centerY));
  }
}
