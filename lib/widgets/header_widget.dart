import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      width: double.infinity,
      height: 150,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
              BoldTextWidget(color: Colors.white, fontSize: 28, text: 'HOME'),
              const SizedBox(
                width: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
