import 'package:flutter/material.dart';
import 'package:quiz_app/components/components.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.function, {super.key});

  final void Function() function;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 60,
          ),
          const TextComponent(
            text: "Learn Flutter the fun way!",
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 24,
          ),
          Button(
            text: "Start Quiz",
            fontSize: 24,
            onTap: function,
            isStartButton: true,
          ),
        ],
      ),
    );
  }
}
