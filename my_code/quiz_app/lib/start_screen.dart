import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);
  startQuiz() {}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 199, 187, 211),
              // height: 5,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white),
            child: const Text(
              'Start Quiz',
              // style: TextStyle(
              //     fontSize: 14, color: Color.fromARGB(255, 199, 187, 211)),
            ),
          )
        ],
      ),
    );
  }
}
