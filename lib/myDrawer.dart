import 'package:flutter/material.dart';
import 'package:project_tracker/board.dart';
import 'home.dart';
import 'Myprofile.dart';
import 'Login.dart';
import 'board.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({
    super.key,
  });

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  void openHomeScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ));
  }

  void openProfileScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Myprofile(),
        ));
  }

  void openLoginScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ));
  }

  void openBoardScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Board(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 260,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(221, 6, 2, 83),
                backgroundImage: AssetImage("images/amn3.png"),
                child: Text(""),
              ),
              accountName: Text("Useer-Name"),
              accountEmail: Text("...@gmail.com"),
              decoration: BoxDecoration(color: Color.fromARGB(221, 6, 2, 83)),
            ),
            ListTile(
              onTap: () => openProfileScreen(context),
              leading: Icon(Icons.person),
              title: Text("Profile"),
              subtitle: Text("this is your Profile page"),
            ),
            ListTile(
              onTap: () => openHomeScreen(context),
              leading: Icon(Icons.home),
              title: Text("Home"),
              subtitle: Text("this is the Home page"),
            ),
            ListTile(
              onTap: () => openBoardScreen(context),
              leading: Icon(Icons.file_open),
              title: Text("Board"),
              subtitle: Text("this is the board"),
            ),
            ListTile(
              onTap: () => openLoginScreen(context),
              leading: Icon(Icons.logout),
              title: Text("Log out"),
              subtitle: Text("this is the Log out"),
            ),
          ],
        ));
  }
}
