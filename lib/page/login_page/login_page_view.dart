import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_page_logic.dart';

class LoginPagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.put(LoginPageLogic());
    final state = Get.find<LoginPageLogic>().state;

    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [Text('LoginPagePage')],
          ),
        ));
  }
}
