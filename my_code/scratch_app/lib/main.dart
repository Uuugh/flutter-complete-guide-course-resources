import 'package:flutter/material.dart';

import 'package:scratch_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colorsList: [Colors.blueAccent, Colors.grey]),
        // body: GradientContainer(Colors.pink, Colors.grey),
      ),
    ),
  );
}
