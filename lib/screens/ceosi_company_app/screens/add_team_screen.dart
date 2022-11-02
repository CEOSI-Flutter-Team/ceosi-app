import 'package:ceosi_app/constants/colors.dart';
import 'package:ceosi_app/screens/ceosi_company_app/widgets/addtextformfield_widget.dart';
import 'package:ceosi_app/screens/ceosi_company_app/widgets/drawer_widget.dart';
import 'package:ceosi_app/widgets/button_widget.dart';
import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class AddTeamScreen extends StatefulWidget {
  const AddTeamScreen({super.key});

  @override
  State<AddTeamScreen> createState() => _AddTeamScreenState();
}

class _AddTeamScreenState extends State<AddTeamScreen> {
  final _nameController = TextEditingController();
  final _positionController = TextEditingController();
  final _departmentController = TextEditingController();
  final _emailController = TextEditingController();
  final _birthdateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: CustomColors.greyAccent,
      ),
      body: ListView(children: [
        Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {},
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Stack(children: [
                      const CircleAvatar(
                        radius: 65,
                        backgroundColor: CustomColors.secondary,
                      ),
                      CircleAvatar(
                          radius: 65,
                          backgroundColor: Colors.black54,
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
              textFieldController: _nameController,
              label: 'Name',
              colorFill: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            AddtextformfieldWidget(
              textFieldController: _positionController,
              label: 'Position',
              colorFill: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            AddtextformfieldWidget(
              textFieldController: _departmentController,
              label: 'Department',
              colorFill: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            AddtextformfieldWidget(
              textFieldController: _emailController,
              label: 'Email',
              colorFill: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            AddtextformfieldWidget(
              textFieldController: _birthdateController,
              label: 'Birth Date',
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
                    color: Colors.white, fontSize: 18, text: 'Add Team')),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ]),
    );
  }
}
