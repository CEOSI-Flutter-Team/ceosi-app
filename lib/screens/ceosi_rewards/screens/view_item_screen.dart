import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class RewardViewItemScreen extends StatelessWidget {
  const RewardViewItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/piattos.png',
              height: 300,
            ),
            const SizedBox(
              height: 10,
            ),
            NormalTextWidget(color: Colors.black, fontSize: 12, text: 'Snack'),
            const SizedBox(
              height: 20,
            ),
            BoldTextWidget(
                color: Colors.black, fontSize: 24, text: 'Piattos (1pc)'),
            Container(
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
