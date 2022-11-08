import 'package:flutter/material.dart';

<<<<<<< HEAD
import '../constants/colors.dart';

=======
// ignore: must_be_immutable
>>>>>>> sprint-addded-linter-reward
class ButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final double buttonWidth;
  final double buttonHeight;
  final double borderRadius;
  final Widget textWidget;
  final Color color;

  const ButtonWidget({
    super.key,
    required this.onPressed,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.textWidget,
    this.borderRadius = 0,
    this.color = CustomColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: buttonWidth,
      height: buttonHeight,
      color: color,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
      child: textWidget,
    );
  }
}
