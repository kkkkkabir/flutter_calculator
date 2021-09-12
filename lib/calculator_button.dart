import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final double textSize;
  final Function callback;
  const CalculatorButton(
      {Key? key,
      required this.text,
      required this.fillColor,
      required this.textSize,
      required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: SizedBox(
          width: 70,
          height: 70,
          child: ElevatedButton(
            onPressed: () => callback(text),
            child: Text(text),
            style: ElevatedButton.styleFrom(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(15.0),
              ),
              primary: Color(fillColor), //Background
              textStyle: GoogleFonts.rubik(
                fontSize: textSize,
              ),
            ),
          ),
        ));
  }
}
