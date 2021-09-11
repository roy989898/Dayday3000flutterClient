import 'package:day_day_3000_fluter_client/page/detail/detail_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../obj.dart';
import '../../statis.dart';
import '../../util.dart';
import 'list_view_children_logic.dart';

class ListViewChildren extends StatelessWidget {
  ListViewChildrenLogic logic = Get.put(ListViewChildrenLogic());

  final state = Get.find<ListViewChildrenLogic>().state;

  late final String docId;
  late final bool listOn;

  ListViewChildren(String docId, bool listOn) {
    this.docId = docId;
    this.listOn = listOn;
    logic.docId=docId;
  }

  List<Widget> _getChildren(List<Stock> stocks, bool display) {
    return List<Widget>.generate(stocks.length, (i) {
      return Visibility(
          visible: display,
          child: InkWell(
            onTap: () {
              Get.to(DetailPage(stocks[i]));
            },
            child: Padding(
              padding: EdgeInsets.only(top: Static.p_14),
              child: Row(
                children: [
                  Text(
                    stocks[i].name,
                    style: TextStyle(fontSize: Static.text_lg),
                  ),
                  Text(
                    " " + "\$" + formatNum(stocks[i].enter_crash_price),
                    style: TextStyle(fontSize: Static.text_lg),
                  ),
                ],
              ),
            ),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [..._getChildren(state.value.stocks, listOn)],
      );
    });
  }
}
