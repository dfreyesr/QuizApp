import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button(this.width, this.height, this.borderSize, this.borderColor,
      this.radius, this.fontSize, this.textColor, this.pressedColor,
      {super.key});

  final double width;
  final double height;
  final double borderSize;
  final Color borderColor;
  final double radius;
  final double fontSize;
  final Color textColor;
  final Color pressedColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        debugPrint('Received click');
      },
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(width, height)),
        side: MaterialStateProperty.all(
          BorderSide(width: borderSize, color: borderColor),
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
      child: Text(
        'Start quiz',
        style: TextStyle(
          color: textColor, // Change text color here
          fontSize: fontSize, // Change text size here
        ),
      ),
    );
  }
}
