import 'package:calculator/widget/calculator_button.dart';
import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  int firstNum;
  int secondNum;
  String history = '';
  String textToDisplay = '';
  String res;
  String operation;

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == "C") {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == "AC") {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '<') {
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Calculator"),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(44, 110, 160, 1),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  history,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.white24,
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  textToDisplay,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(
                  text: "AC",
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: "C",
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: "<",
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: "/",
                  textSize: 24,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(
                  text: "9",
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: "8",
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: "7",
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: "x",
                  textSize: 24,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(
                  text: "4",
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: "5",
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: "6",
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: "-",
                  textSize: 24,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(
                  text: "3",
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: "2",
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: "1",
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: "+",
                  textSize: 24,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalculatorButton(
                  text: ".",
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: "0",
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: "00",
                  textSize: 24,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: "=",
                  textSize: 24,
                  callback: btnOnClick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
