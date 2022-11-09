import 'package:ceosi_app/models/user_model.dart';

abstract class AuthRepositoryInterface {
  Future<List<UserModel>?> loginOfuser(String email, password);
  Future<List<UserModel>?> registerOfuser(
      String name, email, password, passwordConfirmation);

  initNavigator();
}
