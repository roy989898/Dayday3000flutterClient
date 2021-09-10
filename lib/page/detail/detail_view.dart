import 'package:day_day_3000_fluter_client/component/AppAppBar.dart';
import 'package:day_day_3000_fluter_client/obj.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../statis.dart';
import 'detail_logic.dart';

class DetailPage extends StatelessWidget {
  Stock stock;

  DetailPage(this.stock);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(DetailLogic());
    final state = Get.find<DetailLogic>().state;

    return SafeArea(
        child: Scaffold(
      appBar: AppAppbar.getAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(Static.fullPadding),
        child: Container(child: Text('DetailPage')),
      ),
    ));
  }
}
