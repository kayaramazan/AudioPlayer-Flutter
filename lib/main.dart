import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XyloPhoneApp());
class XyloPhoneApp extends StatelessWidget {
  void start(int number)
  {
    final player = AudioCache();
    player.play('note$number.wav');
  }
  Expanded section(Color color,int soundNumber)
  {
    return Expanded(
      child: Container(
        color: color,
        child: FlatButton(
          onPressed: () => start(soundNumber),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Piano'),
        ),
        body: SafeArea(

          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              section(Colors.red, 1),
              section(Colors.redAccent, 2),
              section(Colors.deepOrange, 3),
              section(Colors.deepOrangeAccent, 4),
              section(Colors.orange, 5),
              section(Colors.yellow, 6),
              section(Colors.yellowAccent, 7),
            ],
          )
//          Center(child: FlatButton(
//
//          )),
        ),
      ),
    );
  }
}

