import 'package:ceosi_app/lib/widgets/single_item_widgets/rewards_earned_widget.dart';
import 'package:flutter/material.dart';

class ListRewardsEarnedWidget extends StatelessWidget {
  const ListRewardsEarnedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: ((context, index) {
      return const RewardsEarnedWidget();
    }));
  }
}
