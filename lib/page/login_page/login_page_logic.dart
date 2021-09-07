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

    var stock = firestore.collection('stock');
    QuerySnapshot<Map<String, dynamic>> stockResult = await stock.get();

    //get the filed in a doc
    var fDate=stockResult.docs.first.get('date');
    //get the collection in a doc
    var fdId=stockResult.docs.first.id;
    var stockConnectionInSpecificDate = firestore.collection('stock/$fdId/stock');
    var stockConnectionInSpecificDateResult= await stockConnectionInSpecificDate.get();
    var xx=stockConnectionInSpecificDateResult.docs.first.data();
    var i = 1 + 1;
  }
}
