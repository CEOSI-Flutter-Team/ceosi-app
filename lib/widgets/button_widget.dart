import 'package:ceosi_app/constants/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final double buttonWidth;
  final double buttonHeight;
  final double borderRadius;
  final Widget textWidget;

  const ButtonWidget({
    super.key,
    required this.onPressed,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.textWidget,
    this.borderRadius = 0,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: buttonWidth,
      height: buttonHeight,
      color: CustomColors.primary,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
      child: textWidget,
    );
  }
}
