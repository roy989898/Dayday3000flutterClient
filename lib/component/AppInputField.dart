import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../statis.dart';

class AppInputField extends StatelessWidget {
  final String hint;
  final ValueChanged<String>? onChanged;
  const AppInputField({Key? key, required this.hint, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: Static.text_base),
      decoration: InputDecoration.collapsed(hintText: hint),
      onChanged: (String name) {
        // logic.setUsername(name);
        onChanged?.call(name);
      },
    );
  }
}
