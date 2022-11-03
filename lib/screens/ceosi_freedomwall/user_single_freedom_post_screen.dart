import 'package:ceosi_app/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../constants/icons.dart';
import '../../widgets/button_widget.dart';
import 'widgets/dropdown_button_form_field_widget.dart';

import '../../widgets/sidebar_widget.dart';
import '../../widgets/text_widget.dart';
import '../../widgets/textformfield_widget.dart';

class UserSingleFreedomPostScreen extends StatefulWidget {
  const UserSingleFreedomPostScreen({super.key});

  @override
  State<UserSingleFreedomPostScreen> createState() =>
      _UserSingleFreedomPostScreenState();
}

class _UserSingleFreedomPostScreenState
    extends State<UserSingleFreedomPostScreen> {
  final moods = [
    "Enjoyment",
    "Sadness",
    "Anger",
    "Disgust",
    "Fear",
  ];
  final _moodController = TextEditingController();

  final _contentController = TextEditingController();
  Object? mood;
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
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 150,
                    ),
                    ButtonWidget(
                        borderRadius: 10,
                        onPressed: () {},
                        buttonHeight: 50,
                        buttonWidth: 50,
                        textWidget: Image.asset(CustomIcons().editicon,
                            fit: BoxFit.contain)),
                    ButtonWidget(
                        borderRadius: 10,
                        onPressed: () {},
                        buttonHeight: 50,
                        buttonWidth: 50,
                        textWidget: Image.asset(CustomIcons().deleteicon,
                            fit: BoxFit.contain)),
                  ],
                ),
                DropDownButtonFormFieldWidget(
                    dropdownbackgroundcolor: Colors.black12,
                    dropdownitemcolor: Colors.black,
                    padding: const EdgeInsets.fromLTRB(37, 12, 37, 0),
                    label: '',
                    value: mood,
                    hint: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          NormalTextWidget(
                              color: Colors.black,
                              fontSize: 20,
                              text: 'Select Mood')
                        ]),
                    onChanged: (newValue) {
                      setState(() {
                        mood = newValue;
                        print(mood);
                        print(mood.runtimeType);
                      });
                    },
                    items: moods.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        alignment: AlignmentDirectional.center,
                        value: value,
                        child: Center(child: Text(value)),
                      );
                    }).toList()),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: TextformfieldWidget(
                    labelfontSize: 20.0,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    maxLines: 14,
                    hintText: 'What\'s on your mind?',
                    radius: 10,
                    isObscure: false,
                    textFieldController: _contentController,
                    label: 'FP ID #1',
                    colorFill: Colors.black12,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ButtonWidget(
                    borderRadius: 20,
                    onPressed: () {},
                    buttonHeight: 53,
                    buttonWidth: 182,
                    textWidget: const NormalTextWidget(
                        color: Colors.white, fontSize: 18, text: 'Save')),
                const SizedBox(
                  height: 250,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
