import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});
  @override
  Widget build(BuildContext context) {
    return const Text(
      style: TextStyle(
        fontSize: 25,
        color: Colors.purple,
      ),
      "I need a longer sentence!",
    );
  }
}
