import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildkey() {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.orange,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
        ),
        onPressed: () {
          playSound(1);
        },
        child: null,
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
            children: [
              buildkey(),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                  onPressed: () {
                    playSound(1);
                  },
                  child: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
