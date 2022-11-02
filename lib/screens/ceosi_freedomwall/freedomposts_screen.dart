import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/constants/icons.dart';
import 'package:ceosi_app/screens/ceosi_freedomwall/widgets/masonry_list_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/button_widget.dart';
import '../../widgets/sidebar_widget.dart';
import '../../widgets/text_widget.dart';

class FreedomPostsScreen extends StatefulWidget {
  const FreedomPostsScreen({super.key});

  @override
  State<FreedomPostsScreen> createState() => _FreedomPostsScreenState();
}

class _FreedomPostsScreenState extends State<FreedomPostsScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        drawer: const SidebarWidget(),
        appBar: AppBar(
          backgroundColor: CustomColors.primary,
        ),
        body: Stack(children: [
          const MasonryListWidget(),
          freedomWallButtons(),
        ]),
      ),
    );
  }

  Padding freedomWallButtons() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const BoldTextWidget(
                    color: Colors.black, fontSize: 20, text: 'Freedom Posts'),
                ButtonWidget(
                    borderRadius: 20,
                    onPressed: () {},
                    buttonHeight: 70,
                    buttonWidth: 60,
                    textWidget: Image.asset(CustomIcons().piecharticon,
                        fit: BoxFit.contain)),
                ButtonWidget(
                    borderRadius: 20,
                    onPressed: () {},
                    buttonHeight: 70,
                    buttonWidth: 70,
                    textWidget: Image.asset(CustomIcons().filtericon,
                        fit: BoxFit.contain)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(256, 520, 12, 0),
              child: ButtonWidget(
                  borderRadius: 100,
                  onPressed: () {},
                  buttonHeight: 70,
                  buttonWidth: 70,
                  textWidget:
                      Image.asset(CustomIcons().plusicon, fit: BoxFit.contain)),
            ),
          ],
        ),
      ),
    );
  }
}
