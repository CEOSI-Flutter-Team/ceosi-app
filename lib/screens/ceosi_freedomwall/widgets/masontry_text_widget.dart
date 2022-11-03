import 'package:flutter/material.dart';

class MasonryTextWidget extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final double? fontSize;

  const MasonryTextWidget({
    super.key,
    this.textAlign,
    this.fontSize,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'lato',
        color: Colors.black87,
      ),
    );
  }
}
