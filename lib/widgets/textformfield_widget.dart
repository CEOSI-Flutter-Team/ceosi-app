import 'package:flutter/material.dart';

class TextformfieldWidget extends StatelessWidget {
  late String label;
  late Color colorFill;

  late TextEditingController textFieldController;

  TextformfieldWidget(
      {required this.label,
      required this.colorFill,
      required this.textFieldController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        controller: textFieldController,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          fillColor: colorFill,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.black),
            borderRadius: BorderRadius.circular(5),
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
