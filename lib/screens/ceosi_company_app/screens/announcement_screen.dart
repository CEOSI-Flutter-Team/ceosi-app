import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class AnnouncementScreen extends StatefulWidget {
  const AnnouncementScreen({super.key});

  @override
  State<AnnouncementScreen> createState() => _AnnouncementScreenState();
}

class _AnnouncementScreenState extends State<AnnouncementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.greyAccent,
        leading: Builder(
            builder: (context) => IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            const BoldTextWidget(
                color: Colors.black, fontSize: 23, text: "Announcements"),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Column(children: [
                    InkWell(
                        onTap: (() {}),
                        child: Card(
                            color: CustomColors.primary,
                            elevation: 5.0,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.campaign,
                                    size: 50,
                                    color: CustomColors.secondary,
                                  ),
                                  const SizedBox(width: 5),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        BoldTextWidget(
                                            color: Colors.white,
                                            fontSize: 13,
                                            text: "Emergency Meeting"),
                                        BoldTextWidget(
                                            color: Colors.white,
                                            fontSize: 11,
                                            text: "October 25, 2022"),
                                        BoldTextWidget(
                                            color: Colors.white,
                                            fontSize: 11,
                                            text: "10:00 AM")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )))
                  ]);
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const BoldTextWidget(
                color: Colors.black, fontSize: 23, text: "Upcoming Events"),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Column(children: [
                    InkWell(
                        onTap: (() {}),
                        child: Card(
                            color: CustomColors.primary,
                            elevation: 10.0,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.event,
                                    size: 50,
                                    color: CustomColors.secondary,
                                  ),
                                  const SizedBox(width: 5),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        BoldTextWidget(
                                            color: Colors.white,
                                            fontSize: 12,
                                            text:
                                                "CEOSI Town-Hall Meeting & Halloween Party"),
                                        BoldTextWidget(
                                            color: Colors.white,
                                            fontSize: 11,
                                            text: "October 25, 2022"),
                                        BoldTextWidget(
                                            color: Colors.white,
                                            fontSize: 11,
                                            text: "3:00 PM")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )))
                  ]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
