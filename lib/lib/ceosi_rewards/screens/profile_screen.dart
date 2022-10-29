import 'package:ceosi_app/lib/constants/colors.dart';
import 'package:ceosi_app/lib/widgets/drawer/drawer_widget.dart';
import 'package:ceosi_app/lib/widgets/list_widgets/list_rewards_claimed_item_widget.dart';
import 'package:ceosi_app/lib/widgets/list_widgets/list_rewards_earned_widget.dart';
import 'package:ceosi_app/lib/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/banner_widget.dart';
import '../../widgets/header/header_widget.dart';

class ProfileScreenReward extends StatefulWidget {
  const ProfileScreenReward({super.key});

  @override
  State<ProfileScreenReward> createState() => _ProfileScreenRewardState();
}

class _ProfileScreenRewardState extends State<ProfileScreenReward> {
  bool _index = true;
  bool _index1 = false;

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: const DrawerWidget(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              child: Stack(
                children: [
                  HeaderWidget(
                    headerTitle: 'PROFILE',
                  ),
                  const BannerWidget(),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ChoiceChip(
                    onSelected: ((value) {
                      setState(() {
                        _index = true;
                        _index1 = false;
                        _currentIndex = 0;
                      });
                    }),
                    selectedColor: primaryColor,
                    label: const NormalTextWidget(
                        color: Colors.white,
                        fontSize: 12,
                        text: 'Rewards Claimed'),
                    selected: _index),
                ChoiceChip(
                    selectedColor: primaryColor,
                    onSelected: ((value) {
                      setState(() {
                        _index1 = true;
                        _index = false;
                        _currentIndex = 1;
                      });
                    }),
                    label: const NormalTextWidget(
                        color: Colors.white,
                        fontSize: 12,
                        text: 'Rewards Earned'),
                    selected: _index1)
              ],
            ),
            Expanded(
              child: SizedBox(
                child: IndexedStack(
                  index: _currentIndex,
                  children: const [
                    RewardsClaimedListItemWidget(),
                    ListRewardsEarnedWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
