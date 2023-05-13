import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/summary_row.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionsSummary(this.summaryData, {super.key});

  @override
  Widget build(context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryRow(data);
          }).toList(),
        ),
      ),
    );
  }
}
