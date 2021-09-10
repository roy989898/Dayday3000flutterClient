import 'dart:async';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:day_day_3000_fluter_client/obj.dart';
import 'package:day_day_3000_fluter_client/util.dart';
import 'package:get/get.dart';

import 'list_state.dart';

class ListLogic extends GetxController {
  final ListState state = ListState();
  final streamSubs = List<StreamSubscription>.empty();

  @override
  void onReady() {
    startListenStockList();

    super.onReady();
  }

  void startListenStockList() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    var stockStream = firestore.collection('stock').snapshots();
    // var sub =
    var sub = stockStream.listen((event) async {
      var dateStocksMap = Map<String, List<Stock>>();
      for (var doc in event.docs) {
        String dateString = doc.get('date');
        var docId = doc.id;
        var stockConnectionInSpecificDate =
            firestore.collection('stock/$docId/stock');
        var stockConnectionInSpecificDateResult =
            await stockConnectionInSpecificDate.get();
        List<Stock> stocks = <Stock>[];
        for (var stockConnectionInSpecificDateResultDoc
            in stockConnectionInSpecificDateResult.docs) {
          bool crash_finish =
              stockConnectionInSpecificDateResultDoc.get('crash_finish');
          double current_lower_price =
              stockConnectionInSpecificDateResultDoc.get('current_lower_price');
          Timestamp current_lower_price_date =
              stockConnectionInSpecificDateResultDoc
                  .get('current_lower_price_date');
          Timestamp enter_crash_date =
              stockConnectionInSpecificDateResultDoc.get('enter_crash_date');
          double enter_crash_price =
              stockConnectionInSpecificDateResultDoc.get('enter_crash_price');
          double high_ref_price =
              stockConnectionInSpecificDateResultDoc.get('high_ref_price');
          Timestamp high_ref_price_date =
              stockConnectionInSpecificDateResultDoc.get('high_ref_price_date');
          String name = stockConnectionInSpecificDateResultDoc.get('name');
          var stock = Stock(
              crash_finish,
              current_lower_price,
              current_lower_price_date,
              enter_crash_date,
              enter_crash_price,
              high_ref_price,
              high_ref_price_date,
              name);
          stocks.add(stock);
        }
        dateStocksMap[dateString] = stocks;

        /*var stockConnectionInSpecificDateResultDoc =
            stockConnectionInSpecificDateResult.docs.first;*/

      }

      state.dateStocksMap = dateStocksMap;
      // event.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) {});
    }, onError: (e) {
      showDialog(e.toString(), 'err'.tr);
    });

    streamSubs.add(sub);
  }



  @override
  void onClose() {
    streamSubs.forEach((element) {
      element.cancel();
    });
    super.onClose();
  }
}
