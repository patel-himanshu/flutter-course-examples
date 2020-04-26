import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Text('Dice Roll')),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDieNumber = 1;
  int rightDieNumber = 6;

  void changeDieNumber() {
    setState(() {
      leftDieNumber = Random().nextInt(6)+1;
      rightDieNumber = Random().nextInt(6)+1; 
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
//          flex: 2,
            child: FlatButton(
              onPressed: () {changeDieNumber();},
              child: Image.asset('images/dice$leftDieNumber.png'),
            ),
          ),
          Expanded(
//          flex: 1,
            child: FlatButton(
              onPressed: () {changeDieNumber();},
              child: Image.asset('images/dice$rightDieNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
