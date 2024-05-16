import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:llh/features/map/hexagon.dart';

part 'hexagon_grid.freezed.dart';

@freezed
abstract class HexagonGrid with _$HexagonGrid {
  const HexagonGrid._();

  factory HexagonGrid({
    required int height,
    required int width,
    @Default([]) List<Hexagon> hexagons,
  }) = _HexagonGrid;

  //This will generate a list of basic hexagons of the default values.
  List<Hexagon> generateMap(Hexagon hexagon) {
    List<Hexagon> hexagons = [];
    Random random = Random();
    for (int x = 0; x < width; x++) {
      for (int y = 0; y < height; y++) {
        int chance = random.nextInt(101);
        hexagon = hexagon.copyWith(x: x, y: y);
        hexagon = hexagon.getOffset();
        if (chance <= 3) {
          hexagon = hexagon.copyWith(
              color: const Color.fromARGB(255, 212, 116, 228),
              borderColor: const Color.fromARGB(255, 213, 17, 151));
        } else if (chance <= 6) {
          hexagon = hexagon.copyWith(
              color: const Color.fromARGB(255, 152, 97, 36),
              borderColor: const Color.fromARGB(255, 85, 44, 6));
        } else if (chance <= 12) {
          hexagon = hexagon.copyWith(
              color: const Color.fromARGB(255, 81, 28, 242),
              borderColor: const Color.fromARGB(255, 195, 238, 138));
        } else if (chance <= 25) {
          hexagon = hexagon.copyWith(
              color: Colors.lightGreen, borderColor: Colors.green);
        } else if (chance <= 50) {
          hexagon = hexagon.copyWith(
              color: Colors.red,
              borderColor: const Color.fromARGB(255, 198, 13, 0));
        } else if (chance <= 75) {
          hexagon = hexagon.copyWith(
              color: Colors.lightBlue, borderColor: Colors.blue);
        } else {
          hexagon =
              hexagon.copyWith(color: Colors.orange, borderColor: Colors.amber);
        }
        if (x >= 5 && x <= 7) {
          if (y >= 5 && y <= 7) {
            hexagon = hexagon.copyWith(isVisible: true, fog: 0.0);
          }
        }
        if (x == 13) {
          if (y == 1) {
            hexagon = hexagon.copyWith(isVisible: true, fog: 0.0);
          }
        }
        if (x == 11) {
          if (y == 9) {
            hexagon = hexagon.copyWith(isVisible: true, fog: 0.0);
          }
        }
        hexagons.add(hexagon);
        hexagon = hexagon.copyWith(isVisible: false, fog: 1.0);
        chance = random.nextInt(101);
      }
    }
    return hexagons;
  }

  Hexagon getHexagonByCoordinates(int x, int y) {
    Hexagon hexagon = Hexagon();
    for (Hexagon h in hexagons) {
      if (h.x == x && h.y == y) {
        hexagon = h;
      }
    }
    return hexagon;
  }

  HexagonGrid replaceHexagon(Hexagon hexagon) {
    List<Hexagon> temp = [];
    for (Hexagon h in hexagons) {
      if (h.x == hexagon.x && h.y == hexagon.y) {
        hexagon = hexagon.getOffset();
        temp.add(hexagon);
      } else {
        temp.add(h);
      }
    }
    return copyWith(hexagons: temp);
  }
}
