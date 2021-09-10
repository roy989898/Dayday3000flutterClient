import 'package:flutter/material.dart';

import '../obj.dart';

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

  List<Widget> _getChildren(List<Stock> stocks, bool display) {
    return List<Widget>.generate(stocks.length, (i) {
      return Visibility(visible: display, child: Text(stocks[i].name));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
            onTap: () {
              setState(() {
                listOn = !listOn;
              });
            },
            child: Text(widget.text.split('.')[0])),
        ..._getChildren(widget.stocks, listOn)
      ],
    );
  }
}
