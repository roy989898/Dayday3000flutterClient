import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final bool enable;
  final String text;
  final void Function()? click;

  const AppButton(
      {Key? key, required this.enable, required this.text, this.click})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: enable
              ? Theme.of(context).buttonColor
              : Theme.of(context).disabledColor,
        ),
        onPressed: () {
          if (enable) {
            click?.call();
          }
        },
        child: Text(
          text,
          style: Theme.of(context).textTheme.button,
        ));
  }
}
