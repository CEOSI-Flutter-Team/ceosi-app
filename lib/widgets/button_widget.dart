import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  late VoidCallback onPressed;

  late double buttonWidth;
  late double buttonHeight;
  late double? borderRadius = 0;

  late Widget textWidget;

  late Color buttonColor;

  ButtonWidget(
      {required this.onPressed,
      required this.buttonHeight,
      required this.buttonWidth,
      required this.textWidget,
      required this.buttonColor,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: buttonWidth,
        height: buttonHeight,
        color: buttonColor,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(borderRadius == null ? 0 : borderRadius!),
        ),
        child: textWidget);
  }
}
