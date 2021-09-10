import 'package:day_day_3000_fluter_client/component/AppAppBar.dart';
import 'package:day_day_3000_fluter_client/component/AppAppText.dart';
import 'package:day_day_3000_fluter_client/obj.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../statis.dart';
import '../../util.dart';
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
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: Static.p_8),
              child: Row(
                children: [
                  AppText('name'.tr),
                  AppText(' : '),
                  AppText(stock.name.toString()),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: Static.p_8),
              child: Row(
                children: [
                  AppText('enter_crash_price'.tr),
                  AppText(' : '),
                  AppText(formatNum(stock.enter_crash_price)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: Static.p_8),
              child: Row(
                children: [
                  AppText('enter_crash_date'.tr),
                  AppText(' : '),
                  AppText(formatTimestamp(stock.enter_crash_date)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: Static.p_8),
              child: Row(
                children: [
                  AppText('current_lower_price'.tr),
                  AppText(' : '),
                  AppText(formatNum(stock.current_lower_price)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: Static.p_8),
              child: Row(
                children: [
                  AppText('current_lower_price_date'.tr),
                  AppText(' : '),
                  AppText(formatTimestamp(stock.current_lower_price_date)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: Static.p_8),
              child: Row(
                children: [
                  AppText('high_ref_price'.tr),
                  AppText(' : '),
                  AppText(formatNum(stock.high_ref_price)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: Static.p_8),
              child: Row(
                children: [
                  AppText('high_ref_price_date'.tr),
                  AppText(' : '),
                  AppText(formatTimestamp(stock.high_ref_price_date)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: Static.p_8),
              child: Row(
                children: [
                  AppText('crash_finish'.tr),
                  AppText(' : '),
                  AppText(stock.crash_finish.toString()),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
