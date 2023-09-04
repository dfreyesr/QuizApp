import 'package:flutter/material.dart';
import 'package:quiz_app/components/button.dart';
import 'package:quiz_app/components/text.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    required this.chosenAnswers,
    super.key,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> summaryData = getSummaryData();
    final int numTotalQuestions = questions.length;
    final int numCorrectQuestions = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextComponent(
                text:
                    'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 30,
              ),
              QuestionsSummary(summaryData),
              const SizedBox(
                height: 30,
              ),
              Button(
                  text: "Restart test",
                  fontSize: 22,
                  onTap: onRestart,
                  isStartButton: true)
            ],
          ),
        ),
      ),
    );
  }
}
