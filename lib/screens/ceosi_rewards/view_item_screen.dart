import 'package:ceosi_app/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/colors.dart';
import '../../constants/images.dart';
import '../../models/product_model.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_widget.dart';
import 'widgets/dialogs/claim_reward_dialog_widget.dart';

class RewardViewItemScreen extends ConsumerWidget {
  const RewardViewItemScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemProvider = ref.watch(getItemProvider);

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
                  CustomImages().sampleProductImage,
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
                    decoration: BoxDecoration(
                      color: CustomColors().primaryColor,
                      borderRadius: const BorderRadius.only(
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
                                    print(itemProvider.productName);
                                    print(ProductModel().productCategory);
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return const ClaimRewardDialogWidget();
                                        });
                                  },
                                  buttonHeight: 50,
                                  buttonWidth: 300,
                                  textWidget: BoldTextWidget(
                                      color: CustomColors().primaryColor,
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
                  icon: Icon(
                    Icons.arrow_circle_left_rounded,
                    color: CustomColors().primaryColor,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
