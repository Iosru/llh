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
    HexagonGrid hg =
        HexagonGrid(gridHeight: 10, gridWidth: 10, isGenerated: true);
    hg = hg.copyWith(hexagons: hg.generateMap());
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
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  for (Hexagon h in hg.hexagons!) HexagonWidget(hexagon: h),
                ],
              )),
        ),
      ),
    );
  }
}

//Contemplate extending InteractiveViewer for the map?