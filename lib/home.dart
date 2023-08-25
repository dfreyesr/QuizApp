import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(colors: [color2, color1], radius: 2.2),
      ),
      child: Center(
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
            OutlinedButton(
              onPressed: () {
                debugPrint('Received click');
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(160, 50)),
                side: MaterialStateProperty.all(
                  const BorderSide(width: 2, color: Colors.white),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                overlayColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return color1;
                    }
                    return Colors.transparent;
                  },
                ),
              ),
              child: const Text(
                'Start quiz',
                style: TextStyle(
                  color: Colors.white, // Change text color here
                  fontSize: 22, // Change text size here
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
