import 'package:ceosi_app/repositories/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  userSignIn(String name, email, password, confirmPassword, role) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);

    UserRepository().addUser(name, email, password, confirmPassword, role);
  }
}
