import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'list_view_children_logic.dart';

class ListViewChildren extends StatelessWidget {
  ListViewChildrenLogic logic/*= Get.put(ListViewChildrenLogic())*/;

  final state = Get.find<ListViewChildrenLogic>().state;

  String docId;

  ListViewChildren(this.docId) : logic = Get.put(ListViewChildrenLogic(docId));

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
