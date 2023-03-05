import 'package:flutter/material.dart';
import 'package:project_tracker/home.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({
    super.key,
  });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool correctEntry = true;
  String username = "";
  String password = "";

  checkUsernamePassword() {
    setState(() {
      if (username == "" || password == "") {
        correctEntry = false;
      } else {
        correctEntry = true;
        goToHome();
      }
    });
  }

  goToHome() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: 230,
          color: correctEntry ? Colors.white : Colors.red,
          child: TextField(
            onChanged: (value) => {username = value},
            textAlign: TextAlign.center,
            decoration: InputDecoration(hintText: 'Username'),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          height: 30,
          width: 230,
          color: correctEntry ? Colors.white : Colors.red,
          child: TextField(
            onChanged: (value) => {password = value},
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'Password',
            ),
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 2, 80, 5)),
            onPressed: checkUsernamePassword,
            child: Text("   Log In   ")),
        Container(
          margin: EdgeInsets.all(9),
        ),
      ],
    );
  }
}
