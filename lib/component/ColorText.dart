import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../statis.dart';

class ColorText extends StatefulWidget {
  final String text;

  const ColorText({Key? key, required this.text}) : super(key: key);

  @override
  _ColorTextState createState() => _ColorTextState();
}

class _ColorTextState extends State<ColorText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,
        style: GoogleFonts.dancingScript(
          fontSize: Static.text_4xl,
          fontWeight: FontWeight.w900,
        ));
  }
}
