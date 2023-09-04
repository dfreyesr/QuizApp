import 'package:flutter/material.dart';
import 'package:quiz_app/text.dart';

class Button extends StatelessWidget {
  const Button(
      {required this.text,
      required this.fontSize,
      required this.onTap,
      required this.isStartButton,
      super.key});

  final String text;
  final double width = 200;
  final double height = 50;
  final double borderSize = 2;
  final Color borderColor = Colors.white;
  final double radius = 12;
  final double fontSize;
  final Color pressedColor = const Color.fromRGBO(97, 6, 55, 1);
  final void Function() onTap;
  final bool isStartButton;
  final double paddingButton = 10;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onTap,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.all(
            paddingButton,
          ),
        ),
        minimumSize: MaterialStateProperty.all(
          Size(
            width,
            height,
          ),
        ),
        side: MaterialStateProperty.all(
          BorderSide(
            width: borderSize,
            color: borderColor,
          ),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return pressedColor;
            }
            return Colors.transparent;
          },
        ),
      ),
      label: TextComponent(
        text: text,
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
      ),
      icon: Icon(
        isStartButton ? Icons.send : Icons.arrow_forward_ios,
        color: Colors.white,
      ),
    );
  }
}
