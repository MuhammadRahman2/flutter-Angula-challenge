import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
// const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionNO = 0;

  List<String> question = [
    'Flutter is Specily made for Android',
    'Flutter Which is used dart Programming Language?',
    'Flutter 1st version was release in 2018'
  ];

  List<bool> answer = [
    false,
    true,
    true,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.black,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 6,
                  child: Center(
                    child: Text(
                      question[questionNO],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                        ),
                        onPressed: () {
                          bool correctAns = answer[questionNO];
                          if (correctAns == true) {
                            print("Correct Answer");
                          }else{
                            print("Wrong Answer");
                          }

                          setState(() {
                            questionNO++;
                          });
                        },
                        child: Text(
                          "False",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        )),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                        ),
                        onPressed: () {
                          bool correctAns = answer[questionNO];
                          if (correctAns == true) {
                            print("Correct Answer");
                          }else{
                            print("Wrong Answer");
                          }
                          setState(() {
                            questionNO++;
                          });
                        },
                        child: Text(
                          "True",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        )),
                  ),
                ),
                
              ],
            ),
            ),
            );
  }
}
