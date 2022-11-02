import 'package:ceosi_app/lib/constants/colors.dart';
import 'package:ceosi_app/lib/constants/icons.dart';
import 'package:ceosi_app/lib/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class RewardsEarnedWidget extends StatelessWidget {
  const RewardsEarnedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    'assets/images/profile.png',
                    height: 50,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const NormalTextWidget(
                      color: Colors.black, fontSize: 10, text: 'ADMIN'),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        NormalTextWidget(
                            color: Colors.black,
                            fontSize: 8,
                            text: 'Earned through:'),
                        NormalTextWidget(
                            color: Colors.black,
                            fontSize: 12,
                            text: 'Pang limpyo sa CR'),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 150,
                          child: NormalTextWidget(
                              color: Colors.black,
                              fontSize: 8,
                              text:
                                  'Comment: Padayuna ang pag pang limpyo sa CR'),
                        ),
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
                  color: CustomColors().primaryColor,
                  fontSize: 14,
                  text: '+1,000cc'),
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
