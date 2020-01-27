import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(Magic8BallApp());

class Magic8BallApp extends StatefulWidget {
  @override
  _Magic8BallAppState createState() => _Magic8BallAppState();
}

class _Magic8BallAppState extends State<Magic8BallApp> {
  int ballNumber = 1;
  void magic() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue[900],
          scaffoldBackgroundColor: Colors.blue[500]),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ask Me Anything"),
        ),
        body: Center(
          child: FlatButton(
            child: Image.asset("images/ball$ballNumber.png"),
            onPressed: () {
              setState(() {
                magic();
              });
            },
          ),
        ),
      ),
    );
  }
}
