import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:llh/features/map/hexagon.dart';

part 'hexagon_grid.freezed.dart';

@freezed
abstract class HexagonGrid with _$HexagonGrid {
  const HexagonGrid._();

  factory HexagonGrid({
    required int gridHeight,
    required int gridWidth,
    @Default(0) double gridZoom,
    @Default(Offset.zero) Offset gridOffset,
    @Default(false) bool isGenerated,
    List<Hexagon>? hexagons,
  }) = _HexagonGrid;

  List<Hexagon> generateMap() {
    List<Hexagon> hexagons = [];
    if (isGenerated) {
      Random random = Random();
      double roll;
      for (int x = 0; x < gridWidth; x++) {
        for (int y = 0; y < gridHeight; y++) {
          roll = random.nextDouble() * 100;
          Hexagon hexagon = Hexagon();
          hexagon = hexagon.setCoordinates(x, y);
          hexagon = hexagon.generateOffset(
              x.toDouble(), y.toDouble(), gridZoom, gridOffset);
          if (roll <= 5) {
            hexagon = hexagon.copyWith(color: Colors.blue);
            hexagons.add(hexagon);
          } else if (roll <= 25) {
            hexagon = hexagon.copyWith(color: Colors.red);
            hexagons.add(hexagon);
          } else {
            hexagon = hexagon.copyWith(color: Colors.green);
            hexagons.add(hexagon);
          }
        }
      }
    }
    return hexagons;
  }
}
