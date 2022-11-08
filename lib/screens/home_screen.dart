import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/widgets/button_widget.dart';
import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import '../constants/images.dart';
import '../constants/labels.dart';
import '../widgets/sidebar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SidebarWidget(),
      appBar: AppBar(
        backgroundColor: CustomColors.greyAccent,
        leading: Builder(
            builder: (context) => IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              Images.coesiIcon,
              width: 60,
            ),
            const SizedBox(
              height: 40,
            ),
            ButtonWidget(
              color: CustomColors.primary,
              borderRadius: 20,
              onPressed: () {},
              buttonHeight: 100,
              buttonWidth: 300,
              textWidget: const BoldTextWidget(
                  color: Colors.white,
                  fontSize: 15,
                  text: Labels.ceosiFlutterCatalog),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
              color: CustomColors.primary,
              borderRadius: 20,
              onPressed: () {},
              buttonHeight: 100,
              buttonWidth: 300,
              textWidget: const BoldTextWidget(
                  color: Colors.white,
                  fontSize: 15,
                  text: Labels.ceosiFreedomWall),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
              color: CustomColors.primary,
              borderRadius: 20,
              onPressed: () {},
              buttonHeight: 100,
              buttonWidth: 300,
              textWidget: const BoldTextWidget(
                  color: Colors.white,
                  fontSize: 15,
                  text: Labels.ceosiCompanyApp),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
              color: CustomColors.primary,
              borderRadius: 20,
              onPressed: () {},
              buttonHeight: 100,
              buttonWidth: 300,
              textWidget: const BoldTextWidget(
                  color: Colors.white, fontSize: 15, text: Labels.ceosiRewards),
            ),
          ],
        ),
      ),
    );
  }
}
