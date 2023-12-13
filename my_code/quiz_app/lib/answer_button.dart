import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.answerText,
    required this.onTap,
    super.key,
  });
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 180, 37, 70),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
      child: Text(answerText),
    );
  }
}
