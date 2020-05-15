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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftSidedice = 5;
                  });

                  print('left button pressed');
                },
                child: Image.asset('images/dice$leftSidedice.png')),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  print('right button pressed');
                },
                child: Image.asset('images/dice2.png')),
          ),
        ],
      ),
    );
  }
}
