import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../buttons/button_widget.dart';
import '../text_widget.dart';

class ClaimRewardDialogWidget extends StatelessWidget {
  const ClaimRewardDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: primaryColor,
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 350,
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const BoldTextWidget(
                color: Colors.white, fontSize: 18, text: 'ITEM CLAIMED!'),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/icons/check.png',
              height: 150,
            ),
            const SizedBox(
              height: 50,
            ),
            ButtonWidget(
                borderRadius: 100,
                onPressed: () {
                  Navigator.pushNamed(context, '/rewardhomescreen');
                },
                buttonHeight: 50,
                buttonWidth: 220,
                textWidget: const BoldTextWidget(
                    color: primaryColor, fontSize: 18, text: 'Claim Reward'),
                color: Colors.white)
          ],
        ),
      ),
    );
  }
}
