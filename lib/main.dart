import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';
import 'page/DisplayListPage.dart';
import 'page/login_page/login_page_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/login',
        theme: ThemeData(
          primaryColor: white,
        ),
        getPages: [
          GetPage(
            name: '/',
            page: () => DisplayListPage(),
          ),
          GetPage(
            name: '/login',
            page: () => LoginPagePage(),
          ),

        ]);
  }
}
