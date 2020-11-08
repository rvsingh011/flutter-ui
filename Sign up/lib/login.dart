import 'package:flutter/material.dart';
import 'package:learning_flutter/header_bar.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            Color(0xFFFFFF7E),
            Color(0xFF00A8C5),
          ],
        ),
      ),
      height: double.infinity,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              HeaderBar(),
              LoginHeading(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      makeInput(label: "Email"),
                      makeInput(label: "Password", obsecureText: true),
                      makeInput(label: "Confirm Password", obsecureText: true)
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(bottom: 50),
                    child: MaterialButton(
                        minWidth: double.infinity,
                        color: Colors.amber[300],
                        height: 60,
                        onPressed: () {},
                        child: Text("Sign In"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                            side: BorderSide(color: Colors.black))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class LoginHeading extends StatelessWidget {
  const LoginHeading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Login",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Text("Please sign in using your email and password",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ))
        ],
      ),
    );
  }
}

Widget makeInput({label, obsecureText = false}) {
  return Container(
    padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(9, 0, 0, 0),
          child: Text(
            label,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 9,
        ),
        TextField(
          obscureText: obsecureText,
          decoration: InputDecoration(
              hintText: label,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
      ],
    ),
  );
}
