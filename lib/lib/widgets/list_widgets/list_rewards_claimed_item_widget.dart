import 'package:ceosi_app/lib/widgets/single_item_widgets/rewards_claimed_item_widget.dart';
import 'package:flutter/material.dart';

class RewardsClaimedListItemWidget extends StatelessWidget {
  const RewardsClaimedListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(itemBuilder: ((context, index) {
        return const RewardsClaimedSingleItemWidget();
      })),
    );
  }
}
