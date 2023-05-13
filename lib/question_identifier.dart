import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  final int questionIndex;
  final bool isCorrectAnswer;

  const QuestionIdentifier(
      {required this.questionIndex, required this.isCorrectAnswer, super.key});

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex;
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrectAnswer
              ? const Color.fromARGB(255, 150, 195, 241)
              : const Color.fromARGB(255, 249, 133, 241),
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Color.fromARGB(255, 22, 2, 56)),
      ),
    );
  }
}
