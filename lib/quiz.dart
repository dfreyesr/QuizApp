import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';
import 'package:quiz_app/questions_screen.dart';

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
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = HomePage(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
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
