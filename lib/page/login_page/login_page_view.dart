import 'package:day_day_3000_fluter_client/component/ColorText.dart';
import 'package:day_day_3000_fluter_client/statis.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailwind_colors/tailwind_colors.dart';

import 'login_page_logic.dart';

class LoginPagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.put(LoginPageLogic());

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
                      top: Static.halfPadding, bottom: Static.p_96),
                  child: ColorText(
                    text: 'DayDay 3000',
                  ),
                ),
                TextField(
                  style: TextStyle(fontSize: Static.text_base),
                  decoration: InputDecoration.collapsed(hintText: 'Name'),
                  onChanged: (String name) {
                    logic.setUsername(name);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: Static.p_32),
                  child: TextField(
                    onChanged: (String password) {
                      logic.setPassword(password);
                    },
                    style: TextStyle(fontSize: Static.text_base),
                    decoration: InputDecoration.collapsed(hintText: 'Password'),
                  ),
                ),
                Obx(() {
                  return TextButton(
                      style: TextButton.styleFrom(
                        primary: logic.state.value.btEnabled
                            ? Colors.pink
                            : TWColors.gray.shade500,
                      ),
                      onPressed: () {
                        if (logic.state.value.btEnabled) {
                          //  TODO login click
                        }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: Static.text_2xl),
                      ));
                })
              ],
            ))
          ],
        ),
      ),
    ));
  }
}
