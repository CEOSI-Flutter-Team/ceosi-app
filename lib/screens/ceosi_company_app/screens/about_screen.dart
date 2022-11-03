import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/constants/images.dart';
import 'package:ceosi_app/screens/ceosi_company_app/widgets/drawer_widget.dart';
import 'package:ceosi_app/screens/ceosi_company_app/widgets/socialmedia_widget.dart';
import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: CustomColors.greyAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              Images.coesiIcon,
              width: 60,
            ),
            const SizedBox(
              height: 40,
            ),
            Card(
                color: CustomColors.primary,
                elevation: 3.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            BoldTextWidget(
                                color: Colors.white,
                                fontSize: 14,
                                text: 'About'),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialMediaWidget(
                    onTap: () {},
                    containerColor: CustomColors.facebookIcon,
                    icon: FontAwesomeIcons.facebookF,
                    iconColor: Colors.white),
                SocialMediaWidget(
                    onTap: () {},
                    containerColor: CustomColors.twitterIcon,
                    icon: FontAwesomeIcons.twitter,
                    iconColor: Colors.white),
                SocialMediaWidget(
                    onTap: () {},
                    containerColor: CustomColors.instagramIcon,
                    icon: FontAwesomeIcons.instagram,
                    iconColor: Colors.white),
                SocialMediaWidget(
                    onTap: () {},
                    containerColor: CustomColors.linkedinIcon,
                    icon: FontAwesomeIcons.linkedinIn,
                    iconColor: Colors.white),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
                color: CustomColors.primary,
                elevation: 3.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            BoldTextWidget(
                                color: Colors.white,
                                fontSize: 14,
                                text: 'Mission'),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Card(
                color: CustomColors.primary,
                elevation: 3.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            BoldTextWidget(
                                color: Colors.white,
                                fontSize: 14,
                                text: 'Vision'),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
