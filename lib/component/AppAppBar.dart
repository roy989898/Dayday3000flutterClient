import 'package:flutter/material.dart';

class AppAppbar extends AppBar {
  static AppBar getAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
