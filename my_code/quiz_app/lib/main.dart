// import 'dart:ui';

// import 'dart:html';
// import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 67, 12, 161),
              Color.fromARGB(255, 35, 3, 92)
            ],
          )),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
