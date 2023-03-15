import 'package:flutter/material.dart';
import 'package:project_tracker/home.dart';
import 'home.dart';

import 'createAccount.dart';
import 'board.dart';

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
  Icon ic = Icon(Icons.remove_red_eye_outlined);
  bool pass = true;
  var username1 = TextEditingController();
  var password1 = TextEditingController();
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
          builder: (context) => Board(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("projects Tracker"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(221, 6, 2, 83),
        leading: Image(
          image: AssetImage("images/amn3.png"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 170,
              width: 170,
              child: const Image(
                image: AssetImage("images/amn3.png"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(14),
                  height: 35,
                  width: 300,
                  color: correctEntry ? Colors.white : Colors.red,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    onSubmitted: (vusername) {
                      print("v= $vusername");
                    },
                    controller: username1,
                    onChanged: (value) => {username = value},
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: 'Enter Username',
                        labelText: "Username",
                        suffixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(1),
                  height: 35,
                  width: 300,
                  color: correctEntry ? Colors.white : Colors.red,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    onSubmitted: (vpassword) {
                      print("v= $vpassword");
                    },
                    obscureText: pass,
                    controller: password1,
                    onChanged: (value) => {password = value},
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: 'Enter Password',
                        labelText: "password",
                        suffixIcon: IconButton(
                          icon: ic,
                          onPressed: () {
                            setState(() {
                              pass = !pass;
                              if (pass == false) {
                                ic = Icon(Icons.remove_red_eye_rounded);
                              } else {
                                ic = Icon(Icons.remove_red_eye_outlined);
                              }
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  width: 120,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(221, 6, 2, 83)),
                      onPressed: checkUsernamePassword,
                      child: (Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("   Log In   "),
                          Icon(Icons.login_outlined)
                        ],
                      ))),
                ),
                Container(
                  margin: EdgeInsets.all(4),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('----'),
                Text(' or ',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Color.fromARGB(221, 34, 20, 78))),
                Text('----'),
              ],
            ),
            Container(
              margin: EdgeInsets.all(4),
            ),
            Column(
              children: [
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
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('do you have an account ?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateAccount(),
                        ));
                  },
                  child: Text('Create new account'),
                  style: TextButton.styleFrom(
                    primary: Color.fromARGB(221, 6, 2, 83),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
