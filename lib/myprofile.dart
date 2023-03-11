import 'package:flutter/material.dart';
import 'package:project_tracker/changePassword.dart';
import 'myDrawer.dart';
import 'home.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
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
          builder: (context) => Home(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          ListBody(
            children: [
              Center(
                child: Card(
                  margin: EdgeInsets.all(50),
                  color: Color.fromARGB(255, 244, 242, 237),
                  child: Container(
                    width: 290,
                    height: 30,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 2, 80, 5)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChangePassword(),
                              ));
                        },
                        child: (Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("      Change your Password   "),
                            Icon(Icons.password)
                          ],
                        ))),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
