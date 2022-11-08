abstract class UsertRepositoryInterface {
  Future addUser(
    String fullName,
    double userPoints,
    String email,
    String password,
    String confirmPassword,
    String role,
  );
}
