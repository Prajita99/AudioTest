import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context,dynamic AsyncSnapshot) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () {
                final PlayerMode = AssetSource('note1.wav');
              }, 
              child: Text('Click Me'),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                ),
                onPressed: () {
                final PlayerMode = AssetSource('note2.wav');
              }, 
              child: Text('Click Me'),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.yellow),
                ),
                onPressed: () {
                final PlayerMode = AssetSource('note3.wav');
              }, 
              child: Text('Click Me'),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: () {
                final PlayerMode = AssetSource('note4.wav');
              }, 
              child: Text('Click Me'),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                onPressed: () {
                final PlayerMode = AssetSource('note5.wav');
              }, 
              child: Text('Click Me'),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.cyan),
                ),
                onPressed: () {
                final player = AudioPlayer();
                  await player.setSource(AssetSource('note6.wav'));
              }, 
              child: Text('Click Me'),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                onPressed: () {
                final PlayerMode = AssetSource('note7.wav');
              }, 
              child: Text('Click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
