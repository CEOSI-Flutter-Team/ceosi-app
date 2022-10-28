import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NormalTextWidget extends StatelessWidget {
  late String text;

  late double fontSize;
  late Color color;

  NormalTextWidget(
      {required this.color, required this.fontSize, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.aleo(color: color, fontSize: fontSize),
    );
  }
}

class BoldTextWidget extends StatelessWidget {
  late String text;

  late double fontSize;
  late Color color;

  BoldTextWidget(
      {required this.color, required this.fontSize, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.alfaSlabOne(color: color, fontSize: fontSize),
    );
  }
}
