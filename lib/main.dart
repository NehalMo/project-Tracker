import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("project Tracker"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(221, 2, 97, 45),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                child: Image(
                  image: AssetImage("images/amn.png"),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
              ),
              Container(
                height: 30,
                width: 230,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: 'User Name'),
                ),
                color: Colors.white,
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 30,
                width: 230,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                color: Colors.white,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 2, 80, 5)),
                  onPressed: () => {print("log in")},
                  child: Text("   Log In   ")),
              Container(
                margin: EdgeInsets.all(2),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 2, 80, 5)),
                  onPressed: () => {print("Sign in")},
                  child: Text("   sign in  ")),
              Container(
                margin: EdgeInsets.all(9),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('----'),
                  Text(' or ',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(237, 11, 6, 6))),
                  Text('----'),
                ],
              ),
              Container(
                margin: EdgeInsets.all(8),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () => {print("Sign in")},
                  child: Container(
                      width: 200,
                      height: 20,
                      child: Image.asset('images/GoogleLogo.svg.png')),
                )
              ]),
              Container(
                margin: EdgeInsets.all(8),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('do you have an account ?'),
                  TextButton(
                    onPressed: () {},
                    child: Text('Create new account'),
                    style: TextButton.styleFrom(
                      primary: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 241, 244, 243),
      ),
    );
  }
}
