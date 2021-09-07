import 'package:cloud_firestore/cloud_firestore.dart';

class FireBaseService {
  static Future<bool> login(String name, String password) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    var users = firestore.collection('users');
    var usersCollectionResult = await users
        .where('name', isEqualTo: name)
        .where('password', isEqualTo: password)
        .get();
    var length = usersCollectionResult.docs.length;
    return length > 0;
  }
}
