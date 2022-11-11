import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

// ignore: must_be_immutable
class TextformfieldWidget extends StatefulWidget {
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
  final Key? formKey;

  const TextformfieldWidget(
      {super.key,
      required this.label,
      this.formKey,
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
  State<TextformfieldWidget> createState() => _TextformfieldWidgetState();
}

class _TextformfieldWidgetState extends State<TextformfieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        maxLines: widget.maxLines,
        obscureText: widget.isObscure,
        controller: widget.textFieldController,
        style: const TextStyle(color: Colors.black),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '${widget.label} is required';
          }

          return null;
        },
        decoration: InputDecoration(
          errorStyle: const TextStyle(color: Colors.red),
          hintText: widget.hintText,
          floatingLabelStyle: GoogleFonts.alfaSlabOne(),
          hintStyle: const TextStyle(color: Colors.black),
          suffixIcon: widget.suffixIcon,
          fillColor: widget.colorFill,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(widget.radius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: CustomColors.primary),
            borderRadius: BorderRadius.circular(widget.radius),
          ),
          labelText: widget.label,
          floatingLabelBehavior: widget.floatingLabelBehavior,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: widget.labelfontSize,
          ),
        ),
      ),
    );
  }
}
