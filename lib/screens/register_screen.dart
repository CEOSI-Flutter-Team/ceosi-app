import 'package:ceosi_app/repositories/auth_repository.dart';
import 'package:ceosi_app/screens/ceosi_rewards/widgets/dialogs/error_dialog_widget.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/images.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';
import '../widgets/textformfield_widget.dart';
import 'ceosi_rewards/widgets/buttons/dropdown_item_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _nameController = TextEditingController();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _confirmPasswordController = TextEditingController();

  int _dropdownValue = 0;

  String roleCategory = 'Flutter Developer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                CustomImages().coesiLogoCompleteAndMaroonBlueText,
                width: 350,
              ),
              const SizedBox(
                height: 10,
              ),
              TextformfieldWidget(
                isObscure: false,
                textFieldController: _nameController,
                label: 'Name',
                colorFill: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              TextformfieldWidget(
                isObscure: false,
                textFieldController: _emailController,
                label: 'Email',
                colorFill: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              TextformfieldWidget(
                isObscure: true,
                textFieldController: _passwordController,
                label: 'Password',
                colorFill: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              TextformfieldWidget(
                isObscure: true,
                textFieldController: _confirmPasswordController,
                label: 'Confirm Password',
                colorFill: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 2, 20, 2),
                    child: DropdownButton(
                      underline: Container(color: Colors.transparent),
                      iconEnabledColor: Colors.black,
                      isExpanded: true,
                      value: _dropdownValue,
                      items: [
                        DropdownMenuItem(
                          onTap: () {
                            roleCategory = 'Flutter Developer';
                          },
                          value: 0,
                          child: DropDownItem(label: 'Flutter Developer'),
                        ),
                        DropdownMenuItem(
                          onTap: () {
                            roleCategory = 'Frontend Developer';
                          },
                          value: 1,
                          child: DropDownItem(label: 'Frontend Developer'),
                        ),
                        DropdownMenuItem(
                          onTap: () {
                            roleCategory = 'Backend Developer';
                          },
                          value: 2,
                          child: DropDownItem(label: 'Backend Developer'),
                        ),
                        DropdownMenuItem(
                          onTap: () {
                            roleCategory = 'Quality Assurance';
                          },
                          value: 3,
                          child: DropDownItem(label: 'Quality Assurance'),
                        ),
                        DropdownMenuItem(
                          onTap: () {
                            roleCategory = 'Admin';
                          },
                          value: 4,
                          child: DropDownItem(label: 'Admin'),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _dropdownValue = int.parse(value.toString());
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ButtonWidget(
                  color: CustomColors().primaryColor,
                  borderRadius: 100,
                  onPressed: () {
                    // ignore: unrelated_type_equality_checks
                    if (_passwordController.text !=
                        _confirmPasswordController.text) {
                      showDialog(
                        context: context,
                        builder: ((context) {
                          return ErrorDialog(
                              caption: 'Password do not match!',
                              onPressed: () {
                                Navigator.of(context).pop();
                              });
                        }),
                      );
                    } else if (_passwordController.text == '' ||
                        _emailController.text == '') {
                      showDialog(
                        context: context,
                        builder: ((context) {
                          return ErrorDialog(
                              caption: 'Invalid Input',
                              onPressed: () {
                                Navigator.of(context).pop();
                              });
                        }),
                      );
                    } else if (_passwordController.text.length < 6) {
                      showDialog(
                        context: context,
                        builder: ((context) {
                          return ErrorDialog(
                              caption: 'Password too short!',
                              onPressed: () {
                                Navigator.of(context).pop();
                              });
                        }),
                      );
                    } else {
                      AuthRepository().userSignIn(
                          _nameController.text,
                          _emailController.text,
                          _passwordController.text,
                          _confirmPasswordController.text,
                          roleCategory);

                      Navigator.pushNamed(context, '/rewardhomescreen');
                    }
                  },
                  buttonHeight: 50,
                  buttonWidth: 300,
                  textWidget: const NormalTextWidget(
                      color: Colors.white, fontSize: 18, text: 'Register')),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const NormalTextWidget(
                      color: Colors.black,
                      fontSize: 14,
                      text: 'Already have an account?'),
                  TextButton(
                    onPressed: () {},
                    child: const BoldTextWidget(
                        color: Colors.black, fontSize: 18, text: 'Login'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
