import 'package:ceosi_app/repositories/auth_repository_interface.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:unique_name_generator/unique_name_generator.dart';

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
  Future<List<UserModel>?> addUser(
    String fullName,
    String email,
    String password,
    String confirmPassword,
    String role,
  ) async {
    var ung = UniqueNameGenerator(
      dictionaries: [adjectives, animals],
      style: NameStyle.capital,
      separator: '_',
    );
    List<String> anonNames = List.generate(10, (index) => ung.generate());
    //add filter here if anonNames exists then randomized again

    final docUser = FirebaseFirestore.instance.collection('CEOSI-USERS').doc();

    final json = {
      'fullName': fullName,
      'userPoints': 0,
      'email': email,
      'id': docUser.id,
      'password': password,
      'confirmPassword': confirmPassword,
      'role': role,
      'contributions': 0,
      'anonymousName': anonNames[1],
    };

    await docUser.set(json);

    return null;
  }
}
