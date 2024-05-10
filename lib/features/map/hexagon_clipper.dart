import 'package:flutter/material.dart';
import 'package:llh/features/map/hexagon_path.dart';

class HexagonClipper extends CustomClipper<Path> {
  final double radius;

  const HexagonClipper({required this.radius});

  @override
  Path getClip(Size size) {
    return HexagonPath().build(size, radius);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
