import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import 'login_page_state.dart';

class LoginPageLogic extends GetxController {
  final state = LoginPageState().obs;

  setUsername(String name) {
    state.update((val) {
      val!.username = name;
    });
  }

  setPassword(String password) {
    state.update((val) {
      val!.password = password;
    });
  }

  Future<void> login() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
 
    var testing = firestore.collection('testing');
    QuerySnapshot<Map<String, dynamic>> result = await testing.get();
    result.docs.forEach((QueryDocumentSnapshot<Map<String, dynamic>> doc) {
      var car=doc.get('car');
      print('fgdf');
    });

    var i = 1 + 1;
  }
}
