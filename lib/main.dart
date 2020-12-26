import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildTile({Color view, int soundNum}) {
    return Expanded(
      child: FlatButton(
        color: view,
        onPressed: () {
          print('Button clicked');
          final player = AudioCache();
          player.play('note$soundNum.wav');
        },
        child: Text('Click me'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildTile(view: Colors.red, soundNum: 1),
              buildTile(view: Colors.orange, soundNum: 2),
              buildTile(view: Colors.yellow, soundNum: 3),
              buildTile(view: Colors.green, soundNum: 4),
              buildTile(view: Colors.blue, soundNum: 5),
              buildTile(view: Colors.indigo, soundNum: 6),
              buildTile(view: Colors.purple, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
