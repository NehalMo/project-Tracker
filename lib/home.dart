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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(221, 6, 2, 83),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              
            ),
          ],
        ),
      ),
  
                );
  }
}
