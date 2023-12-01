import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.white, Colors.red]),
          ),
          child: const Center(
            child: Text(
              style: TextStyle(
                fontSize: 25,
                color: Colors.purple,
              ),
              "I need a longer sentence!",
            ),
          ),
        ),
      ),
    ),
  );
}
