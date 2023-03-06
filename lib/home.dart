import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 245),
      appBar: AppBar(
        title: Text("project Tracker"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(221, 2, 97, 45),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 2, 80, 5)),
                onPressed: () => {print("+dashboard")},
                child: Text(" + dashBord ")),
            Container(
              margin: EdgeInsets.all(13),
              height: 500,
              width: 400,
              color: Color.fromARGB(255, 181, 245, 195),
            ),
          ],
        ),
      ),
    );
  }
}
