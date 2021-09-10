import 'package:flutter/cupertino.dart';

import '../statis.dart';

class AppText extends StatelessWidget {
  String text;

  AppText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: Static.text_base),
    );
  }
}
