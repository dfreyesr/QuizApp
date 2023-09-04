import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/home.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var currentScreen = "home-screen";

  void switchScreen() {
    setState(() {
      currentScreen = "questions-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        currentScreen = "results-screen";
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      currentScreen = "home-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen;

    switch (currentScreen) {
      case "questions-screen":
        activeScreen = QuestionsScreen(
          onSelectAnswer: chooseAnswer,
        );
        break;
      case "results-screen":
        activeScreen = ResultsScreen(
            chosenAnswers: selectedAnswer, onRestart: restartQuiz);
        break;
      default:
        activeScreen = HomePage(switchScreen);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                widget.color2,
                widget.color1,
              ],
              radius: 2.2,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
