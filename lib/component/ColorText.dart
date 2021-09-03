import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailwind_colors/tailwind_colors.dart';

import '../statis.dart';

class ColorText extends StatefulWidget {
  final String text;

  ColorText({Key? key, required this.text}) : super(key: key);

  @override
  _ColorTextState createState() => _ColorTextState();
}

class _ColorTextState extends State<ColorText> {
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
          return Text(widget.text,
              style: GoogleFonts.dancingScript(
                fontSize: Static.text_4xl,
                fontWeight: FontWeight.w900,
                color: color,
              ));
        });
  }
}
