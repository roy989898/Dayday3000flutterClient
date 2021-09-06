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
                    text: 'app_name'.tr,
                  ),
                ),
                TextField(
                  style: TextStyle(fontSize: Static.text_base),
                  decoration: InputDecoration.collapsed(hintText: 'name'.tr),
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
                    decoration:
                        InputDecoration.collapsed(hintText: 'password'.tr),
                  ),
                ),
                Obx(() {
                  return TextButton(
                      style: TextButton.styleFrom(
                        primary: logic.state.value.btEnabled
                            ? Theme.of(context).accentColor
                            : Theme.of(context).disabledColor,
                      ),
                      onPressed: () {
                        if (logic.state.value.btEnabled) {
                          //  TODO login click
                        }
                      },
                      child: Text(
                        'login'.tr,
                        style: Theme.of(context).textTheme.button!.copyWith(
                            color: logic.state.value.btEnabled
                                ? Theme.of(context).accentColor
                                : Theme.of(context).disabledColor),
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
