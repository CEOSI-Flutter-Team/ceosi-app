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
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0))),
      backgroundColor: CustomColors.greyAccent,
      elevation: 1.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.menu,
                      size: 26.0,
                    )),
              ],
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset('assets/images/FINAL-LOGO-1.2.png'),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ButtonWidget(
                      onPressed: () => Navigator.of(context)
                          .pushNamedAndRemoveUntil(
                              '/codelistscreen', (route) => false),
                      buttonHeight: 55.0,
                      buttonWidth: 203.0,
                      borderRadius: 10.0,
                      textWidget: const BoldTextWidget(
                          color: Colors.white,
                          fontSize: 12.0,
                          text: Labels.ceosiFlutterCatalog),
                    ),
                    const SizedBox(height: 25.0),
                    ButtonWidget(
                      onPressed: () => Navigator.of(context)
                          .pushNamedAndRemoveUntil(
                              '/freedompostsscreen', (route) => false),
                      buttonHeight: 55.0,
                      buttonWidth: 203.0,
                      borderRadius: 10.0,
                      textWidget: const BoldTextWidget(
                          color: Colors.white,
                          fontSize: 12.0,
                          text: Labels.ceosiFreedomWall),
                    ),
                    const SizedBox(height: 25.0),
                    ButtonWidget(
                      onPressed: () => Navigator.of(context)
                          .pushNamedAndRemoveUntil(
                              '/announcementscreen', (route) => false),
                      buttonHeight: 55.0,
                      buttonWidth: 203.0,
                      borderRadius: 10.0,
                      textWidget: const BoldTextWidget(
                          color: Colors.white,
                          fontSize: 12.0,
                          text: Labels.ceosiCompanyApp),
                    ),
                    const SizedBox(height: 25.0),
                    ButtonWidget(
                      onPressed: () => Navigator.of(context)
                          .pushNamedAndRemoveUntil(
                              '/homescreen', (route) => false),
                      buttonHeight: 55.0,
                      buttonWidth: 203.0,
                      borderRadius: 10.0,
                      textWidget: const BoldTextWidget(
                          color: Colors.white,
                          fontSize: 12.0,
                          text: Labels.ceosiRewards),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: ButtonWidget(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
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
            ),
          ],
        ),
      ),
    );
  }
}
