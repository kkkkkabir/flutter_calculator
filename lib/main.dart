import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/calculator_button.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  late int firstNum;
  late int secondNum;
  late String history = '';
  late String textToDisplay = '';
  late String res;
  late String operation;

  btnOnClick(String btnVal) {
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-' + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == '<-') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'x' ||
        btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'x') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }

    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        backgroundColor: Color(0xff212121),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                        fontSize: 24, color: Colors.grey[500]),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    textToDisplay,
                    style: GoogleFonts.rubik(fontSize: 48, color: Colors.white),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: 'AC',
                  fillColor: 0xfff50057,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: 'C',
                  fillColor: 0xfff50057,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '<-',
                  fillColor: 0xff29b6f6,
                  textSize: 25,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '/',
                  fillColor: 0xffea80fc,
                  textSize: 25,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '9',
                  fillColor: 0xff3d5afe,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '8',
                  fillColor: 0xff3d5afe,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '7',
                  fillColor: 0xff3d5afe,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: 'x',
                  fillColor: 0xffea80fc,
                  textSize: 25,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '6',
                  fillColor: 0xff3d5afe,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '5',
                  fillColor: 0xff3d5afe,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '4',
                  fillColor: 0xff3d5afe,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '-',
                  fillColor: 0xffea80fc,
                  textSize: 30,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '3',
                  fillColor: 0xff3d5afe,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '2',
                  fillColor: 0xff3d5afe,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '1',
                  fillColor: 0xff3d5afe,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '+',
                  fillColor: 0xffea80fc,
                  textSize: 25,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '+/-',
                  fillColor: 0xff3d5afe,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '0',
                  fillColor: 0xff3d5afe,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '00',
                  fillColor: 0xff3d5afe,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '=',
                  fillColor: 0xffea80fc,
                  textSize: 25,
                  callback: btnOnClick,
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
