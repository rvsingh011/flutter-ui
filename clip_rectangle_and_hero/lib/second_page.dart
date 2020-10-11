import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'cool',
      child: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                "Hello World",
                style: TextStyle(fontSize: 30),
              ),
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.amber[300],
                Colors.amber[500],
                Colors.orange[500],
                Colors.orange[800]
              ])),
            ),
          ],
        ),
      ),
    );
  }
}
