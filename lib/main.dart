import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final AudioCache audioCache = AudioCache();
    audioCache.play('note$soundNumber.wav');
  }

  Expanded buildKey({required int soundNumber, required Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child: const FractionallySizedBox(
          widthFactor: 100.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(soundNumber: 1, color: Colors.red),
                  buildKey(soundNumber: 2, color: Colors.orange),
                  buildKey(soundNumber: 3, color: Colors.yellow),
                  buildKey(soundNumber: 4, color: Colors.green),
                  buildKey(soundNumber: 5, color: Colors.blue),
                  buildKey(soundNumber: 6, color: Colors.teal),
                  buildKey(soundNumber: 7, color: Colors.purple),
                ]),
          ),
        ),
      ),
    );
  }
}
