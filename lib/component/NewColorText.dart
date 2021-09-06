import 'dart:developer';

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
  var _colos = [
    Colors.pink,
    Colors.red,
    Colors.deepOrange,
    Colors.orange,
    Colors.amber,
  ];

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: _colos.length-1),
        duration: Duration(seconds: 10),
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
        builder: (_, double colorIndex, __) {
          return Neon(
            text: widget.text,
            color: _colos[colorIndex.round()],
            fontSize: Static.text_4xl,
            font: NeonFont.Beon,
            flickeringText: true,
            flickeringLetters: [0, 1],
          );
        });
  }
}
