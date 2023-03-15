import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:project_tracker/insertDataTable.dart';
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
        backgroundColor: Color.fromARGB(221, 6, 2, 83),
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
                          backgroundColor: Color.fromARGB(221, 6, 2, 83)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InsertDataTable(),
                            ));
                      },
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
