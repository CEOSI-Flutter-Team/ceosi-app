import 'package:ceosi_app/widgets/button_widget.dart';
import 'package:ceosi_app/widgets/text_widget.dart';
import 'package:ceosi_app/widgets/textformfield_widget.dart';
import 'package:flutter/material.dart';
import '../constants/images.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _secureText = true;

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SingleChildScrollView(
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
                isObscure: false,
                textFieldController: _usernameController,
                label: 'Username',
                colorFill: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              TextformfieldWidget(
                isObscure: _secureText,
                textFieldController: _passwordController,
                label: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _secureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _secureText = !_secureText;
                    });
                  },
                ),
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
                  textWidget: const NormalTextWidget(
                      color: Colors.white, fontSize: 18, text: 'Login')),
              const SizedBox(
                height: 10,
              ),
              ButtonWidget(
                  borderRadius: 100,
                  onPressed: () {},
                  buttonHeight: 50,
                  buttonWidth: 300,
                  textWidget: const NormalTextWidget(
                      color: Colors.white, fontSize: 18, text: 'Register')),
            ],
          ),
        ),
      ),
    );
  }
}
