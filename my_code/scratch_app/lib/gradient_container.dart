import 'package:flutter/material.dart';

import 'package:scratch_app/styled_text.dart';

const Alignment startAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colorsList});
  // GradientContainer({super.key, required, required this.colorsList});
  final List<Color> colorsList;
  // const GradientContainer(this.color1, this.color2, {super.key});
  // const GradientContainer({super.key, required, required this.colors});
  // final Color color1;
  // final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorsList,
          // colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText('Hi there!', Color.fromARGB(255, 62, 176, 39)),
      ),
    );
  }
}
