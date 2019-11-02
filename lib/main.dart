import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildNoteButton(1, Colors.redAccent),
            buildNoteButton(2, Colors.orangeAccent),
            buildNoteButton(3, Colors.yellowAccent),
            buildNoteButton(4, Colors.greenAccent),
            buildNoteButton(5, Colors.tealAccent),
            buildNoteButton(6, Colors.blueAccent),
            buildNoteButton(7, Colors.purpleAccent),
          ],
        ),
      ),
    );
  }

  Expanded buildNoteButton(int noteNumber, Color buttonColor) {
    return Expanded(
      child: FlatButton(
        color: buttonColor,
        onPressed: () {
          final player = AudioCache();
          player.play('note$noteNumber.wav');
        },
      ),
    );
  }
}
