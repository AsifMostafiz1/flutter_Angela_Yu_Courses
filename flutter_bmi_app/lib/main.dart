import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bmi Calculator",
      theme: ThemeData(
        primaryColor: Colors.purple[400],
        primarySwatch: Colors.purple,
        accentColor: Colors.purple[300],
        scaffoldBackgroundColor: Colors.white,

        textTheme: TextTheme(
          body1: TextStyle(
            color: Colors.black,fontSize: 20
          )
        )
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome To Log In Page",style: TextStyle(color: Colors.purple),),

                SizedBox(height: 50,),

                TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.purple),
                    hintText: 'Enter Email',
                    icon: Icon(Icons.email,color: Colors.purple,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),

                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,

                ),

                SizedBox(height: 30,),

                TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.purple),
                    hintText: 'Enter Password',
                    icon: Icon(Icons.lock,color: Colors.purple,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),

                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  controller: passwordController,

                ),

                SizedBox(height: 20,),
                
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: (){
                            final String email = emailController.text;
                            final String password = passwordController.text;

                            if(email.isEmpty && password.isEmpty){
                              final snackBar = SnackBar(
                                content: Text('Enter Email or Password'),
                              );

                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            }
                          },
                          child: Text('Log In')),
                    ),
                    SizedBox(width: 20,),
                  ],
                )

                

              ],
            ),
          ),
        ),
      ),
    );
  }
}

