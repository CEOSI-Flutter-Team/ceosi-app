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
      String uid,
      String profileImage) async {
    var ung = UniqueNameGenerator(
      dictionaries: [adjectives, animals],
      style: NameStyle.capital,
      separator: '_',
    );
    List<String> anonNames = List.generate(10, (index) => ung.generate());
    //add filter here if anonNames exists then randomized again

    final docUser = FirebaseFirestore.instance.collection('CEOSI-USERS').doc();
    // final eUser = FirebaseFirestore.instance.collection('CEOSI-USERS').doc();

    final json = {
      'name': fullName,
      'user_points': 0,
      'email': email,
      'id': docUser.id,
      'user_id': uid,
      'position': role,
      'contributions': 0,
      'anon_name': anonNames[1],
      'claimed_rewards': [{}],
      'earned_points': [{}],
      'profile_image': profileImage,
    };

    await docUser.set(json);
    // await eUser.set(json, {

    // });
  }

  Future addPoints(
    int pointsEquivalent,
    String comment,
    String earnedThrough,
    String userEmail,
  ) async {
    final docUser = FirebaseFirestore.instance
        .collection('CEOSI-POINTS-EARNED-REWARD')
        .doc();

    final json = {
      'id': docUser.id,
      'points_equivalent': pointsEquivalent,
      'comment': comment,
      'earned_through': earnedThrough,
      'email': userEmail,
    };

    await docUser.set(json);
  }
}
