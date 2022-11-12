import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../widgets/button_widget.dart';
import '../../../../widgets/text_widget.dart';

class ClaimRewardDialogWidget extends StatelessWidget {
  const ClaimRewardDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: CustomColors.primary,
      child: Container(
        decoration: BoxDecoration(
          color: CustomColors.primary,
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
                  var newData = {
                    'productName': 'Sample 3',
                    'productCategory': 'Snacks',
                    'productImage':
                        'https://firebasestorage.googleapis.com/v0/b/ceosi-app-4c622.appspot.com/o/Rewards%2FItems%2Fscaled_b8327260-af37-4a43-b5a3-20f831ad6ab33560683931965845701.jpg?alt=media&token=65691bb4-103f-4801-bb6c-a582bed203e8',
                    'pointsEquivalent': 600,
                  };

                  FirebaseFirestore.instance
                      .collection('CEOSI-USERS')
                      .doc('GZ4hqaEj1vggZeeJ0j0j')
                      .update({
                    'claimed_rewards': FieldValue.arrayUnion([newData])
                  });
                  Navigator.pushNamed(context, '/rewardhomescreen');
                },
                buttonHeight: 50,
                buttonWidth: 220,
                textWidget: const BoldTextWidget(
                    color: CustomColors.primary,
                    fontSize: 18,
                    text: 'Claim Reward'),
                color: Colors.white)
          ],
        ),
      ),
    );
  }
}
