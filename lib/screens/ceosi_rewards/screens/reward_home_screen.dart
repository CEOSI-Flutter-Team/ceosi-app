import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

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
              children: [
                Container(
                  color: primaryColor,
                  width: double.infinity,
                  height: 150,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          ),
                          BoldTextWidget(
                              color: Colors.white, fontSize: 28, text: 'HOME'),
                          const SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
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
                            children: [
                              BoldTextWidget(
                                  color: Colors.black,
                                  fontSize: 16,
                                  text: 'Lance Olana'),
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
                                  'assets/icons/logo.png',
                                  height: 40,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/icons/coin.png',
                                      height: 18,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    BoldTextWidget(
                                        color: primaryColor,
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
                ),
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
                      NormalTextWidget(
                          color: primaryColor, fontSize: 12, text: 'Snacks'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.arrow_drop_down_circle_rounded,
                        color: primaryColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                child: ListView.builder(itemBuilder: ((context, index) {
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      BoldTextWidget(
                                          color: Colors.black,
                                          fontSize: 16,
                                          text: 'Piattos'),
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
                                color: primaryColor,
                                fontSize: 14,
                                text: '1,000cc'),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })),
              ),
            )
          ],
        ),
      ),
    );
  }
}
