import 'package:ceosi_app/repositories/auth_repository_interface.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';

class AuthRepository implements AuthRepositoryInterface {
  AuthRepository(this.context);
  BuildContext context;

  NavigatorState? navigator;

  final FirebaseAuth _Auth = FirebaseAuth.instance;
  @override
  void initNavigator() {
    navigator = Navigator.of(context);
  }

  @override
  Future<List<UserModel>?> loginOfuser(String email, password) async {
    try {
      UserCredential userCredential = await _Auth.signInWithEmailAndPassword(
          email: email, password: password);

      print('sucessfully logged in $userCredential');
      initNavigator();
      // _Auth.signOut();
      navigator!.pushNamed('/homescreen');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      } else if (e.code == 'invalid-email') {
      } else if (e.code == 'user-disabled') {
        print('user disabled.');
      }
    }
    return null;
  }

  @override
  Future<List<UserModel>?> registerOfuser(
      String name, email, password, passwordConfirmation) {
    //insert register function here @lance
    List name = ['hehe', 'heehe'];
    return name[0];
  }
}
