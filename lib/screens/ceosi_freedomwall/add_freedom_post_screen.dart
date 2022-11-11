import 'package:ceosi_app/constants/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../widgets/button_widget.dart';
import 'widgets/dropdown_button_form_field_widget.dart';

import '../../widgets/sidebar_widget.dart';
import '../../widgets/text_widget.dart';
import '../../widgets/textformfield_widget.dart';

class AddFreedomPostScreen extends StatefulWidget {
  const AddFreedomPostScreen({super.key});

  @override
  State<AddFreedomPostScreen> createState() => _AddFreedomPostScreenState();
}

class _AddFreedomPostScreenState extends State<AddFreedomPostScreen> {
  final contentController = TextEditingController();

  Future addItem(
      String mood, String content, String anonName, DateTime dateTime) async {
    final freedomPostsref = FirebaseFirestore.instance
        .collection('CEOSI-FREEDOMWALL-FREEDOMPOSTS')
        .doc();

    var data = {
      'id': freedomPostsref.id,
      'user_id': FirebaseAuth.instance.currentUser!.uid,
      'mood': mood,
      'content': content,
      'anon_name': anonName,
      'created': dateTime,
    };
    if (data.isNotEmpty) {
      Navigator.pushNamed(context, '/freedompostsscreen');
    }

    await freedomPostsref.set(data);
  }

  final moods = [
    'Enjoyment',
    'Sadness',
    'Anger',
    'Disgust',
    'Fear',
  ];

  Object? mood;

  @override
  void dispose() {
    contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String anonNames = '';

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
                DropDownButtonFormFieldWidget(
                    dropdownbackgroundcolor: Colors.black12,
                    dropdownitemcolor: Colors.black,
                    padding: const EdgeInsets.fromLTRB(37, 12, 37, 0),
                    label: '',
                    value: mood,
                    hint: const Center(
                        child: NormalTextWidget(
                            color: Colors.black,
                            fontSize: 20,
                            text: 'Select Mood')),
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
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    maxLines: 14,
                    hintText: 'What\'s on your mind?',
                    radius: 10,
                    isObscure: false,
                    textFieldController: contentController,
                    label: '',
                    colorFill: Colors.black12,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ButtonWidget(
                    borderRadius: 20,
                    onPressed: () {
                      FirebaseFirestore.instance
                          .collection('CEOSI-USERS')
                          .where('user_id',
                              isEqualTo: FirebaseAuth.instance.currentUser!.uid)
                          .get()
                          .then((QuerySnapshot querySnapshot) {
                        for (var doc in querySnapshot.docs) {
                          anonNames = doc['anon_name'];
                        }
                      }).whenComplete(() {
                        addItem(mood.toString(), contentController.text,
                            anonNames, DateTime.now());
                      });
                    },
                    buttonHeight: 53,
                    buttonWidth: 182,
                    textWidget: const NormalTextWidget(
                        color: Colors.white, fontSize: 18, text: 'Add Post')),
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
