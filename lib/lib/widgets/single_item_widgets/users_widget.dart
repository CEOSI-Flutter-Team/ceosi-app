import 'package:ceosi_app/lib/constants/colors.dart';
import 'package:ceosi_app/lib/widgets/dialogs/add_coin_dialog_widget.dart';
import 'package:ceosi_app/lib/widgets/dialogs/subtract_coin_dialog_widget.dart';
import 'package:ceosi_app/lib/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class UsersWidget extends StatelessWidget {
  const UsersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              'assets/images/profile.png',
              height: 60,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                BoldTextWidget(
                    color: Colors.black, fontSize: 14, text: 'Lance Olana'),
                NormalTextWidget(
                    color: Colors.black,
                    fontSize: 10,
                    text: 'Flutter Developer'),
              ],
            ),
            const Expanded(child: SizedBox()),
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SubtractCoinDialogWidget();
                      });
                },
                icon: Icon(
                  Icons.remove,
                  color: CustomColors().primaryColor,
                )),
            BoldTextWidget(
                color: CustomColors().primaryColor,
                fontSize: 18,
                text: '1,000cc'),
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AddCoinDialogWidget();
                      });
                },
                icon: Icon(
                  Icons.add,
                  color: CustomColors().primaryColor,
                )),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
