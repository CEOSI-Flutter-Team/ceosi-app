import 'package:ceosi_app/lib/widgets/single_item_widget.dart';
import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(itemBuilder: ((context, index) {
          return const SingleItemWidget();
        })),
      ),
    );
  }
}
