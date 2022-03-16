
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true,
        ),
        
        body: Center(
          child: Image.asset('images/diamond.png'),
        ),
      ),
    );
  }
}
