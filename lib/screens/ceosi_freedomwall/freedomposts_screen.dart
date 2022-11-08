import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/images.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/text_widget.dart';

class FreedomPostsScreen extends StatefulWidget {
  const FreedomPostsScreen({super.key});

  @override
  State<FreedomPostsScreen> createState() => _FreedomPostsScreenState();
}

class _FreedomPostsScreenState extends State<FreedomPostsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors().greyAccentColor,
        leading: Builder(
            builder: (context) => IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              CustomImages().coesiIcon,
              width: 60,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonWidget(
                    color: CustomColors().primaryColor,
                    borderRadius: 20,
                    onPressed: () {},
                    buttonHeight: 80,
                    buttonWidth: 80,
                    textWidget: const NormalTextWidget(
                        color: Colors.white, fontSize: 18, text: 'Login')),
                ButtonWidget(
                    color: CustomColors().primaryColor,
                    borderRadius: 20,
                    onPressed: () {},
                    buttonHeight: 80,
                    buttonWidth: 80,
                    textWidget: const NormalTextWidget(
                        color: Colors.white, fontSize: 18, text: 'Login'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
