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
  Icon ic = const Icon(Icons.remove_red_eye_outlined);

  bool pass = true;
  var FirstName1 = TextEditingController();
  var LastName1 = TextEditingController();
  var Email1 = TextEditingController();
  var username1 = TextEditingController();
  var password1 = TextEditingController();
  var conpassword1 = TextEditingController();

  Widget errorMessage = const SizedBox(
    height: 0,
  );

  checkUsernamePassword() {
    setState(() {
      if (FirstName == "") {
        errorMessage = Container(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "* Please Enter Your FirstName *",
              style: TextStyle(color: Colors.red),
            ),
          ),
        );
      } else if (LastName == "") {
        errorMessage = Container(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "* Please Enter Your LastName *",
              style: TextStyle(color: Colors.red),
            ),
          ),
        );
      } else if (Email == "") {
        errorMessage = Container(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "* Please Enter Your Emaile *",
              style: TextStyle(color: Colors.red),
            ),
          ),
        );
      } else if (username == "") {
        errorMessage = Container(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "* Please Enter a username *",
              style: TextStyle(color: Colors.red),
            ),
          ),
        );
      } else if (password == "") {
        errorMessage = Container(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "* Please Enter a password *",
              style: TextStyle(color: Colors.red),
            ),
          ),
        );
      } else if (password != conpassword) {
        errorMessage = Container(
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "* Password Doesn’t Match *",
              style: TextStyle(color: Colors.red),
            ),
          ),
        );
      } else {
        // ignore: prefer_const_constructors
        errorMessage = Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            " User Registered Successfully ",
            style: TextStyle(
              color: Color.fromARGB(255, 23, 97, 49),
            ),
          ),
        );

        Future.delayed(const Duration(seconds: 2), goToLogin);
        correctEntry = true;
      }
    });
  }

  void removeErrorMessage() {
    setState(() {
      errorMessage = const SizedBox(
        height: 0,
      );
    });
  }

  goToLogin() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Login(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("project Tracker"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(221, 6, 2, 83),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: const EdgeInsets.all(15),
          ),
          Column(children: [
            Container(
              height: 170,
              width: 170,
              child: const Image(
                image: AssetImage("images/amn3.png"),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
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
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
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
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
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
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
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
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
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
                            ic = const Icon(Icons.remove_red_eye_rounded);
                          } else {
                            ic = const Icon(Icons.remove_red_eye_outlined);
                          }
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
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
                            ic = const Icon(Icons.remove_red_eye_rounded);
                          } else {
                            ic = const Icon(Icons.remove_red_eye_outlined);
                          }
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            errorMessage,
            const SizedBox(
              height: 6,
            ),
            Container(
              width: 110,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(221, 6, 2, 83)),
                  onPressed: checkUsernamePassword,
                  child: (Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("   Sign Up   "),
                    ],
                  ))),
            ),
          ]),
        ]),
      ),
    );
  }
}
