import 'package:flutter/material.dart';


class Intro extends StatelessWidget {
  const Intro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [ Container(
      height: 170,
      width: 170,
      child: Image(
        image: AssetImage("images/amn.png"),
      ),
    ),
    
    
    
    
    ],);
  }
}