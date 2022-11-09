import 'package:ceosi_app/models/user_model.dart';

abstract class AuthRepositoryInterface {
  Future<List<UserModel>?> loginOfuser(String email, password);
  Future<List<UserModel>?> addUser(
    String fullName,
    String email,
    String password,
    String confirmPassword,
    String role,
  );
  initNavigator();
}
