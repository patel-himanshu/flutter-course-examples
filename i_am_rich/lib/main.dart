import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('I Am Rich')),
          backgroundColor:
              Colors.lightGreen[600], // backgroundColor: Color(0xFF3F51B5),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Image(
            image: AssetImage('images/arc_reactor.jpg'),
          ),
        ),
      ),
    );
  }
}