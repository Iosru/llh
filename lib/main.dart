import 'package:flutter/material.dart';
import 'package:llh/features/map/hexagon.dart';
import 'package:llh/features/map/hexagon_grid.dart';
import 'package:llh/features/map/hexagon_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double size = 64;
    HexagonGrid hg = HexagonGrid(height: 9, width: 9);
    hg = hg.copyWith(
        hexagons: hg.generateMap(
            Hexagon(height: size, width: size, color: Colors.transparent)));
    List<Hexagon> hexagons = hg.hexagons;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Last Light\'s Hope',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 17, 0, 45)),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Stack(
                children: [
                  for (Hexagon h in hexagons)
                    Positioned(
                      left: h.position.dx,
                      top: h.position.dy,
                      child: HexagonWidget(hexagon: h),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//Contemplate extending InteractiveViewer for the map?