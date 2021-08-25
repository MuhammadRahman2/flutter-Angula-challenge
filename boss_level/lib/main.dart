import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int imageNO = 1;

  void changeImage() {
    setState(() {
      imageNO = Random().nextInt(5) +1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[800],
          title: Text("Ask me Every thing"),
        ),
        body: Center(
          child: Container(
            child: TextButton(
              onPressed: () {
                changeImage();
              },
              child: Image.asset('images/ball$imageNO.png'),
            ),
          ),
        ),
      ),
    );
  }
}
