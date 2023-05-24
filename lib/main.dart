import 'package:flutter/material.dart';

import 'Register.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyLoginPage(title: 'Flutter Demo Login Page'),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key, required this.title});

  final String title;

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    String usrename, password;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              color: const Color.fromARGB(77, 182, 180, 180),
              width: 400,
              height: 280,
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) => usrename = value,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17),
                        hintText: 'User Name: ',
                        suffixIcon: Icon(Icons.person_2_rounded),
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        fillColor: Colors.red),
                  ),
                  SizedBox(
                    width: 400,
                    height: 20,
                  ),
                  TextField(
                    onChanged: (value) => password = value,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 17),
                        hintText: 'Password: ',
                        suffixIcon: Icon(Icons.password_rounded),
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        fillColor: Colors.red),
                  ),
                  SizedBox(
                    width: 400,
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        //add your action here
                      },
                      child: Text("Login")),
                  SizedBox(
                    width: 400,
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Register()),
                      );
                    },
                    child: Text("Create A New Account?"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
