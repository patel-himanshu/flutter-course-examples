import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound) {
    final AudioCache player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded coloredButton(Color colorName, int buttonNumber) {
    return Expanded(
      child: FlatButton(
        color: colorName,
        onPressed: () {
          playSound(buttonNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              coloredButton(Colors.red, 1),
              coloredButton(Colors.orange, 2),
              coloredButton(Colors.yellow, 3),
              coloredButton(Colors.green, 4),
              coloredButton(Colors.cyan, 5),
              coloredButton(Colors.blue[700], 6),
              coloredButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
