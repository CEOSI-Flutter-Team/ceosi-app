import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/screens/ceosi_company_app/widgets/drawer_widget.dart';
import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class EventDetailsScreen extends StatefulWidget {
  const EventDetailsScreen({super.key});

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: CustomColors.greyAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                const BoldTextWidget(
                    color: Colors.black,
                    fontSize: 20,
                    text: "CEOSI Town Hall Meeting & Halloween Party"),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: const [
                    Icon(Icons.event),
                    SizedBox(
                      width: 10,
                    ),
                    BoldTextWidget(
                        color: Colors.black,
                        fontSize: 14,
                        text: "October 25, 2022"),
                    SizedBox(
                      width: 60,
                    ),
                    Icon(Icons.access_time),
                    SizedBox(
                      width: 10,
                    ),
                    BoldTextWidget(
                        color: Colors.black, fontSize: 14, text: "3:00 PM"),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // Expanded(
                //   child: SizedBox(
                //     child: Row(
                //       children: const [
                //         Icon(Icons.location_on),
                //         SizedBox(
                //           width: 10,
                //         ),
                //         BoldTextWidget(
                //             color: Colors.black,
                //             fontSize: 14,
                //             text:
                //                 "3/F Quijano Building, 13-15th Street Nazareth Cagayan de Oro City"),
                //       ],
                //     ),
                //   ),
                // ),
                const VisionWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VisionWidget extends StatelessWidget {
  const VisionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                        text:
                            'Hi every-body! 👻 Trick or treat! Please join us for our first ever CEOSI Town-Hall Meeting & Halloween Party aFoods and Drinks will be served. Don t forget to wear a costume! 🧛‍♂️ Theme: Black & White  (but any will do)If you have any questions, just ask ms. @Sheki Monteza💜 Save the date. See you all! 🖤'),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
