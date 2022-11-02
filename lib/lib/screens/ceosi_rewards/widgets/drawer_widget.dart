import 'package:ceosi_app/lib/constants/images.dart';
import 'package:ceosi_app/lib/screens/ceosi_rewards/widgets/dialogs/logout_prompt_dialog_widget.dart';
import 'package:ceosi_app/lib/screens/ceosi_rewards/widgets/buttons/drawer_button_widget.dart';
import 'package:ceosi_app/lib/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColors().primaryColor,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
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
                  CustomImages().sampleProfileImage,
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
          DrawerButtonWidget(
              icon: Icons.home,
              onPressed: () {
                Navigator.pushNamed(context, '/rewardhomescreen');
              },
              text: 'HOME'),
          DrawerButtonWidget(
              icon: Icons.person,
              onPressed: () {
                Navigator.pushNamed(context, '/profilescreenreward');
              },
              text: 'PROFILE'),
          DrawerButtonWidget(
              icon: Icons.info,
              onPressed: () {
                showAboutDialog(
                    context: context,
                    applicationName: 'CEOSI Rewards',
                    applicationIcon: Image.asset(
                      CustomImages().coesiIcon,
                      height: 20,
                    ),
                    applicationLegalese:
                        "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum",
                    applicationVersion: 'v1.0');
              },
              text: 'ABOUT'),
          DrawerButtonWidget(
              icon: Icons.admin_panel_settings_rounded,
              onPressed: () {
                Navigator.pushNamed(context, '/adminpanelscreenreward');
              },
              text: 'ADMIN'),
          DrawerButtonWidget(
              icon: Icons.logout,
              onPressed: () {
                showDialog(
                    context: context,
                    builder: ((context) {
                      return const LogoutPromptDialogWidget();
                    }));
              },
              text: 'LOGOUT'),
          const Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                      CustomImages().coesiLogoCompleteAndMaroonBlueText),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const NormalTextWidget(
              color: Colors.white, fontSize: 10, text: 'All right reserved'),
          const NormalTextWidget(
              color: Colors.white,
              fontSize: 10,
              text: 'Cyber Ensemble Outsourcing Services Inc.  2022'),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
