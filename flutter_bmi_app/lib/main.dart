import 'package:flutter/material.dart';
import 'home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Bmi Calculator',

      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E20),
        scaffoldBackgroundColor: Color(0xFF0A0E20),
        //scaffoldBackgroundColor: Color(0xFF1D1E32),
      ),
      home: HomePage(),
    );
  }
}


