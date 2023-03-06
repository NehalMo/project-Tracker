import 'package:flutter/material.dart';
import 'package:project_tracker/home.dart';
import 'home.dart';
import 'Counter.dart';
import 'createAccount.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text("project Tracker"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(221, 2, 97, 45),
        leading: Image(
          image: AssetImage("images/amn3.png"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(15),
            ),
            Column(
              children: [
                Container(
                  height: 170,
                  width: 170,
                  child: Image(
                    image: AssetImage("images/amn3.png"),
                  ),
                ),
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
            ),
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
    );
  }
}
