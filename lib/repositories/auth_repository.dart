import 'package:ceosi_app/repositories/auth_repository_interface.dart';
import 'package:ceosi_app/repositories/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';

class AuthRepository implements AuthRepositoryInterface {
  AuthRepository(this.context);
  BuildContext context;

  NavigatorState? navigator;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void initNavigator() {
    navigator = Navigator.of(context);
  }

  @override
  Future<List<UserModel>?> loginOfuser(String email, password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      print('sucessfully logged in $userCredential');
      initNavigator();
      // _auth.signOut();
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
  userSignUp(String name, email, password, confirmPassword, role,
      BuildContext context) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      final user = FirebaseAuth.instance.currentUser!;

      UserRepository().addUser(
        name,
        email,
        password,
        confirmPassword,
        role,
        user.uid,
        'https://cdn-icons-png.flaticon.com/512/1177/1177568.png',
      );
    } catch (e) {
      // ErrorDialog(
      //     caption: e.toString(),
      //     onPressed: () {
      //       Navigator.of(context).pop();
      //     });
      print(e);
    }
  }
}
