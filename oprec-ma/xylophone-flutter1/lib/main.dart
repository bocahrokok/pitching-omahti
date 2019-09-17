import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int num}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black54,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, num: 1),
                buildKey(color: Colors.orange, num: 2),
                buildKey(color: Colors.yellow, num: 3),
                buildKey(color: Colors.green, num: 4),
                buildKey(color: Colors.teal, num: 5),
                buildKey(color: Colors.teal, num: 6),
                buildKey(color: Colors.purple, num: 7),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
              color: Colors.yellow,
              child: Text(
                'Nurrizky Imani 2018 for OmahTi',
                textAlign: TextAlign.center,
              ),
              notchMargin: 9.0)),
    );
  }
}
