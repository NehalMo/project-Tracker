import 'package:flutter/material.dart';
import 'home.dart';
import 'Myprofile.dart';
import 'Login.dart';

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

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 255, 254, 255),
            backgroundImage: AssetImage("images/Male User.png"),
            child: Text(""),
          ),
          accountName: Text("Aisha"),
          accountEmail: Text("aa@gmail.com"),
          decoration: BoxDecoration(color: Color.fromARGB(221, 2, 97, 45)),
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
          onTap: () => openLoginScreen(context),
          leading: Icon(Icons.logout),
          title: Text("Log out"),
          subtitle: Text("this is the Log out"),
        ),
      ],
    ));
  }
}
