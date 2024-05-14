import 'package:flutter/material.dart';
import 'package:llh/features/map/hexagon.dart';
import 'package:llh/features/map/hexagon_clipper.dart';
import 'package:llh/features/map/hexagon_painter.dart';

class HexagonWidget extends StatefulWidget {
  const HexagonWidget({super.key, required this.hexagon});
  final Hexagon hexagon;
  @override
  State<HexagonWidget> createState() => _HexagonWidgetState();
}

class _HexagonWidgetState extends State<HexagonWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          painter: HexagonPainter(hexagon: widget.hexagon),
          child: SizedBox(
            height: widget.hexagon.height,
            width: widget.hexagon.width,
          ),
        ),
        ClipPath(
          clipper: HexagonClipper(),
          child: GestureDetector(
            onTap: () => {widget.hexagon.setVisible(true)},
            child: Container(
                decoration: BoxDecoration(
                  color: widget.hexagon.color,
                ),
                height: widget.hexagon.height,
                width: widget.hexagon.width,
                child: !widget.hexagon.isVisible
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(widget.hexagon.fog),
                        ),
                      )
                    : Container()),
          ),
        ),
        // Positioned(
        //   left: widget.hexagon.width / 3,
        //   top: widget.hexagon.height / 3,
        //   child: Text(
        //     '${widget.hexagon.x}, ${widget.hexagon.y}',
        //     style: const TextStyle(color: Colors.black),
        //   ),
        // ),
      ],
    );
  }
}
