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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.text),
        /*    Expanded(
          child: ListView.builder(
              itemCount: widget.stocks.length,
              itemBuilder: (BuildContext context, int index) {
                var stock = widget.stocks[index];
                return Text(stock.name);
              }),
        ),*/
      ],
    );
  }
}
