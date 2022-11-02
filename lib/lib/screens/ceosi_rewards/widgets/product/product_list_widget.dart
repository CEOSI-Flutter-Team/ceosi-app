import 'package:ceosi_app/lib/screens/ceosi_rewards/widgets/product/single_product_widget.dart';
import 'package:flutter/material.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(itemBuilder: ((context, index) {
        return const ProductItemWidget();
      })),
    );
  }
}
