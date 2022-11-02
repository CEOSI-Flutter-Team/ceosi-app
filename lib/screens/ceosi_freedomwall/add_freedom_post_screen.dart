import 'package:ceosi_app/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../widgets/dropdown_widget.dart';
import '../../widgets/sidebar_widget.dart';
import '../../widgets/textformfield_widget.dart';

class AddFreedomPostScreen extends StatefulWidget {
  const AddFreedomPostScreen({super.key});

  @override
  State<AddFreedomPostScreen> createState() => _AddFreedomPostScreenState();
}

class _AddFreedomPostScreenState extends State<AddFreedomPostScreen> {
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
                  height: 10,
                ),
                DropDownButtonWidget(
                    label: 'Is published?',
                    value: 'happy',
                    onChanged: (newValue) {
                      setState(() {
                        mood = newValue;
                        print(mood);
                        print(mood.runtimeType);
                      });
                    },
                    items: ['Enjoyment', 'Sadness', 'Anger', 'Disgust', 'Fear']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value.toString()),
                      );
                    }).toList()),
                const SizedBox(
                  height: 10,
                ),
                TextformfieldWidget(
                  isObscure: false,
                  textFieldController: _contentController,
                  label: 'Content',
                  colorFill: Colors.white,
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
