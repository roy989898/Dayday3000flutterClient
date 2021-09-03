import 'package:get/get.dart';

class LoginPageState {
  var username = "";
  var password = "";

  bool get btEnabled =>
      username.trim().length > 0 && password.trim().length > 0;

  LoginPageState() {
    ///Initialize variables
  }
}
