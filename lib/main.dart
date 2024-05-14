import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:llh/features/map/hexagon.dart';
import 'package:llh/features/map/hexagon_grid.dart';
import 'package:llh/features/map/hexagon_widget.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double size = 64;
    HexagonGrid hg = HexagonGrid(height: 10, width: 15);
    hg = hg.copyWith(
        hexagons: hg.generateMap(Hexagon(
            height: size,
            width: size,
            color: Colors.amber,
            borderColor: Colors.orange,
            borderWidth: 3)));
    // hg = hg.replaceHexagon(Hexagon(
    //     height: size,
    //     width: size,
    //     color: Colors.pink,
    //     borderColor: Colors.purpleAccent,
    //     x: 4,
    //     y: 4));
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
    );
  }
}

//Contemplate extending InteractiveViewer for the map?