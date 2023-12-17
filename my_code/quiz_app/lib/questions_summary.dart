import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  renderMsg(
    String msg, {
    Color msgColor = const Color.fromARGB(255, 199, 187, 211),
    double msgFontSize = 13,
    FontWeight msgFontWeight = FontWeight.normal,
  }) {
    return Text(
      msg,
      style: TextStyle(
        color: msgColor,
        fontSize: msgFontSize,
        fontWeight: msgFontWeight,
      ),
    );
  }

  final List<Map<String, Object>> summaryData;
  final Color correctAnswerColor = Colors.green;
  final Color wrongAnswerColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 80),
                  Container(
                    // height: 30,
                    // width: 30,
                    // alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1),
                      color: (data['userAnswer'] == data['correctAnswer']
                          ? correctAnswerColor
                          : wrongAnswerColor),
                    ),
                    child: Text(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                      ((data['questionIndex'] as int) + 1).toString(),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        renderMsg(data['question'] as String, msgFontSize: 15),
                        const SizedBox(height: 3),
                        renderMsg(data['userAnswer'] as String,
                            msgColor: Colors.purpleAccent),
                        renderMsg(data['correctAnswer'] as String,
                            msgColor: Colors.tealAccent),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
