import 'package:flutter/material.dart';

class InkWellWidget extends StatefulWidget {
  final VoidCallback onTap;
  final Widget childWidget;

  const InkWellWidget({
    super.key,
    required this.onTap,
    required this.childWidget,
  });

  @override
  State<InkWellWidget> createState() => _InkWellWidgetState();
}

class _InkWellWidgetState extends State<InkWellWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white.withOpacity(0.0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 9, 5, 0),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          splashColor: Colors.grey,
          onTap: widget.onTap,
          child: widget.childWidget,
        ),
      ),
    );
  }
}
