import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'config.dart';

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
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.10,
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ravi Singh",
                      style: TextStyle(
                        fontSize: 24,
                        shadows: [
                          Shadow(
                              color: Colors.grey,
                              offset: Offset(6, 5),
                              blurRadius: 10)
                        ],
                      ),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange[800],
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[700],
                                  offset: Offset(4, 4),
                                  blurRadius: 6),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            Icons.notifications,
                            size: 30,
                          ),
                          width: MediaQuery.of(context).size.width * 0.15,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Appcolors.primaryWhite,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Appcolors.primaryWhite,
                  ),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: SingleChildScrollView(
                            child: Container(
                              margin: EdgeInsets.all(20),
                              height: MediaQuery.of(context).size.height * 0.28,
                              width: MediaQuery.of(context).size.width * 0.90,
                              child: StackContainer(),
                              decoration: BoxDecoration(
                                  color: Appcolors.primaryWhite,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(9, 7),
                                        blurRadius: 20)
                                  ]),
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.orange,
                  child: Text("Hello World"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StackContainer extends StatelessWidget {
  const StackContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              left: -100,
              child: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white70,
                ),
              ),
            ),
            Positioned(
              top: 140,
              left: 0,
              child: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white70,
                ),
              ),
            ),
            Positioned(
              left: 14,
              height: 200,
              child: Container(
                // padding: EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/master_card.png',
                      width: 200,
                    ),
                    Container(
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "**** **** *****",
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                "1921",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Text(
                            "Ravi Singh",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                right: 40,
                bottom: 20,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Appcolors.primaryWhite,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(4, 4),
                            blurRadius: 7)
                      ]),
                ))
          ],
        ),
      ),
    );
  }
}