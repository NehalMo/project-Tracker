import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class Board extends StatefulWidget {
  const Board({super.key});

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(""),
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
            Column(
              children: [
                Container(
                  width: 120,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 2, 80, 5)),
                      onPressed: () {},
                      child: (Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.add),
                          Text(" project   "),
                        ],
                      ))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
