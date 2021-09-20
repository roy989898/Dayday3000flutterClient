import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:day_day_3000_fluter_client/util.dart';
import 'package:get/get.dart';

import 'list_state.dart';

class ListLogic extends GetxController {
  final state = ListState().obs;
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
      // var dateStocksMap = Map<String, List<Stock>>();
      var docIds = <String>[];
      var dates = <String>[];
      var docs = event.docs;
      docs.sort((a, b) {
        String aDateString = a.get('date');
        String bDateString = b.get('date');
        var aParsedDate = DateTime.parse(aDateString);
        var bParsedDate = DateTime.parse(bDateString);
        // var compareResult=aParsedDate.isAfter(bParsedDate);
        return bParsedDate.compareTo(aParsedDate);
      });
      for (var doc in docs) {
        String dateString = doc.get('date');
        var docId = doc.id;
        docIds.add(docId);
        dates.add(dateString);
      }

      state.update((ListState? val) {
        val?.docIds = docIds;
        val?.dates = dates;
      });
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
