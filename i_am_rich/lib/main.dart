import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("I am poor"),
          backgroundColor: Colors.grey[900],
        ) ,
        body: Center(
          child: Image(
            image: AssetImage('Images/diamond.png') ,
            ),
        ),
        ),
    );
  }
}