import 'package:flutter/material.dart';

abstract class AuthRepositoryInterface {
  userSignUp(String name, email, password, confirmPassword, role,
      BuildContext context);
}
