import 'package:flutter/material.dart';

class Resource extends StatefulWidget {
  final Resource resource;
  const Resource({super.key, required this.resource});
  @override
  State<Resource> createState() => _ResourceState();
}

class _ResourceState extends State<Resource> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      child: Column(
        children: [
          const Row(
            children: [
              Text('Name'),
              Text('id'),
            ],
          ),
          Container(),
        ],
      ),
    );
  }
}
