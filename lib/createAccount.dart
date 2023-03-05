import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white),
            onPressed: () => {print("Sign in")},
            child: Container(
                width: 200,
                height: 20,
                child: Image.asset('images/GoogleLogo.svg.png')),
          )
        ]),
        Container(
          margin: EdgeInsets.all(8),
        ),
      ],
    );
  }
}
