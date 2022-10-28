import 'package:ceosi_app/constants/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  late VoidCallback onPressed;

  late double buttonWidth;
  late double buttonHeight;
  late double? borderRadius = 0;
  late Widget textWidget;

  ButtonWidget(
      {super.key,
      required this.onPressed,
      required this.buttonHeight,
      required this.buttonWidth,
      required this.textWidget,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: buttonWidth,
        height: buttonHeight,
        color: primaryColor,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(borderRadius == null ? 0 : borderRadius!),
        ),
        child: textWidget);
  }
}
