import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bussness Card',
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child:Column( 
            mainAxisAlignment:  MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('Assets/Images/mr.jpg'),
              ),
              Text('Muhammad Rahman',style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize:  35.0,
                color: Colors.white

              ),),
              SizedBox(
                width: 180.0,
                height: 20.0,
                child: Divider(
                 color:  Colors.teal.shade100,
                )

              ),
              Text("Flutter Developer",style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
                letterSpacing: 2.5,
                color:  Colors.teal.shade100
              ),),
              Card(
                margin: EdgeInsets.symmetric( vertical: 10.0, horizontal: 25.0),
                child: ListTile (
                   leading: Icon(Icons.phone),
                   title: Text('+923029462604',
                   ),
                   ) ,
              ),
              Card(
                margin: EdgeInsets.symmetric( vertical: 10.0, horizontal: 25.0),
                child: ListTile (
                   leading: Icon(Icons.email),
                   title: Text('muhammadrahman2042@gmail.com'
                   ),
                         
                   ) ,
              )
            ],
          ),
          ),
      ),
    );
  }
}
