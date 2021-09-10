import 'package:day_day_3000_fluter_client/page/detail/detail_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tailwind_colors/tailwind_colors.dart';

import '../obj.dart';
import '../statis.dart';

class StockList extends StatefulWidget {
  final List<Stock> stocks;
  final String text;

  const StockList({Key? key, required this.stocks, required this.text})
      : super(key: key);

  @override
  _StockListState createState() => _StockListState();
}

class _StockListState extends State<StockList> {
  var listOn = false;

  String formatNum(double inn) {
    var f = NumberFormat("###.0###", "en_US");
    return f.format(inn);
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: Static.p_13),
          child: InkWell(
            onTap: () {
              setState(() {
                listOn = !listOn;
              });
            },
            child: Text(
              widget.text.split('.')[0],
              style: TextStyle(
                  fontSize: Static.text_xl, color: TWColors.green.shade900),
            ),
          ),
        ),
        ..._getChildren(widget.stocks, listOn)
      ],
    );
  }
}
