import 'package:ceosi_app/repositories/user_repository_interface.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserRepository implements UsertRepositoryInterface {
  @override
  Future addUser(
    String fullName,
    double userPoints,
    String email,
    String password,
    String confirmPassword,
    String role,
  ) async {
    final docUser =
        FirebaseFirestore.instance.collection('CEOSI-REWARDS-USERS').doc();

    final json = {
      'fullName': fullName,
      'userPoints': userPoints,
      'email': email,
      'id': docUser.id,
      'password': password,
      'confirmPassword': confirmPassword,
      'role': role,
    };

    await docUser.set(json);
  }
}
