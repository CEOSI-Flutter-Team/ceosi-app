import 'package:ceosi_app/lib/constants/colors.dart';
import 'package:ceosi_app/lib/widgets/buttons/button_widget.dart';
import 'package:ceosi_app/lib/widgets/list_widgets/list_item_widget.dart';
import 'package:flutter/material.dart';

import '../dialogs/add_item_dialog_widget.dart';
import '../text_widget.dart';

class AdminListReward extends StatelessWidget {
  AdminListReward({super.key});

  final _itemNameController = TextEditingController();
  final _pointsEqualController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ListItemWidget(),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ButtonWidget(
                borderRadius: 100,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: ((context) {
                        return AddItemDialogWidget(
                          itemNameController: _itemNameController,
                          pointsEqualController: _pointsEqualController,
                        );
                      }));
                },
                buttonHeight: 50,
                buttonWidth: 300,
                textWidget: const BoldTextWidget(
                    color: Colors.white, fontSize: 18, text: 'ADD ITEM'),
                color: CustomColors().primaryColor),
          ),
        ),
      ],
    );
  }
}
