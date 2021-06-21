import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;

  const CalculatorButton(
      {this.text,
      this.fillColor,
      this.textColor,
      this.textSize,
      this.callback});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 60,
        height: 60,
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(220, 231, 239,1)),
              elevation: MaterialStateProperty.all(8)),
          child: Text(
            text,
            style: TextStyle(
              fontSize: textSize,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          onPressed: () => callback(text),
        ),
      ),
    );
  }
}
