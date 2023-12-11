import 'package:flutter/material.dart';

// import 'package:quiz_app/questions_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {Key? key}) : super(key: key);
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: .5,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
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
          OutlinedButton.icon(
            onPressed: startQuiz,
            // onPressed: () {
            //   startQuiz();
            // },
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(150, 255, 255, 255)),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
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
