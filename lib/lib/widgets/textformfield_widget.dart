import 'package:ceosi_app/lib/constants/colors.dart';
import 'package:flutter/material.dart';

class TextformfieldWidget extends StatelessWidget {
  late String label;
  late Color colorFill;

  late bool isObscure;
  Widget? suffixIcon;
  late TextEditingController textFieldController;

  TextformfieldWidget(
      {super.key,
      required this.label,
      this.suffixIcon,
      required this.isObscure,
      required this.colorFill,
      required this.textFieldController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        obscureText: isObscure,
        controller: textFieldController,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          fillColor: colorFill,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: primaryColor),
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: label,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}
