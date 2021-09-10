import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'detail_logic.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.put(DetailLogic());
    final state = Get.find<DetailLogic>().state;

    return Container();
  }
}
