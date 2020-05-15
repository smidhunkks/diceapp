import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftSidedice = 1;
  int rightSidedice = 6;

  void randomFace() {
    leftSidedice =
        Random().nextInt(6) + 1; //generates random numbers from 1 to 6
    rightSidedice =
        Random().nextInt(6) + 1; //generates random numbers from 1 to 6
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    randomFace();
                  });

                  print('left button pressed');
                },
                child: Image.asset('images/dice$leftSidedice.png')),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    randomFace();
                  });
                },
                child: Image.asset('images/dice$rightSidedice.png')),
          ),
        ],
      ),
    );
  }
}
