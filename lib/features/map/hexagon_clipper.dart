import 'package:flutter/material.dart';
import 'package:llh/features/map/hexagon_path.dart';

class HexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return HexagonPath().build(size);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
