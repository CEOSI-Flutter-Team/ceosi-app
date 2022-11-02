import 'package:ceosi_app/constants/colors.dart';
import 'package:flutter/material.dart';

class AuthtextformfieldWidget extends StatelessWidget {
  late String label;
  late Color colorFill;

  late bool isObscure;
  Widget? suffixIcon;
  late TextEditingController textFieldController;

  AuthtextformfieldWidget(
      {super.key,
      required this.label,
      this.suffixIcon,
      this.colorFill = Colors.white,
      this.isObscure = false,
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
            borderSide: const BorderSide(width: 1, color: CustomColors.primary),
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
