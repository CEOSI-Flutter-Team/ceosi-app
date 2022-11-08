import 'package:ceosi_app/constants/images.dart';
import 'package:ceosi_app/widgets/button_widget.dart';
import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:ceosi_app/widgets/textformfield_widget.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'package:unique_name_generator/unique_name_generator.dart';

class RegisterScreen extends StatelessWidget {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var ung = UniqueNameGenerator(
      dictionaries: [adjectives, animals],
      style: NameStyle.capital,
      separator: '_',
    );
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              Images.coesiLogoCompleteAndMaroonBlueText,
              width: 350,
            ),
            const SizedBox(
              height: 10,
            ),
            TextformfieldWidget(
              textFieldController: _nameController,
              label: 'Name',
              colorFill: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            TextformfieldWidget(
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
              height: 50,
            ),
            ButtonWidget(
                color: CustomColors.primary,
                borderRadius: 100,
                onPressed: () {
                  List<String> anonNames =
                      List.generate(10, (index) => ung.generate());
                  //add filter here if anonNames exists then randomized again
                  print(anonNames[1]);
                },
                buttonHeight: 50,
                buttonWidth: 300,
                textWidget: const NormalTextWidget(
                    color: Colors.white, fontSize: 18, text: 'Register')),
            const Expanded(
              child: SizedBox(),
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
    );
  }
}
