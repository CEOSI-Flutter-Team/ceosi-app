import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/icons.dart';
import '../../../../widgets/text_widget.dart';

class ProductItemWidget extends StatelessWidget {
  late String productName;
  late String productCategory;
  late String pointsEquivalent;
  late String imageURL;

  ProductItemWidget(
      {required this.productName,
      required this.productCategory,
      required this.pointsEquivalent,
      required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/rewardviewitemscreen');
        },
        child: Container(
          height: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: CustomColors.primary,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Image.network(
                imageURL,
                height: 60,
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BoldTextWidget(
                            color: Colors.black,
                            fontSize: 16,
                            text: productName),
                        NormalTextWidget(
                            color: Colors.black,
                            fontSize: 12,
                            text: 'Type: $productCategory'),
                      ],
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Image.asset(
                CustomIcons().coinIcon,
                height: 22,
              ),
              const SizedBox(
                width: 10,
              ),
              BoldTextWidget(
                  color: CustomColors.primary,
                  fontSize: 14,
                  text: '${pointsEquivalent}cc'),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
