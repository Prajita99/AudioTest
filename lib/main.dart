import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  
  Future<void> playSound(int soundNumber) async {
    final player = AudioPlayer();
    // play(player, soundNumber);
      await player.setSourceUrl('assets/note$soundNumber.wav'); // equivalent to setSource(UrlSource(url));
        await player.setVolume(1);
          await player.setPlaybackRate(0.5); // half speed
            AudioPlayer.global.setGlobalAudioContext(AudioContextConfig(/*...*/).build());
  }

  Expanded buildKey({required Color backgroundColor, required int soundNumber}) {
   return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(
          'Click Me',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(backgroundColor: 
            Colors.red, soundNumber: 1),
              buildKey(backgroundColor: Colors.orange, soundNumber: 2),
              buildKey(backgroundColor: Colors.yellow, soundNumber: 3),
              buildKey(backgroundColor: Colors.green, soundNumber: 4),
              buildKey(backgroundColor: Colors.pink, soundNumber: 5),
              buildKey(backgroundColor: Colors.cyan, soundNumber: 6),
              buildKey(backgroundColor: Colors.blue, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }

  void play(AudioPlayer player, int soundNumber) {}
}
