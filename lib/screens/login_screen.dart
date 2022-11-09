import 'package:ceosi_app/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/images.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';
import '../widgets/textformfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _secureText = true;
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
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
                    color: CustomColors.primary,
                    borderRadius: 100,
                    onPressed: () {
                      AuthRepository(context).loginOfuser(
                          _usernameController.text, _passwordController.text);
                    },
                    buttonHeight: 50,
                    buttonWidth: 300,
                    textWidget: const NormalTextWidget(
                        color: Colors.white, fontSize: 18, text: 'Login')),
                const SizedBox(
                  height: 10,
                ),
                ButtonWidget(
                    color: CustomColors.primary,
                    borderRadius: 100,
                    onPressed: () {
                      Navigator.pushNamed(context, '/registerscreen');
                    },
                    buttonHeight: 50,
                    buttonWidth: 300,
                    textWidget: const NormalTextWidget(
                        color: Colors.white, fontSize: 18, text: 'Register')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
