import 'package:flutter/material.dart';
import 'package:get/get.dart';



class DisplayListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [Text('Here is the DisplayListPage')],
          ),
        ));
  }
}