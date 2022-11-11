class UserModel {
  String? fullName;
  String? userPoints;
  String? email;
  String? id;
  String? password;
  String? confirmPassword;
  String? role;

  UserModel(
      {this.fullName,
      this.email,
      this.password,
      this.confirmPassword,
      this.id,
      this.role,
      this.userPoints});

  static UserModel fromJson(json) => UserModel(
      fullName: json['fullName'],
      userPoints: json['userPoints'],
      email: json['email'],
      role: json['role'],
      id: json['id'],
      password: json['password'],
      confirmPassword: json['confirmPassword']);
}



/*

Users - Reward
-fullname
-userPoints (init: 0)
-email
-id (auto generated)
-password
-confirm_password
-role (Admin/Flutter Dev/Front-end Dev/Back-end Dev/QA)
 */
