import 'package:ceosi_app/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../constants/labels.dart';

class FlutterCatalogTextFormField extends StatelessWidget {
  const FlutterCatalogTextFormField(
      {super.key, required this.controller, this.keyboardType, this.maxLines});

  final TextEditingController controller;
  final TextInputType? keyboardType;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autofocus: true,
      maxLength: 50,
      cursorRadius: const Radius.circular(20.0),
      cursorColor: CustomColors.primary,
      keyboardType: keyboardType,
      maxLines: maxLines,
      toolbarOptions: const ToolbarOptions(
          copy: true, cut: true, paste: true, selectAll: true),
      validator: (value) {
        return '';
      },
      decoration: InputDecoration(
        isDense: true,
        label: const Text(
          Labels.title,
          style: TextStyle(
            color: CustomColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(width: 1.0, color: CustomColors.primary),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(width: 1.0, color: CustomColors.primary),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              const BorderSide(width: 1.0, color: CustomColors.greyAccent),
        ),
      ),
    );
  }
}
