import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SingleItemWidget extends StatelessWidget {
  const SingleItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: primaryColor,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/images/piattos.png',
                height: 60,
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
                            color: Colors.black, fontSize: 16, text: 'Piattos'),
                        NormalTextWidget(
                            color: Colors.black,
                            fontSize: 12,
                            text: 'Type: Snack'),
                      ],
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Image.asset(
                'assets/icons/coin.png',
                height: 22,
              ),
              const SizedBox(
                width: 10,
              ),
              BoldTextWidget(
                  color: primaryColor, fontSize: 14, text: '1,000cc'),
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
