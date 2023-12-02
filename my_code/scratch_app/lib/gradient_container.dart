import 'package:flutter/material.dart';

import 'package:scratch_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.white, Colors.red]),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
