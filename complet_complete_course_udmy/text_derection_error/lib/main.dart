import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Count"),
      ),
      body: Container(
        padding:  EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          children: [
            Row(
              children: [
                Text("this is Row and first column"),
                SizedBox(width: 10),
                Icon(Icons.star)
              ],
            ),
            Text("this is second column $num"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            num++;
          });
        },
        child: Icon(Icons.add),
      ),
    ));
  }
}
