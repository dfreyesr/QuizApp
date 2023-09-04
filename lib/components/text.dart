import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextComponent extends StatelessWidget {
  const TextComponent(
      {required this.text,
      required this.fontSize,
      required this.fontWeight,
      this.textColor = Colors.white,
      this.textAlign = TextAlign.center,
      super.key});

  final Color textColor;
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.quicksand(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }
}
