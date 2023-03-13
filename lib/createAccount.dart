import 'package:flutter/material.dart';
import 'package:project_tracker/login.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool correctEntry = true;
  String FirstName = "";
  String LastName = "";
  String Email = "";
  String username = "";
  String password = "";
  String conpassword = "";
  Icon ic = Icon(Icons.remove_red_eye_outlined);
  bool pass = true;
  var FirstName1 = TextEditingController();
  var LastName1 = TextEditingController();
  var Email1 = TextEditingController();
  var username1 = TextEditingController();
  var password1 = TextEditingController();
  var conpassword1 = TextEditingController();

  Widget errorMessage = SizedBox(
    height: 0,
  );

  checkUsernamePassword() {
    setState(() {
      if (FirstName == "") {
        errorMessage = Container(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("please enter Your FirstName"),
          ),
        );
      } else if (LastName == "") {
        errorMessage = Container(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("please enter Your LastName"),
          ),
        );
      } else if (Email == "") {
        errorMessage = Container(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("please enter Your Emaile"),
          ),
        );
      } else if (username == "") {
        errorMessage = Container(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("please enter a username"),
          ),
        );
      } else if (password == "") {
        errorMessage = Container(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("please enter a password"),
          ),
        );
      } else if (password != conpassword) {
        errorMessage = Container(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("confirm Password not Equals to main Password"),
          ),
        );
      } else {
        correctEntry = true;
        goToLogin();
      }
    });
  }

  void removeErrorMessage() {
    setState(() {
      errorMessage = SizedBox(
        height: 0,
      );
    });
  }

  goToLogin() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("project Tracker"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(221, 2, 97, 45),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.all(15),
          ),
          Column(children: [
            Container(
              height: 170,
              width: 170,
              child: Image(
                image: AssetImage("images/amn3.png"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 35,
              width: 300,
              child: TextField(
                onSubmitted: (vFirstName) {
                  print("v= $vFirstName");
                },
                controller: FirstName1,
                onTap: removeErrorMessage,
                onChanged: (value) => {FirstName = value},
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    labelText: "Enter Your First Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 35,
              width: 300,
              child: TextField(
                onSubmitted: (vLastName) {
                  print("v= $vLastName");
                },
                controller: LastName1,
                onTap: removeErrorMessage,
                onChanged: (value) => {LastName = value},
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    labelText: "Enter Your Last Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 35,
              width: 300,
              child: TextField(
                onSubmitted: (vEmail) {
                  print("v= $vEmail");
                },
                controller: Email1,
                onTap: removeErrorMessage,
                onChanged: (value) => {Email = value},
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    labelText: "Enter Your Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 35,
              width: 300,
              child: TextField(
                onSubmitted: (vusername) {
                  print("v= $vusername");
                },
                controller: username1,
                onTap: removeErrorMessage,
                onChanged: (value) => {username = value},
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    labelText: "Enter User Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 35,
              width: 300,
              child: TextField(
                onSubmitted: (vpassword) {
                  print("v= $vpassword");
                },
                obscureText: pass,
                controller: password1,
                onTap: removeErrorMessage,
                onChanged: (value) => {password = value},
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    labelText: "Enter password",
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
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              height: 35,
              width: 300,
              child: TextField(
                onSubmitted: (vconpassword) {
                  print("v= $vconpassword");
                },
                obscureText: pass,
                controller: conpassword1,
                onTap: removeErrorMessage,
                onChanged: (value) => {conpassword = value},
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    labelText: "Confirm password",
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
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            errorMessage,
            SizedBox(
              height: 6,
            ),
            Container(
              width: 110,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 2, 80, 5)),
                  onPressed: checkUsernamePassword,
                  child: (Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("   Sign Up   "),
                    ],
                  ))),
            ),
          ]),
        ]),
      ),
    );
  }
}
