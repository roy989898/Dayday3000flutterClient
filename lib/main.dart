import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';

void main() {
  runApp(MyApp());
}

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

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/',
        theme: ThemeData(
          primaryColor: white,
        ),
        getPages: [
          GetPage(
            name: '/',
            page: () => DisplayListPage(),
          )
        ]);
  }
}
