import 'package:day_day_3000_fluter_client/statis.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_page_logic.dart';

class LoginPagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.put(LoginPageLogic());
    final state = Get.find<LoginPageLogic>().state;

    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Static.fullPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: Static.halfPadding, bottom: Static.p_0),
                  child: Text('DayDay3000',
                      style: GoogleFonts.dancingScript(
                        fontSize: Static.text_4xl,
                        fontWeight: FontWeight.w900,
                      )),
                ),
                TextField(
                  style: TextStyle(fontSize: Static.text_base),
                  decoration: InputDecoration.collapsed(hintText: 'Name'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: Static.padding4),
                  child: TextField(
                    style: TextStyle(fontSize: Static.text_base),
                    decoration: InputDecoration.collapsed(hintText: 'Password'),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: Static.text_base),
                    ))
              ],
            ))
          ],
        ),
      ),
    ));
  }
}
