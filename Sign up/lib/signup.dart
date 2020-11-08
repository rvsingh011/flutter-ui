import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //     gradient:
        //         LinearGradient(colors: [Colors.amber[300], Colors.cyan[300]]),
        //   ),
        // ),
        backgroundColor: Colors.grey[300],
        elevation: 0,
        brightness: Brightness.light,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.grey[300],
          width: double.infinity,
          height: double.infinity,
          // decoration: BoxDecoration(
          //   gradient:
          //       LinearGradient(colors: [Colors.amber[300], Colors.cyan[300]]),
          // ),
          child: Wrap(
            children: [
              LoginHeading(),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        makeInput(label: "Email"),
                        makeInput(label: "Password", obsecureText: true),
                        makeInput(
                            label: "Confirm Password", obsecureText: true),
                        makeInput(label: "Phone Number", obsecureText: true),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: MaterialButton(
                          minWidth: double.infinity,
                          color: Colors.amber[300],
                          height: 60,
                          onPressed: () {},
                          child: Text("Sign Up"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                              side: BorderSide(color: Colors.black))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
          Text("SignUp",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Text("Please sign up and povide the below information",
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
