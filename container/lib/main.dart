import 'package:flutter/material.dart';

void main() => runApp(ConatainerWidget());

class ConatainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            margin: EdgeInsets.all(50),
            height: 300,
            padding: EdgeInsets.all(20),
            width: 300,
            decoration: BoxDecoration(
                color: Colors.green,
                gradient: LinearGradient(colors: [Colors.amber, Colors.orange]),
                border: Border.all(color: Colors.black, width: 8),
                borderRadius: BorderRadius.circular(50),
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
      ),
    );
  }
}

// You can use the shape to be circular and in that case you need to remove the border radius.
