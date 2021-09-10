import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:day_day_3000_fluter_client/obj.dart';
import 'package:get/get.dart';

import 'list_state.dart';

class ListLogic extends GetxController {
  final ListState state = ListState();

  @override
  void onReady() {
    // TODO: implement onReady
    startListenStockList();
    super.onReady();
  }

  void startListenStockList() async {
    //TODO trmp try
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    var stockStream = firestore.collection('stock').snapshots();
    // var sub =
    stockStream.listen((event) async {
      Iterable<Future<Stock>> stocksF=event.docs.map((doc) async {
        // var doc = event.docs.first;
        String dateString = doc.get('date');
        var docId = doc.id;
        var stockConnectionInSpecificDate =
            firestore.collection('stock/$docId/stock');
        var stockConnectionInSpecificDateResult =
            await stockConnectionInSpecificDate.get();
        bool crash_finish =
            stockConnectionInSpecificDateResult.docs.first.get('crash_finish');
        double current_lower_price = stockConnectionInSpecificDateResult
            .docs.first
            .get('current_lower_price');
        Timestamp current_lower_price_date = stockConnectionInSpecificDateResult
            .docs.first
            .get('current_lower_price_date');
        Timestamp enter_crash_date = stockConnectionInSpecificDateResult
            .docs.first
            .get('enter_crash_date');
        double enter_crash_price = stockConnectionInSpecificDateResult
            .docs.first
            .get('enter_crash_price');
        double high_ref_price = stockConnectionInSpecificDateResult.docs.first
            .get('high_ref_price');
        Timestamp high_ref_price_date = stockConnectionInSpecificDateResult
            .docs.first
            .get('high_ref_price_date');
        String name =
            stockConnectionInSpecificDateResult.docs.first.get('name');
        var stock = Stock(
            crash_finish,
            current_lower_price,
            current_lower_price_date,
            enter_crash_date,
            enter_crash_price,
            high_ref_price,
            high_ref_price_date,
            name);

        return stock;
      });

      // event.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) {});
      printInfo(info: '');
    }, onError: (e) {
      printInfo(info: '');
    });

    //TODO use to cancel the sub
    // sub.cancel();
  }

  void stopListenStockList() {}

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
