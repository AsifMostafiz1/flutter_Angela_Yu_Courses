import 'second_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

var emailController = TextEditingController();
var passwordController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      labelText: 'User Id',
                      labelStyle: const TextStyle(color: Colors.green),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide( color: Colors.green),
                        borderRadius: BorderRadius.circular(20),

                      ),
                      suffixIcon:const Icon(Icons.verified_user,color: Colors.green,)
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.green),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide( color: Colors.green),
                        borderRadius: BorderRadius.circular(20),

                      ),
                    suffixIcon:const Icon(Icons.remove_red_eye,color: Colors.green,)
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: const Text('Log in'),
                onPressed: () {
                  loginInfo();


                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                        )
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(10)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 18))),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loginInfo() async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      var response = await http.post(Uri.parse("http://3.110.10.31/api/login"),
          body: ({
            'login_id': emailController.text,
            'password': passwordController.text
          }));
      if (response.statusCode == 201) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
        emailController.text='';
        passwordController.text='';
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Wrong Password or userId')));

      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('User id or Password Blanked')));
    }
  }
}
