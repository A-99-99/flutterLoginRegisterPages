import 'package:flutter/material.dart';
import 'package:flutter_application_login_registore/main.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Register();
  }
}

class _Register extends StatefulWidget {
  const _Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<_Register> {
  @override
  Widget build(BuildContext context) {
        String usrename, password;
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page"),
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
                      child: Text("Register")),
                  SizedBox(
                    width: 400,
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Login()),
                      );
                    },
                    child: Text("Login?"),
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
