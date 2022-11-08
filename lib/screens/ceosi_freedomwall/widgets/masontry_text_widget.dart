import 'package:flutter/material.dart';

class MasonryTextWidget extends StatefulWidget {
  final String text;
  final TextAlign? textAlign;
  final double? fontSize;
  final String? fontFamily;

  final TextStyle? style;

  const MasonryTextWidget({
    super.key,
    this.textAlign,
    this.style,
    this.fontFamily,
    this.fontSize,
    required this.text,
  });

  @override
  State<MasonryTextWidget> createState() => _MasonryTextWidgetState();
}

class _MasonryTextWidgetState extends State<MasonryTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(textAlign: widget.textAlign, widget.text, style: widget.style);
  }
}
