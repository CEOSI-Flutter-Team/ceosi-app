import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/widgets/button_widget.dart';
import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:ceosi_app/widgets/textformfield.dart/addtextformfield_widget.dart';
import 'package:flutter/material.dart';

class AddAnnouncementscreen extends StatefulWidget {
  const AddAnnouncementscreen({super.key});

  @override
  State<AddAnnouncementscreen> createState() => _AddAnnouncementscreenState();
}

class _AddAnnouncementscreenState extends State<AddAnnouncementscreen> {
  final _announcementController = TextEditingController();
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();
  final _locationController = TextEditingController();
  final _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greyAccent,
        leading: Builder(
            builder: (context) => IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                )),
      ),
      body: ListView(children: [
        Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {},
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    child: Stack(children: [
                      Container(
                          height: 160,
                          width: 150,
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          color: secondaryColor,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.add_photo_alternate,
                                  size: 35,
                                  color: Colors.white,
                                )
                              ]))
                    ]))),
            const SizedBox(
              height: 10,
            ),
            AddtextformfieldWidget(
              textFieldController: _announcementController,
              label: 'Announcement/Event Name',
              colorFill: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                  child: AddtextformfieldWidget(
                    textFieldController: _dateController,
                    label: 'Date',
                    colorFill: Colors.white,
                  ),
                ),
                Flexible(
                  child: AddtextformfieldWidget(
                    textFieldController: _timeController,
                    label: 'Time',
                    colorFill: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            AddtextformfieldWidget(
              textFieldController: _locationController,
              label: 'Location',
              colorFill: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            AddtextformfieldWidget(
              textFieldController: _descriptionController,
              label: 'Description',
              colorFill: Colors.white,
            ),
            const SizedBox(
              height: 30,
            ),
            ButtonWidget(
                borderRadius: 100,
                onPressed: () {},
                buttonHeight: 50,
                buttonWidth: 300,
                textWidget: const BoldTextWidget(
                    color: Colors.white, fontSize: 18, text: 'Post')),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ]),
    );
  }
}
