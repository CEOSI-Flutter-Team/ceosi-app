import 'package:ceosi_app/models/user_model.dart';
import 'package:flutter/cupertino.dart';

abstract class AuthRepositoryInterface {
  Future<List<UserModel>?> loginOfuser(String email, password);
  userSignUp(String name, email, password, confirmPassword, role,
      BuildContext context);
}
