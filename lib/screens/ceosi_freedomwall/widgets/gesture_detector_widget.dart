import 'package:flutter/material.dart';

class GestureDetectorWidget extends StatefulWidget {
  final VoidCallback onTap;
  final Widget childWidget;

  const GestureDetectorWidget({
    super.key,
    required this.onTap,
    required this.childWidget,
  });

  @override
  State<GestureDetectorWidget> createState() => _GestureDetectorWidgetState();
}

class _GestureDetectorWidgetState extends State<GestureDetectorWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: widget.childWidget,
    );
  }
}
