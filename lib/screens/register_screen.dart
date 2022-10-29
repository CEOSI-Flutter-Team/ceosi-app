import 'package:ceosi_app/widgets/button_widget.dart';
import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:ceosi_app/widgets/textformfield.dart/authtextformfield_widget.dart';
import 'package:flutter/material.dart';

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
              'assets/images/FINAL-LOGO-1.0.png',
              width: 350,
            ),
            const SizedBox(
              height: 10,
            ),
            AuthtextformfieldWidget(
              isObscure: false,
              textFieldController: _nameController,
              label: 'Name',
              colorFill: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            AuthtextformfieldWidget(
              isObscure: false,
              textFieldController: _emailController,
              label: 'Email',
              colorFill: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            AuthtextformfieldWidget(
              isObscure: true,
              textFieldController: _passwordController,
              label: 'Password',
              colorFill: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            AuthtextformfieldWidget(
              isObscure: true,
              textFieldController: _confirmPasswordController,
              label: 'Confirm Password',
              colorFill: Colors.white,
            ),
            const SizedBox(
              height: 50,
            ),
            ButtonWidget(
                borderRadius: 100,
                onPressed: () {},
                buttonHeight: 50,
                buttonWidth: 300,
                textWidget: NormalTextWidget(
                    color: Colors.white, fontSize: 18, text: 'Register')),
            const Expanded(
              child: SizedBox(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NormalTextWidget(
                    color: Colors.black,
                    fontSize: 14,
                    text: 'Already have an account?'),
                TextButton(
                  onPressed: () {},
                  child: BoldTextWidget(
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
