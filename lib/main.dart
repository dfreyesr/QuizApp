import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HomePage(
          Color.fromRGBO(97, 6, 55, 1), Color.fromRGBO(239, 74, 140, 1)),
    );
  }
}
