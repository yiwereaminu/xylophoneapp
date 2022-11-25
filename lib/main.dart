import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const xylonphonePage());
}

class xylonphonePage extends StatelessWidget {
  const xylonphonePage({Key? key}) : super(key: key);
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buildKey(int soundNum, Color stringColor) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(stringColor),
        ),
        onPressed: () {
          playSound(soundNum);
        },
        child: Text(''),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.blue),
              buildKey(3, Colors.teal),
              buildKey(4, Colors.orange),
              buildKey(5, Colors.cyan),
              buildKey(6, Colors.deepPurple),
              buildKey(7, Colors.greenAccent),
            ],
          ),
        ),
      ),
    );
  }
}
