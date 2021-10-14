import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(children: <Widget>[
              Expanded(
                  child: TextButton(
                onPressed: () {
                  AudioCache audioCache = AudioCache();
                  audioCache.play('note1.wav');
                },
                child: Container(
                  color: Colors.red,
                ),
              )),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    AudioCache audioCache = AudioCache();
                    audioCache.play('note2.wav');
                  },
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    AudioCache audioCache = AudioCache();
                    audioCache.play('note3.wav');
                  },
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    AudioCache audioCache = AudioCache();
                    audioCache.play('note4.wav');
                  },
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    AudioCache audioCache = AudioCache();
                    audioCache.play('note5.wav');
                  },
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    AudioCache audioCache = AudioCache();
                    audioCache.play('note6.wav');
                  },
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    AudioCache audioCache = AudioCache();
                    audioCache.play('note7.wav');
                  },
                  child: Container(
                    color: Colors.purple,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
