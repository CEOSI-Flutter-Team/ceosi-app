import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NormalTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  const NormalTextWidget({
    super.key,
    required this.color,
    required this.fontSize,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.aleo(color: color, fontSize: fontSize),
    );
  }
}

class BoldTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final TextDecoration? decoration;

  const BoldTextWidget({
    super.key,
    required this.color,
    required this.fontSize,
    required this.text,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.alfaSlabOne(
          color: color, fontSize: fontSize, decoration: decoration),
    );
  }
}
