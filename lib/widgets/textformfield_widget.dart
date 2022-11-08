import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

// ignore: must_be_immutable
class TextformfieldWidget extends StatelessWidget {
  final String label;
  final Color colorFill;
  final double radius;
  final bool isObscure;
  final Widget? suffixIcon;
  final TextEditingController textFieldController;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final double labelfontSize;
  final int maxLines;
  final String? hintText;

  const TextformfieldWidget(
      {super.key,
      required this.label,
      this.maxLines = 1,
      this.hintText,
      this.labelfontSize = 12.0,
      this.radius = 10,
      this.floatingLabelBehavior,
      this.suffixIcon,
      this.colorFill = Colors.white,
      this.isObscure = false,
      required this.textFieldController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        maxLines: maxLines,
        obscureText: isObscure,
        controller: textFieldController,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: hintText,
          floatingLabelStyle: GoogleFonts.alfaSlabOne(),
          hintStyle: const TextStyle(color: Colors.black),
          suffixIcon: suffixIcon,
          fillColor: colorFill,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(radius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: CustomColors.primary),
            borderRadius: BorderRadius.circular(radius),
          ),
          labelText: label,
          floatingLabelBehavior: floatingLabelBehavior,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: labelfontSize,
          ),
        ),
      ),
    );
  }
}
