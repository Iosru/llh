import 'package:flutter/material.dart';
import 'package:llh/features/map/hexagon.dart';
import 'package:llh/features/map/hexagon_clipper.dart';
import 'package:llh/features/map/hexagon_painter.dart';

class HexagonWidget extends StatefulWidget {
  const HexagonWidget({super.key, required this.hexagon});

  final Hexagon hexagon;
  int get x => hexagon.x;
  int get y => hexagon.y;
  double get radius => hexagon.radius;
  double get diameter => (radius * 2);

  @override
  State<HexagonWidget> createState() => _HexagonWidgetState();
}

class _HexagonWidgetState extends State<HexagonWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: widget.hexagon.offset.dx,
      top: widget.hexagon.offset.dy,
      child: ClipPath(
        clipper: HexagonClipper(radius: widget.radius),
        child: GestureDetector(
          onTap: () => (),
          child: SizedBox(
            height: widget.diameter,
            width: widget.diameter,
            child: CustomPaint(
              painter: HexagonPainter(radius: widget.radius),
              child: Container(
                decoration: BoxDecoration(
                  color: widget.hexagon.color,
                ),
                child: Center(
                  child: Text(
                    "${widget.x}, ${widget.y}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//TODO: Have our widgets customized by the properties of the Hexagon model.