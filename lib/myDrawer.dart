import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 24, 103, 241),
            child: Text("a"),
          ),
          accountName: Text("Aisha"),
          accountEmail: Text("aa@gmail.com"),
          decoration: BoxDecoration(color: Color.fromARGB(255, 168, 243, 205)),
        ),
        ListTile(
          onTap: () {
            print("did tap Profile");
          },
          leading: Icon(Icons.person),
          title: Text("Profile"),
          subtitle: Text("this is your Profile page"),
        ),
        ListTile(
          onTap: () {
            print("did tap Home");
          },
          leading: Icon(Icons.home),
          title: Text("Home"),
          subtitle: Text("this is the Home page"),
        ),
        ListTile(
          onTap: () {
            print("did tap Search");
          },
          leading: Icon(Icons.logout),
          title: Text("Log out"),
          subtitle: Text("this is the Log out"),
        ),
      ],
    ));
  }
}