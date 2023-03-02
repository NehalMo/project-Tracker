import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: 230,
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(hintText: 'Username'),
          ),
          color: Colors.white,
        ),
        Container(
          margin: EdgeInsets.all(10),
          height: 30,
          width: 230,
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'Password',
            ),
          ),
          color: Colors.white,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 2, 80, 5)),
            onPressed: () => {print("log in")},
            child: Text("   Log In   ")),
        Container(
          margin: EdgeInsets.all(2),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 2, 80, 5)),
            onPressed: () => {print("Sign in")},
            child: Text("   sign in  ")),
        Container(
          margin: EdgeInsets.all(9),
        ),
      ],
    );
  }
}
