import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/components/components.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Center(
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextComponent(
              text: currentQuestion.text,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 50,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Button(
                  text: answer,
                  fontSize: 19,
                  onTap: answerQuestion,
                  isStartButton: false,
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
