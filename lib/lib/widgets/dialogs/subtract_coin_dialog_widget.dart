import 'package:ceosi_app/lib/widgets/buttons/button_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../text_widget.dart';
import '../textformfield_widget.dart';

class SubtractCoinDialogWidget extends StatelessWidget {
  SubtractCoinDialogWidget({super.key});

  final pointsEarnedController = TextEditingController();

  final commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(
        child: SizedBox(
          height: 400,
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const BoldTextWidget(
                  color: Colors.white,
                  fontSize: 16,
                  text: 'SUBTRACTING CYBER COIN'),
              const SizedBox(
                height: 10,
              ),
              TextformfieldWidget(
                  label: 'Coin losed through',
                  isObscure: false,
                  colorFill: Colors.white,
                  textFieldController: pointsEarnedController),
              TextformfieldWidget(
                  label: 'Comment',
                  isObscure: false,
                  colorFill: Colors.white,
                  textFieldController: commentController),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                  const BoldTextWidget(
                      color: Colors.white, fontSize: 34, text: '1,000'),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              ButtonWidget(
                  borderRadius: 100,
                  onPressed: () {},
                  buttonHeight: 50,
                  buttonWidth: 220,
                  textWidget: const BoldTextWidget(
                      color: primaryColor, fontSize: 18, text: 'CONTINUE'),
                  color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
