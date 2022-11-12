import 'package:flutter/material.dart';
import 'package:recase/recase.dart';

import '../../../constants/colors.dart';
import '../../../constants/labels.dart';
import '../../../widgets/button_widget.dart';
import '../../../widgets/sidebar_widget.dart';
import '../../../widgets/text_widget.dart';

class FlutterCatalogSidebarWidget extends StatelessWidget {
  const FlutterCatalogSidebarWidget({super.key});

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
                      color: CustomColors.primary,
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const CircleAvatar(
                      radius: 45.0,
                      backgroundImage: AssetImage('assets/images/profile.png')),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        BoldTextWidget(
                          color: Colors.black,
                          fontSize: 16.0,
                          text: 'Lou Ard Soriano',
                        ),
                        NormalTextWidget(
                          color: Colors.black,
                          fontSize: 10.0,
                          text: 'Flutter Developer',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
            const Flexible(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: _FlutterCatalogNavigationColumn(),
              ),
            ),
            const Flexible(
              flex: 1,
              child: LogoutButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class _FlutterCatalogNavigationColumn extends StatelessWidget {
  const _FlutterCatalogNavigationColumn();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ButtonWidget(
          onPressed: () => Navigator.of(context)
              .pushNamedAndRemoveUntil('/homescreen', (route) => false),
          buttonHeight: 55.0,
          buttonWidth: 203.0,
          borderRadius: 10.0,
          textWidget: const BoldTextWidget(
              color: Colors.white, fontSize: 12.0, text: Labels.home),
        ),
        const SizedBox(height: 25.0),
        ButtonWidget(
          onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
              '/catalogentriesscreen', (route) => false),
          buttonHeight: 55.0,
          buttonWidth: 203.0,
          borderRadius: 10.0,
          textWidget: BoldTextWidget(
              color: Colors.white,
              fontSize: 12.0,
              text: Labels.catalogEntries.titleCase),
        ),
        const SizedBox(height: 25.0),
        ButtonWidget(
          onPressed: () =>
              Navigator.of(context).pushNamed('/usercontributionsscreen'),
          buttonHeight: 55.0,
          buttonWidth: 203.0,
          borderRadius: 10.0,
          textWidget: BoldTextWidget(
              color: Colors.white,
              fontSize: 12.0,
              text: Labels.userContributions.titleCase),
        ),
      ],
    );
  }
}
