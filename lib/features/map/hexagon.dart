import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hexagon.freezed.dart';

@unfreezed
abstract class Hexagon with _$Hexagon {
  const Hexagon._();
  factory Hexagon({
    @Default(32) double height,
    @Default(32) double width,
    @Default(0) int x,
    @Default(0) int y,
    @Default(Offset(0, 0)) Offset position,
    @Default(Colors.amber) Color color,
    @Default(Colors.orange) Color borderColor,
    @Default(4) double borderWidth,
    @Default('') String icon,
  }) = _Hexagon;

  Hexagon getOffset() {
    double x;
    double y;
    //Calculations for the size of a pointy hexagon.
    double size = width / sqrt(3);

    if (this.y % 2 == 0) {
      x = ((sqrt(3) * size) * this.x) + ((sqrt(3) * size) / 2);
    } else {
      x = (sqrt(3) * size) * this.x;
    }
    y = ((3 / 2) * size) * this.y;
    return copyWith(position: Offset(x, y));
  }
}
