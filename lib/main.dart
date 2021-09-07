import 'package:day_day_3000_fluter_client/statis.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tailwind_colors/tailwind_colors.dart';

import 'colors.dart';
import 'language/Messages.dart';
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
        translations: Messages(),
        // your translations
        locale: Locale('en', 'US'),
        title: 'Flutter Demo',
        initialRoute: '/login',
        theme: ThemeData(
          //TODO make the theme
          // Define the default brightness and colors.
          brightness: Brightness.dark,
          primaryColor: TWColors.pink.shade500,
          buttonColor: TWColors.pink.shade500,
          accentColor: TWColors.orange.shade500,
          disabledColor: TWColors.gray.shade500,

          // Define the default font family.
          // fontFamily: 'Sans Serif',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: Static.text_7xl, fontWeight: FontWeight.bold),
            headline6: TextStyle(
                fontSize: Static.text_4xl, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: Static.text_sm, fontFamily: 'Hind'),
            button: TextStyle(
              fontSize: Static.text_2xl,
              // fontFamily: 'Sans Serif',
            ),
          ),
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
