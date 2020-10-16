import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'data.dart';
import 'footer.dart';
import 'header.dart';
import 'body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Ubuntu', primarySwatch: Colors.orange),
        home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primaryWhite,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [Header(), SelectedCard(), Body(), Footer()],
          ),
        ),
      ),
    );
  }
}

class SelectedCard extends StatelessWidget {
  const SelectedCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 20, maxHeight: 35),
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 25),
        child: Text(
          "Selected Card",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
