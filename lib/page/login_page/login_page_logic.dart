import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../FireBaseService.dart';
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
    var loginSuccess =
        await FireBaseService.login(state.value.username, state.value.password);
    if (loginSuccess) {
      //  TODO login success
    }
  }

  Future<void> loginCopy() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    var stock = firestore.collection('stock');
    QuerySnapshot<Map<String, dynamic>> stockResult = await stock.get();

    //get the filed in a doc
    var fDate = stockResult.docs.first.get('date');
    //get the collection in a doc
    var fdId = stockResult.docs.first.id;
    var stockConnectionInSpecificDate =
        firestore.collection('stock/$fdId/stock');
    var stockConnectionInSpecificDateResult =
        await stockConnectionInSpecificDate.get();
    var xx = stockConnectionInSpecificDateResult.docs.first
        .get('current_lower_price');
    var i = 1 + 1;

    stockResult.docs.forEach((doc) async {
      // String date = doc.get('date');
      var docId = doc.id;
      var pathOfStockDoc = 'stock/$docId/stock';
      var stockConnectionInSpecificDate = firestore.collection(pathOfStockDoc);
      var stockConnectionInSpecificDateResult =
          await stockConnectionInSpecificDate.get();
      stockConnectionInSpecificDateResult.docs.forEach((aStock) {
        var current_lower_price = aStock.get('current_lower_price');
        var i = 1 + 1;
      });
    });
  }
}
