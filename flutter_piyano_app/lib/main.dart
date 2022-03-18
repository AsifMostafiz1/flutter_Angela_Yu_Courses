import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              keyButton(Colors.red,8),
              keyButton(Colors.pink,8),
              keyButton(Colors.redAccent,8),
              keyButton(Colors.yellow,4),
              keyButton(Colors.brown,5),
              keyButton(Colors.blueAccent,6),
              keyButton(Colors.purple,7),
            ],
          ),
        ),
      ),
    );
  }


  Widget keyButton(Color colors, int soundNUmber){
    return Expanded(
      child: FlatButton(
        color: colors,
        child: Text(''),
        onPressed: (){
          final player = AudioCache();
          player.play('note$soundNUmber.wav');
        },
      ),
    );
  }
}


