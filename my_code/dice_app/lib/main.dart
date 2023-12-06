import 'package:flutter/material.dart';

import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colorsList: [
          Colors.blueAccent,
          Color.fromARGB(255, 28, 29, 29),
        ]),
        // body: GradientContainer(Colors.pink, Colors.grey),
      ),
    ),
  );
}
