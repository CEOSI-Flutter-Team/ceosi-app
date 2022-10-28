import 'package:ceosi_app/lib/widgets/list_item_widget.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../widgets/banner_widget.dart';
import '../../widgets/header_widget.dart';
import '../../widgets/text_widget.dart';

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
                      const NormalTextWidget(
                          color: primaryColor, fontSize: 12, text: 'Snacks'),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/rewardhomescreen');
                        },
                        icon: const Icon(
                          Icons.arrow_drop_down_circle_rounded,
                          color: primaryColor,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const ListItemWidget(),
          ],
        ),
      ),
    );
  }
}
