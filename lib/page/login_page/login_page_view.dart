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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Column(
            children: [
              TextField(
                decoration: InputDecoration.collapsed(hintText: 'Name'),
              ),
              TextField(
                decoration: InputDecoration.collapsed(hintText: 'Password'),
              ),
            ],
          ))
        ],
      ),
    ));
  }
}
