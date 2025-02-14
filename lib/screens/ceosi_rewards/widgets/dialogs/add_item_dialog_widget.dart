import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../repositories/product_repository.dart';
import '../../../../widgets/button_widget.dart';
import '../../../../widgets/text_widget.dart';
import '../../../../widgets/textformfield_widget.dart';
import '../../../../plugins/image_picker.dart';
import '../buttons/dropdown_item_widget.dart';

// ignore: must_be_immutable
class AddItemDialogWidget extends StatefulWidget {
  late var itemNameController = TextEditingController();
  late var pointsEqualController = TextEditingController();

  AddItemDialogWidget({
    super.key,
    required this.itemNameController,
    required this.pointsEqualController,
  });

  @override
  State<AddItemDialogWidget> createState() => _AddItemDialogWidgetState();
}

class _AddItemDialogWidgetState extends State<AddItemDialogWidget> {
  int _dropdownValue = 0;

  String itemCategory = 'Snacks';
  late File imageFile;
  late String fileName;

  final _remindersController = TextEditingController();
  final _detailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: CustomColors.primary,
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
              hasLoaded == true
                  ? Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.network(
                        imageURL,
                        fit: BoxFit.cover,
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        uploadPicture('camera', context);
                      },
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
                            color: CustomColors.primary,
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
                  textFieldController: widget.itemNameController),
              TextformfieldWidget(
                  label: 'Coins Equivalent',
                  isObscure: false,
                  colorFill: Colors.white,
                  textFieldController: widget.pointsEqualController),
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
                  child: SizedBox(
                    width: 250,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 2, 20, 2),
                      child: DropdownButton(
                        underline: Container(color: Colors.transparent),
                        iconEnabledColor: Colors.black,
                        isExpanded: true,
                        value: _dropdownValue,
                        items: [
                          DropdownMenuItem(
                            onTap: () {
                              itemCategory = 'Snacks';
                            },
                            value: 0,
                            child: DropDownItem(label: 'Snacks'),
                          ),
                          DropdownMenuItem(
                            onTap: () {
                              itemCategory = 'Drinks';
                            },
                            value: 1,
                            child: DropDownItem(label: 'Drinks'),
                          ),
                          DropdownMenuItem(
                            onTap: () {
                              itemCategory = 'Candies';
                            },
                            value: 2,
                            child: DropDownItem(label: 'Candies'),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _dropdownValue = int.parse(value.toString());
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonWidget(
                  borderRadius: 100,
                  onPressed: () {
                    Navigator.of(context).pop();
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return Dialog(
                            backgroundColor: CustomColors.primary,
                            child: SizedBox(
                              height: 300,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  TextformfieldWidget(
                                      label: 'Product Details',
                                      colorFill: Colors.white,
                                      textFieldController: _detailsController),
                                  TextformfieldWidget(
                                      label: 'Reminders',
                                      colorFill: Colors.white,
                                      textFieldController:
                                          _remindersController),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                    child: ButtonWidget(
                                        borderRadius: 100,
                                        onPressed: () {
                                          ProductRepository().addItem(
                                              widget.itemNameController.text,
                                              itemCategory,
                                              widget.pointsEqualController.text,
                                              imageURL,
                                              _detailsController.text,
                                              _remindersController.text);
                                        },
                                        buttonHeight: 50,
                                        buttonWidth: 220,
                                        textWidget: const BoldTextWidget(
                                            color: CustomColors.primary,
                                            fontSize: 18,
                                            text: 'ADD ITEM'),
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          );
                        }));
                  },
                  buttonHeight: 50,
                  buttonWidth: 220,
                  textWidget: const BoldTextWidget(
                      color: CustomColors.primary,
                      fontSize: 18,
                      text: 'CONTINUE'),
                  color: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}
