import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.startQuiz, required this.chosenAnswers});
  final void Function() startQuiz;

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'questionIndex': i,
        'question': questions[i].text,
        'correctAnswer': questions[i].answers[0],
        'userAnswer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final int numTotalQuestions = (questions.length);
    final numCorrectQuestions = summaryData.where((data) {
      return data['userAnswer'] == data['correctAnswer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 199, 187, 211),
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
                'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly'),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(200, 255, 255, 255)),
              onPressed: startQuiz,
              label: const Text('Restart Quiz!'),
              icon: const Icon(Icons.restart_alt),
            )
          ],
        ),
      ),
    );
  }
}
