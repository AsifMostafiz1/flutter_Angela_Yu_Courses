import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: DiceApp(),
    ),
  ));
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                changeDice();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                changeDice();
              },
            ),
          ),
        ],
      ),
    );
  }

  void changeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }


}
