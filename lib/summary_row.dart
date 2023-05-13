import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_quiz_app/question_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryRow extends StatelessWidget {
  final Map<String, Object> itemData;
  const SummaryRow(this.itemData, {super.key});

  @override
  Widget build(BuildContext context) {
    final String question = itemData['question'] as String;
    final String correctAnswer = itemData['correct_answer'] as String;
    final String userAnswer = itemData['user_answer'] as String;
    final int questionIndex = (itemData['question_index'] as int) + 1;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          questionIndex: questionIndex,
          isCorrectAnswer: correctAnswer == userAnswer,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                question,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                correctAnswer,
                style:
                    const TextStyle(color: Color.fromARGB(255, 202, 171, 252)),
              ),
              Text(
                userAnswer,
                style:
                    const TextStyle(color: Color.fromARGB(255, 181, 254, 246)),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}
