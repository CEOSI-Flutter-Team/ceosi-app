import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NormalTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final TextAlign? textAlign;

  const NormalTextWidget({
    super.key,
    required this.color,
    this.textAlign,
    required this.fontSize,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.aleo(color: color, fontSize: fontSize),
    );
  }
}

class BoldTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Function()? onTap;
  final Color color;
  final TextDecoration? decoration;
  final TextAlign? textAlign;
  const BoldTextWidget({
    super.key,
    required this.color,
    this.onTap,
    this.textAlign,
    required this.fontSize,
    required this.text,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        textAlign: textAlign,
        style: GoogleFonts.alfaSlabOne(color: color, fontSize: fontSize),
      ),
    );
  }
}
