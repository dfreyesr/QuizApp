import 'package:flutter/material.dart';
import 'package:quiz_app/Button.dart';

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
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Button(
            160,
            50,
            2,
            Colors.white,
            12,
            22,
            Colors.white,
            const Color.fromRGBO(97, 6, 55, 1),
            function,
          ),
        ],
      ),
    );
  }
}
