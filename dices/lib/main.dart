import 'package:flutter/material.dart';
import 'dart:math';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int rightDice = 1;
  int leftDice = 1;

  void onDiceClick() {
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Dice"),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      onDiceClick();
                    });
                  },
                  child: Image.asset('Assets/images/dice$leftDice.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      onDiceClick();
                    });
                  },
                  child: Image.asset('Assets/images/dice$rightDice.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
