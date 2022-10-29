import 'package:ceosi_app/lib/constants/images.dart';
import 'package:ceosi_app/lib/widgets/drawer_button_widget.dart';
import 'package:ceosi_app/lib/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset(
                      coesiIcon,
                      height: 20,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
            child: Divider(
              color: Colors.white,
              thickness: 1.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/profile.png',
                  height: 90,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    BoldTextWidget(
                        color: Colors.white, fontSize: 18, text: 'Lance Olana'),
                    SizedBox(
                      height: 10,
                    ),
                    NormalTextWidget(
                        color: Colors.white,
                        fontSize: 14,
                        text: 'Flutter Developer'),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Divider(
              color: Colors.white,
              thickness: 1.5,
            ),
          ),
          DrawerButtonWidget(icon: Icons.home, onPressed: () {}, text: 'HOME'),
          DrawerButtonWidget(
              icon: Icons.person, onPressed: () {}, text: 'PROFILE'),
          DrawerButtonWidget(icon: Icons.info, onPressed: () {}, text: 'ABOUT'),
          DrawerButtonWidget(
              icon: Icons.admin_panel_settings_rounded,
              onPressed: () {},
              text: 'ADMIN'),
          DrawerButtonWidget(
              icon: Icons.logout, onPressed: () {}, text: 'LOGOUT'),
          const Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(coesiLogoCompleteAndMaroonBlueText),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
