import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon/neon.dart';
import 'package:tailwind_colors/tailwind_colors.dart';

import '../statis.dart';

class NewColorText extends StatefulWidget {
  final String text;

  NewColorText({Key? key, required this.text}) : super(key: key);

  @override
  _NewColorTextState createState() => _NewColorTextState();
}

class _NewColorTextState extends State<NewColorText> {
  var _beginColor = TWTwoColors.yellow.shade500;
  var _endColorColor = TWTwoColors.pink.shade500;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: ColorTween(begin: _beginColor, end: _endColorColor),
        duration: Duration(seconds: 2),
        onEnd: () {
          setState(() {
            if (_endColorColor == TWTwoColors.pink.shade500) {
              _endColorColor = TWTwoColors.yellow.shade500;
            } else {
              _endColorColor = TWTwoColors.pink.shade500;
            }

            // _endColorColor = TWTwoColors.yellow.shade500;
          });
        },
        builder: (_, Color? color, __) {
          return Neon(
            text: widget.text,
            color: Colors.green,
            fontSize: Static.text_4xl,
            font: NeonFont.Beon,
            flickeringText: true,
            flickeringLetters: [0,1],
          );
        });
  }
}
