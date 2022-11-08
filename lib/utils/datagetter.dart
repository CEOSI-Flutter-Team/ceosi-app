import 'package:cloud_firestore/cloud_firestore.dart';

getPosts() async {
  List<String> postList = [];
  QuerySnapshot snapshot =
      await FirebaseFirestore.instance.collection('freedomPosts').get();
  for (var documentSnapshot in snapshot.docs) {
    Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
    postList.add(data['content']);
  }
  print(snapshot);
  print(postList);
  // print(moodList);
  // print('thegloballist here : $globalmoodlist');
}
