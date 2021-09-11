import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../obj.dart';
import 'list_view_children_state.dart';

class ListViewChildrenLogic extends GetxController {
  final state = ListViewChildrenState().obs;
  final streamSubs = List<StreamSubscription>.empty();
  String docId = "";

  ListViewChildrenLogic();

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    startListen();
  }

  @override
  void onClose() {
    streamSubs.forEach((element) {
      element.cancel();
    });
    super.onClose();
  }

  void startListen() {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    var stockDocStockStream =
        firestore.collection('stock/$docId/stock').snapshots();
    stockDocStockStream.listen((event) {
      List<Stock> stocks = <Stock>[];
      for (var stockConnectionInSpecificDateResultDoc in event.docs) {
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
      state.update((val) {
        val?.stocks = stocks;
      });
    });
  }
}
