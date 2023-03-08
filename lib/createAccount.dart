import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 245),
      appBar: AppBar(
        title: Text("project Tracker"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(221, 2, 97, 45),
      ),
    );
  }
}
