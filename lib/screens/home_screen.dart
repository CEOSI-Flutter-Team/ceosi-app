import 'package:flutter/material.dart';

import '../constants/app_names.dart';
import '../constants/colors.dart';
import '../constants/images.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            ButtonWidget(
              color: CustomColors().primaryColor,
              borderRadius: 20,
              onPressed: () {},
              buttonHeight: 100,
              buttonWidth: 300,
              textWidget: BoldTextWidget(
                  color: Colors.white, fontSize: 15, text: Labels().static),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
              color: CustomColors().primaryColor,
              borderRadius: 20,
              onPressed: () {},
              buttonHeight: 100,
              buttonWidth: 300,
              textWidget: BoldTextWidget(
                  color: Colors.white, fontSize: 15, text: Labels().carlApp),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
              color: CustomColors().primaryColor,
              borderRadius: 20,
              onPressed: () {},
              buttonHeight: 100,
              buttonWidth: 300,
              textWidget: BoldTextWidget(
                  color: Colors.white, fontSize: 15, text: Labels().chloieApp),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
              color: CustomColors().primaryColor,
              borderRadius: 20,
              onPressed: () {},
              buttonHeight: 100,
              buttonWidth: 300,
              textWidget: BoldTextWidget(
                  color: Colors.white, fontSize: 15, text: Labels().lanceApp),
            ),
          ],
        ),
      ),
    );
  }
}
