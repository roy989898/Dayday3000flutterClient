import 'package:day_day_3000_fluter_client/component/AppButton.dart';
import 'package:day_day_3000_fluter_client/component/AppInputField.dart';
import 'package:day_day_3000_fluter_client/component/ColorText.dart';
import 'package:day_day_3000_fluter_client/component/NewColorText.dart';
import 'package:day_day_3000_fluter_client/statis.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon/neon.dart';
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
                  child: NewColorText(
                    text: 'app_name'.tr,
                  ),
                ),
                AppInputField(
                  hint: 'name'.tr,
                  onChanged: (String name) {
                    logic.setUsername(name);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: Static.p_32),
                  child: AppInputField(
                    hint: 'passsword'.tr,
                    onChanged: (String password) {
                      logic.setPassword(password);
                    },
                  ),
                ),
                Obx(() {
                  return AppButton(
                    enable: logic.state.value.btEnabled,
                    text: 'login'.tr,
                    click: () {
                      //TODO login page
                      printInfo(info: 'clicked');
                    },
                  );
                })
              ],
            ))
          ],
        ),
      ),
    ));
  }
}
