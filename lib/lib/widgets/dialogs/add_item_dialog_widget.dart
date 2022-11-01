import 'package:ceosi_app/lib/constants/colors.dart';
import 'package:ceosi_app/lib/widgets/text_widget.dart';
import 'package:ceosi_app/lib/widgets/textformfield_widget.dart';
import 'package:flutter/material.dart';

import '../buttons/button_widget.dart';

class AddItemDialogWidget extends StatelessWidget {
  late var itemNameController = TextEditingController();
  late var pointsEqualController = TextEditingController();

  AddItemDialogWidget({
    required this.itemNameController,
    required this.pointsEqualController,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(
        child: SizedBox(
          height: 510,
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextformfieldWidget(
                  label: 'Item Name',
                  isObscure: false,
                  colorFill: Colors.white,
                  textFieldController: itemNameController),
              TextformfieldWidget(
                  label: 'Coins Equivalent',
                  isObscure: false,
                  colorFill: Colors.white,
                  textFieldController: pointsEqualController),
              const SizedBox(
                height: 10,
              ),
              const NormalTextWidget(
                  color: Colors.white, fontSize: 12, text: 'Item Category'),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const NormalTextWidget(
                          color: primaryColor, fontSize: 12, text: 'Snacks'),
                      const Expanded(child: SizedBox()),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_drop_down_circle_rounded,
                          color: primaryColor,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonWidget(
                  borderRadius: 100,
                  onPressed: () {},
                  buttonHeight: 50,
                  buttonWidth: 220,
                  textWidget: const BoldTextWidget(
                      color: primaryColor, fontSize: 18, text: 'ADD ITEM'),
                  color: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}
