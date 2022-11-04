import 'package:flutter/material.dart';

class DropDownButtonFormFieldWidget extends StatefulWidget {
  const DropDownButtonFormFieldWidget(
      {super.key,
      required this.label,
      required this.value,
      required this.items,
      required this.padding,
      this.dropdownIconcolor,
      this.dropdownbackgroundcolor,
      this.dropdownitemcolor,
      this.onChanged,
      this.hint,
      this.hintText});

  final String label;
  final Object? value;
  final Color? dropdownitemcolor;
  final Color? dropdownbackgroundcolor;
  final Color? dropdownIconcolor;
  final List<DropdownMenuItem<Object>> items;
  final void Function(Object?)? onChanged;
  final String? hintText;
  final Widget? hint;
  final EdgeInsetsGeometry padding;

  @override
  State<DropDownButtonFormFieldWidget> createState() =>
      _DropDownButtonFormFieldWidgetState();
}

class _DropDownButtonFormFieldWidgetState
    extends State<DropDownButtonFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: widget.dropdownbackgroundcolor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: DropdownButtonFormField(
                alignment: Alignment.center,
                hint: widget.hint,
                iconEnabledColor: widget.dropdownIconcolor,
                dropdownColor: Colors.grey,
                style: TextStyle(color: widget.dropdownitemcolor),
                decoration: InputDecoration(
                    alignLabelWithHint: true,
                    border: InputBorder.none,
                    hoverColor: Colors.white,
                    focusColor: Colors.white,
                    fillColor: Colors.grey,
                    hintStyle: const TextStyle(color: Colors.black),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: widget.label,
                    labelStyle:
                        const TextStyle(color: Color.fromARGB(255, 13, 13, 13)),
                    errorStyle: const TextStyle(
                      color: Colors.red,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black))),
                value: widget.value,
                isExpanded: true,
                onChanged: widget.onChanged,
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return '${widget.label} is required';
                  }
                  return null;
                },
                items: widget.items,
              ),
            ),
          ]),
    );
  }
}
