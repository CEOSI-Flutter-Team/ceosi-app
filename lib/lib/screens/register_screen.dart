import 'package:ceosi_app/lib/constants/colors.dart';
import 'package:flutter/material.dart';

import '../constants/images.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';
import '../widgets/textformfield_widget.dart';

class RegisterScreen extends StatelessWidget {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              coesiLogoCompleteAndMaroonBlueText,
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
              height: 50,
            ),
            ButtonWidget(
                color: primaryColor,
                borderRadius: 100,
                onPressed: () {},
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
