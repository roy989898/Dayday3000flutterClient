import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'list_logic.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.put(ListLogic());
    final state = Get.find<ListLogic>().state;

    return Container();
  }
}
