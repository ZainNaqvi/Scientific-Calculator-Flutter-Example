import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  double ValuefontSize = 35;
  double ResultfontSize = 50;
  String equation = "";
  String value = "0";
  String result = "0";
  String addtion = "+";
  String substraction = "-";
  String multiplication = "*";
  String division = "/";
  handleTap(String data) {
    if (data == "C") {
      value = "";
      if (value == "") {
        value = "0";
      }
    } else if (data == "B") {
      value = value.substring(0, data.length - 1);
    } else if (data == "=") {
      equation = value;
    } else {
      if (value == "0") {
        value = "";
      }

      value = value + data;
    }
    setState(() {});
  }

  Widget buttons(String buttonText, double buttonSize, color) {
    return Expanded(
      child: Container(
        child: FlatButton(
            height: 100,
            onPressed: () => handleTap(buttonText),
            child: Text(
              buttonText,
              style: TextStyle(
                color: color,
                fontSize: buttonSize,
                fontWeight: FontWeight.bold,
              ),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        title: Icon(
          CupertinoIcons.time,
          color: Theme.of(context).accentColor,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: InkWell(
                onTap: () {
                  setState(() {});
                  value = "";
                  if (value == "") {
                    value = "0";
                    setState(() {});
                  }
                },
                splashColor: Colors.transparent,
                child: Icon(Icons.refresh_outlined)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(height: 100),
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(bottom: 10, right: 20),
            child: Text(
              value,
              style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: ValuefontSize),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(bottom: 40, right: 20),
            child: Text(
              result,
              style: TextStyle(
                  color: Theme.of(context).focusColor,
                  fontSize: ResultfontSize),
            ),
          ),
          Row(
            children: [
              buttons("C", 40.0, Color.fromARGB(255, 67, 158, 211)),
              buttons("B", 40.0, Color.fromARGB(255, 67, 158, 211)),
              buttons("%", 40.0, Color.fromARGB(255, 67, 158, 211)),
              buttons("÷", 40.0, Color.fromARGB(255, 224, 62, 138)),
            ],
          ),
          Row(
            children: [
              buttons("7", 30.0, Theme.of(context).focusColor),
              buttons("8", 30.0, Theme.of(context).focusColor),
              buttons("9", 30.0, Theme.of(context).focusColor),
              buttons("X", 40.0, Color.fromARGB(255, 224, 62, 138)),
            ],
          ),
          Row(
            children: [
              buttons("4", 30.0, Theme.of(context).focusColor),
              buttons("5", 30.0, Theme.of(context).focusColor),
              buttons("6", 30.0, Theme.of(context).focusColor),
              buttons("-", 40.0, Color.fromARGB(255, 224, 62, 138)),
            ],
          ),
          Row(
            children: [
              buttons("1", 30.0, Theme.of(context).focusColor),
              buttons("2", 30.0, Theme.of(context).focusColor),
              buttons("3", 30.0, Theme.of(context).focusColor),
              buttons("+", 40.0, Color.fromARGB(255, 224, 62, 138)),
            ],
          ),
          Row(
            children: [
              buttons("", 30.0, Theme.of(context).focusColor),
              buttons("0", 30.0, Theme.of(context).focusColor),
              buttons(".", 30.0, Theme.of(context).focusColor),
              buttons("=", 40.0, Color.fromARGB(255, 224, 62, 138)),
            ],
          ),
        ]),
      ),
    );
  }
}
