import 'package:get/get.dart';

import 'login_page_state.dart';

class LoginPageLogic extends GetxController {
  final state = LoginPageState().obs;

  setUsername(String name) {
    state.update((val) {
      val!.username = name;
    });
  }

  setPassword(String password) {
    state.update((val) {
      val!.password = password;
    });
  }
}
