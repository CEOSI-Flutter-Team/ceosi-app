import 'package:ceosi_app/lib/constants/colors.dart';
import 'package:ceosi_app/lib/constants/icons.dart';
import 'package:ceosi_app/lib/constants/images.dart';
import 'package:ceosi_app/lib/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          width: 350,
          height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/profile.png',
                height: 75,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  BoldTextWidget(
                      color: Colors.black, fontSize: 16, text: 'Lance Olana'),
                  NormalTextWidget(
                      color: Colors.black,
                      fontSize: 12,
                      text: 'Flutter Developer')
                ],
              ),
              const SizedBox(
                width: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      CustomImages().coesiIcon,
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          CustomIcons().coinIcon,
                          height: 18,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        BoldTextWidget(
                            color: CustomColors().primaryColor,
                            fontSize: 14,
                            text: '1,000cc')
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
