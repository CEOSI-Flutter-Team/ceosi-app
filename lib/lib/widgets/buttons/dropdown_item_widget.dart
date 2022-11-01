import 'package:ceosi_app/lib/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DropDownItem extends StatelessWidget {
  late String label;

  DropDownItem({
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(children: [
      NormalTextWidget(color: Colors.black, fontSize: 12, text: label),
    ]));
  }
}
