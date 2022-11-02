import 'package:ceosi_app/lib/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class DrawerButtonWidget extends StatelessWidget {
  late VoidCallback onPressed;
  late IconData icon;
  late String text;

  DrawerButtonWidget({
    required this.icon,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  icon,
                  color: CustomColors().primaryColor,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              NormalTextWidget(
                  color: CustomColors().primaryColor, fontSize: 14, text: text),
            ],
          ),
        ),
      ),
    );
  }
}
