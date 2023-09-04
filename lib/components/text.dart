import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextComponent extends StatelessWidget {
  const TextComponent(
      {required this.text,
      required this.fontSize,
      required this.fontWeight,
      super.key});

  final Color textColor = Colors.white;
  final String text;
  final FontWeight fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.quicksand(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: TextAlign.center,
    );
  }
}
