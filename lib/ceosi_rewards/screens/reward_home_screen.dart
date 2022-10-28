import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/widgets/banner_widget.dart';
import 'package:ceosi_app/widgets/header_widget.dart';
import 'package:ceosi_app/widgets/single_item_widget.dart';
import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class RewardHomeScreen extends StatelessWidget {
  const RewardHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          children: [
            Stack(
              children: const [
                HeaderWidget(),
                BannerWidget(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.search,
                        color: primaryColor,
                      ),
                      const Expanded(child: SizedBox()),
                      NormalTextWidget(
                          color: primaryColor, fontSize: 12, text: 'Snacks'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.arrow_drop_down_circle_rounded,
                        color: primaryColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                child: ListView.builder(itemBuilder: ((context, index) {
                  return const SizedBox();
                })),
              ),
            )
          ],
        ),
      ),
    );
  }
}
