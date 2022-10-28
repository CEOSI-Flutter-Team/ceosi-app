import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/widgets/button_widget.dart';
import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

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
                  'assets/images/piattos.png',
                  height: 280,
                ),
                const SizedBox(
                  height: 10,
                ),
                NormalTextWidget(
                    color: Colors.black, fontSize: 12, text: 'Snack'),
                const SizedBox(
                  height: 20,
                ),
                BoldTextWidget(
                    color: Colors.black, fontSize: 24, text: 'Piattos (1pc)'),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: primaryColor,
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
                            NormalTextWidget(
                                color: Colors.white,
                                fontSize: 18,
                                text: 'Details'),
                            NormalTextWidget(
                                color: Colors.white,
                                fontSize: 12,
                                text:
                                    'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum'),
                            const SizedBox(
                              height: 50,
                            ),
                            NormalTextWidget(
                                color: Colors.white,
                                fontSize: 18,
                                text: 'Reminders'),
                            NormalTextWidget(
                                color: Colors.white,
                                fontSize: 12,
                                text:
                                    'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum'),
                            const SizedBox(
                              height: 75,
                            ),
                            Center(
                              child: ButtonWidget(
                                  buttonColor: Colors.white,
                                  borderRadius: 100,
                                  onPressed: () {},
                                  buttonHeight: 50,
                                  buttonWidth: 300,
                                  textWidget: BoldTextWidget(
                                      color: primaryColor,
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
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_circle_left_rounded,
                    color: primaryColor,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
