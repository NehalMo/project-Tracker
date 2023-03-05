import 'dart:html';
import 'createAccount.dart';
import 'intro.dart';
import 'login.dart';
import 'Counter.dart';

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
        drawer: Drawer(),
        appBar: AppBar(
          title: Text("project Tracker"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(221, 2, 97, 45),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Intro(),
              Container(
                margin: EdgeInsets.all(15),
              ),
              Login(),
              MyCounter(),
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
              CreateAccount(),
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
