import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('You answer x out of Y questions correctly'),
            const SizedBox(height: 30),
            const Text('List of questions and answers...'),
            const SizedBox(height: 30),
            OutlinedButton(
              onPressed: startQuiz,
              child: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
