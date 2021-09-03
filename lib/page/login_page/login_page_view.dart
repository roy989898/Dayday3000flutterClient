import 'package:day_day_3000_fluter_client/statis.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(Statis.fullPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Column(
              children: [
                TextField(
                  decoration: InputDecoration.collapsed(hintText: 'Name'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: Statis.padding4),
                  child: TextField(
                    decoration: InputDecoration.collapsed(hintText: 'Password'),
                  ),
                ),
                TextButton(onPressed: () {}, child: Text('Login'))
              ],
            ))
          ],
        ),
      ),
    ));
  }
}
