import 'package:flutter/material.dart';

void main() => runApp(TextWidgett());

class TextWidgett extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Text(
              "This is amazing text",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 50,
                  fontFamily: "circular",
                  backgroundColor: Colors.orange,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 10,
                      offset: Offset(4, 9),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
