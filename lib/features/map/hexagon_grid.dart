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
    for (int x = 0; x < width; x++) {
      for (int y = 0; y < height; y++) {
        hexagon = hexagon.copyWith(x: x, y: y);
        hexagon = hexagon.getOffset();
        hexagons.add(hexagon);
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
