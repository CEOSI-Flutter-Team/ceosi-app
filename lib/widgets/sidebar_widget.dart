import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/widgets/button_widget.dart';
import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../constants/labels.dart';

class SidebarWidget extends StatelessWidget {
  const SidebarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: greyAccent,
      elevation: 1.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset('assets/images/FINAL-LOGO-1.2.png'),
              ),
            ),
            // const SizedBox(height: 60.0),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(10.0),
                children: <Widget>[
                  ButtonWidget(
                    onPressed: () {},
                    buttonHeight: 55.0,
                    buttonWidth: 203.0,
                    borderRadius: 10.0,
                    textWidget: BoldTextWidget(
                        color: Colors.white,
                        fontSize: 12.0,
                        text: Label.CeosiFlutterCatalog),
                  ),
                  const SizedBox(height: 25.0),
                  ButtonWidget(
                    onPressed: () {},
                    buttonHeight: 55.0,
                    buttonWidth: 203.0,
                    borderRadius: 10.0,
                    textWidget: BoldTextWidget(
                        color: Colors.white,
                        fontSize: 12.0,
                        text: Label.CeosiFreedomWall),
                  ),
                  const SizedBox(height: 25.0),
                  ButtonWidget(
                    onPressed: () {},
                    buttonHeight: 55.0,
                    buttonWidth: 203.0,
                    borderRadius: 10.0,
                    textWidget: BoldTextWidget(
                        color: Colors.white,
                        fontSize: 12.0,
                        text: Label.CeosiCompanyApp),
                  ),
                  const SizedBox(height: 25.0),
                  ButtonWidget(
                    onPressed: () {},
                    buttonHeight: 55.0,
                    buttonWidth: 203.0,
                    borderRadius: 10.0,
                    textWidget: BoldTextWidget(
                        color: Colors.white,
                        fontSize: 12.0,
                        text: Label.CeosiRewards),
                  ),
                ],
              ),
            ),
            // const SizedBox(height: 189.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ButtonWidget(
                    onPressed: () {},
                    buttonHeight: 42.0,
                    buttonWidth: 57,
                    borderRadius: 10.0,
                    textWidget: const Icon(
                      Icons.logout_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
