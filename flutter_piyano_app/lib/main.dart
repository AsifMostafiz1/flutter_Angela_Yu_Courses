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
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: FlatButton(
              onPressed: (){
                final player = AudioCache();
                player.loop('note1.wav');
              },
              child: Text("Click Me"),
            ),
          ),
        ),
      ),
    );
  }
}
