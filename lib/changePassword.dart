import 'package:flutter/material.dart';
import 'package:project_tracker/myprofile.dart';
import 'myDrawer.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool correctEntry = true;
  String password1 = "";
  String password2 = "";
  Icon ic = Icon(Icons.remove_red_eye_outlined);
  Icon ic2 = Icon(Icons.remove_red_eye_outlined);
  bool pass = true;
  bool pass2 = true;
  var oldusername1 = TextEditingController();
  var oldpassword1 = TextEditingController();
  var oldusername2 = TextEditingController();
  var oldpassword2 = TextEditingController();
  checkUsernamePassword() {
    setState(() {
      if (password1 == "" || password2 == "") {
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
          builder: (context) => Myprofile(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 245),
      appBar: AppBar(
        title: Text("My profile"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(221, 2, 97, 45),
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
              color: Color.fromARGB(221, 2, 97, 45),
            ),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("images/amn3.png"),
                      backgroundColor: Colors.blueAccent,
                    ),
                    Positioned(
                        bottom: 3,
                        right: 2,
                        child: CircleAvatar(
                          radius: 15,
                          child: Icon(Icons.edit),
                          backgroundColor: Colors.white,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Nehal ALhablani",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Email: Nehal@gmail.com",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(18),
              height: 35,
              width: 300,
              color: correctEntry ? Colors.white : Colors.red,
              child: TextField(
                keyboardType: TextInputType.name,
                onSubmitted: (oldpassword1) {
                  print("v= $oldpassword1");
                },
                obscureText: pass,
                controller: oldpassword1,
                onChanged: (value) => {password1 = value},
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'Enter Old Password',
                    labelText: "Old Password",
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
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(5),
              height: 35,
              width: 300,
              color: correctEntry ? Colors.white : Colors.red,
              child: TextField(
                keyboardType: TextInputType.name,
                onSubmitted: (oldpassword2) {
                  print("v= $password2");
                },
                obscureText: pass2,
                controller: oldpassword2,
                onChanged: (value) => {password2 = value},
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    hintText: 'Enter New Password',
                    labelText: "New Password",
                    suffixIcon: IconButton(
                      icon: ic2,
                      onPressed: () {
                        setState(() {
                          pass2 = !pass2;
                          if (pass2 == false) {
                            ic2 = Icon(Icons.remove_red_eye_rounded);
                          } else {
                            ic2 = Icon(Icons.remove_red_eye_outlined);
                          }
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 120,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 2, 80, 5)),
                  onPressed: checkUsernamePassword,
                  child: (Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Text("   Save   "), Icon(Icons.save)],
                  ))),
            ),
          )
        ],
      ),
    );
  }
}
