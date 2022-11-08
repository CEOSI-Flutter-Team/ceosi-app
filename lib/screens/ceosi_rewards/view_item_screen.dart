import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/images.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_widget.dart';
import 'widgets/dialogs/claim_reward_dialog_widget.dart';

class RewardViewItemScreen extends StatelessWidget {
  const RewardViewItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  Images.sampleProductImage,
                  height: 280,
                ),
                const SizedBox(
                  height: 10,
                ),
                const NormalTextWidget(
                    color: Colors.black, fontSize: 12, text: 'Snack'),
                const SizedBox(
                  height: 20,
                ),
                const BoldTextWidget(
                    color: Colors.black, fontSize: 24, text: 'Piattos (1pc)'),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: CustomColors.primary,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const NormalTextWidget(
                                color: Colors.white,
                                fontSize: 18,
                                text: 'Details'),
                            const NormalTextWidget(
                                color: Colors.white,
                                fontSize: 12,
                                text:
                                    'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum'),
                            const SizedBox(
                              height: 50,
                            ),
                            const NormalTextWidget(
                                color: Colors.white,
                                fontSize: 18,
                                text: 'Reminders'),
                            const NormalTextWidget(
                                color: Colors.white,
                                fontSize: 12,
                                text:
                                    'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum'),
                            const SizedBox(
                              height: 75,
                            ),
                            Center(
                              child: ButtonWidget(
                                  color: Colors.white,
                                  borderRadius: 100,
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return const ClaimRewardDialogWidget();
                                        });
                                  },
                                  buttonHeight: 50,
                                  buttonWidth: 300,
                                  textWidget: const BoldTextWidget(
                                      color: CustomColors.primary,
                                      fontSize: 18,
                                      text: 'Claim Reward')),
                            )
                          ]),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_circle_left_rounded,
                    color: CustomColors.primary,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
