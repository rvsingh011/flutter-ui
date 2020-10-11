import 'package:flutter/material.dart';
import 'second_page.dart';

void main() {
  runApp(ClipRectange());
}

// ClipRRectagle is clip round rectangle is used to make any widget cirular.

class ClipRectange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Container(
                margin: EdgeInsets.all(50),
                height: 300,
                padding: EdgeInsets.all(20),
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.green,
                    gradient:
                        LinearGradient(colors: [Colors.amber, Colors.orange]),
                    border: Border.all(color: Colors.black, width: 8),
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 10,
                          blurRadius: 20,
                          offset: Offset(0, 10))
                    ]),
                alignment: Alignment.center,
                child: Text(
                  "Hello World",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "circular",
                  ),
                ),
              ),
            ),
            Hero(
              tag: 'cool',
              child: Container(
                margin: EdgeInsets.all(70),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  color: Colors.blue,
                  height: 60,
                  minWidth: double.infinity,
                  child: Text("Hello World"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
