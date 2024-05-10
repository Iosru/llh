import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Offset _offset = const Offset(0, 0);

  @override
  void initState() {
    _offset = const Offset(0, 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_offset.toString())),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        child: SizedBox.expand(
          child: InteractiveViewer(
            onInteractionUpdate: (details) => setState(() {
              _offset = details.focalPoint;
            }),
            boundaryMargin: const EdgeInsets.all(1000.0),
            minScale: 0.1,
            maxScale: 3,
            child: Center(
              child: TextButton(
                child: const Text('Drag me'),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
