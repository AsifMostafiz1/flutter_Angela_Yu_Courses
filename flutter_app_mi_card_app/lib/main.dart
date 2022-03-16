import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/asif.jpg'),
                  radius: 60,
                ),
                Text(
                  "Asif Mostafiz",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(color: Colors.white, fontSize: 25,letterSpacing: 5),
                ),
                SizedBox(height: 10,),
                Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Icon(Icons.call),
                      ),
                      SizedBox(width: 30,height: 40,),
                      Text("01723063565"),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Icon(Icons.email),
                      ),
                      SizedBox(width: 30,height: 40,),
                      Text("mostafizur@gmail.com"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
