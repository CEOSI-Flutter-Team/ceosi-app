import 'package:ceosi_app/repositories/user_repository_interface.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:unique_name_generator/unique_name_generator.dart';

class UserRepository implements UsertRepositoryInterface {
  @override
  Future addUser(
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
  }
}
