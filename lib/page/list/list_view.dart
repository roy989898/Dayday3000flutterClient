import 'package:day_day_3000_fluter_client/component/AppAppBar.dart';
import 'package:day_day_3000_fluter_client/component/StockList.dart';
import 'package:day_day_3000_fluter_client/obj.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../statis.dart';
import 'list_logic.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.put(ListLogic());
    // final state = Get.find<ListLogic>().state;

    return SafeArea(
        child: Scaffold(
      appBar: AppAppbar.getAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(Static.fullPadding),
        child: Container(
          child: Obx(() {
            return ListView.builder(
                itemCount: logic.state.value.dateStocksMap.length,
                itemBuilder: (BuildContext context, int index) {
                  var map = logic.state.value.dateStocksMap;
                  var key = map.keys.toList()[index];
                  List<Stock> stocks = map[key] ?? [];

                  return StockList(stocks: stocks, text: key);
                });
          }),
        ),
      ),
    ));
  }
}
